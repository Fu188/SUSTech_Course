-- 注销用户
create or replace function del_user(del_id int)
    returns text
    language plpgsql
as
$$
BEGIN
    if (del_id not in (select user_id from users)) then
        return '不存在此用户';
    end if;
    delete from users where user_id = del_id;
    return '注销成功';
exception
    when others then
        return '注销失败';
end;
$$;