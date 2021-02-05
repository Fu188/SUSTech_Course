-- �޸��ֻ���
create or replace function update_phone(update_id int, update_phone_number varchar)
    returns text
    language plpgsql
as
$$
BEGIN
    if (update_id not in (select user_id from users)) then
        return '�����ڴ��û�';
    end if;
    update users set phone_number = update_phone_number where user_id = update_id;
    return '�޸ĳɹ�';
exception
    when others then
        rollback;
        return '�޸�ʧ��';
end;
$$;