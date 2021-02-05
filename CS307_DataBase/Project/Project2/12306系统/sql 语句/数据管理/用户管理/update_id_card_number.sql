-- �޸����֤��
create or replace function update_id_card_number(update_id int, update_id_card_number varchar)
    returns text
    language plpgsql
as
$$
DECLARE
    i    int := 1;
    temp int := 0;
BEGIN
    if (update_id not in (select user_id from users)) then
        return '�����ڴ��û�';
    end if;
    if (substring(update_id_card_number, 1, 6)) not in (select code from district) then
        return '�����Ϣ�������';
    end if;
    if (length(update_id_card_number) <> 18) then
        return '�����Ϣ�������';
    end if;
    perform substring(update_id_card_number, 7, 8)::timestamp;
    if (to_date(substring(update_id_card_number, 7, 8), 'YYYYMMDD') > to_date('2020-5-1', 'YYYY-MM-DD') or
        to_date(substring(update_id_card_number, 7, 8), 'YYYYMMDD') < to_date('1900-5-1', 'YYYY-MM-DD')
        ) then
        return '�����Ϣ�������';
    end if;
    while(i <= 17)
        LOOP
            temp = temp +
                   (cast(pow(2, 18 - i) as integer) % 11) * cast(substring(update_id_card_number, i, 1) as integer);
            i = i + 1;
        end loop;
    temp = (12 - temp % 11) % 11;
    if (temp = 10) then
        if (substring(update_id_card_number, 18, 1)) != 'X' then
            return '�����Ϣ�������';
        end if;
    else
        if (temp <> cast(substring(update_id_card_number, 18, 1) as integer)) then
            return '�����Ϣ�������';
        end if;
    end if;

    update users set id_card_number = update_id_card_number where user_id = update_id;
    return '�޸ĳɹ�';
exception
    when others then
        rollback;
        return '�޸�ʧ��';
end;
$$;