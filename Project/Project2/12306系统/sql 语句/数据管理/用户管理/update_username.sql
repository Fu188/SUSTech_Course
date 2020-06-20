-- �޸��û���
create or replace function update_username(update_id int, update_username varchar)
    returns text
    language plpgsql
as
$$
BEGIN
    if (update_id not in (select user_id from users)) then
        return '�����ڴ��û�';
    end if;
    update users set name = update_username where user_id = update_id;
    return '�޸ĳɹ�';
exception
    when others then
        rollback;
        return '�޸�ʧ��';
end;
$$;