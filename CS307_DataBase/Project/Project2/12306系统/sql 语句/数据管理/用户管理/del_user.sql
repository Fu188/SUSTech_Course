-- ע���û�
create or replace function del_user(del_id int)
    returns text
    language plpgsql
as
$$
BEGIN
    if (del_id not in (select user_id from users)) then
        return '�����ڴ��û�';
    end if;
    delete from users where user_id = del_id;
    return 'ע���ɹ�';
exception
    when others then
        return 'ע��ʧ��';
end;
$$;