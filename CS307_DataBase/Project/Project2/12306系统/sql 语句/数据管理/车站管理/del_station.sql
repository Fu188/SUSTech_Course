-- 删除车站
create or replace function del_station(del_station_name varchar)
    returns text
    language plpgsql
as
$$
BEGIN
    if (del_station_name not in (select station_name from station)) then
        return '不存在此车站';
    end if;
    delete from station where station_name = del_station_name;
    return '删除成功';
exception
    when others then
        rollback;
        return '删除失败';
end;
$$;