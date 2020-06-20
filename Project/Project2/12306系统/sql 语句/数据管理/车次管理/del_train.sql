-- 删除车次
create or replace function del_train(del_train_no varchar, del_dpt_date varchar)
    returns text
    language plpgsql
as
$$
DECLARE
    get_train_id int;
BEGIN
    if (del_train_no not in (select train_no from train)) then
        return '不存在此车次';
    end if;

    select (select t.train_id
            from train t
            where del_train_no = t.train_no
              and t.start_date = to_date(del_dpt_date, 'YYYY-MM-DD'))
    into get_train_id;

    delete from train_station where train_id = get_train_id;
    delete from train where train_id = get_train_id;
    return '删除成功';
exception
    when others then
        return '删除失败';
end;
$$;