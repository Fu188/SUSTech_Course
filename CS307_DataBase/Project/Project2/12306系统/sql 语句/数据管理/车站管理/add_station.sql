-- ���ӳ�վ
create or replace function add_station(add_station_name varchar)
    returns text
    language plpgsql
as
$$
DECLARE
    code int;
BEGIN
    select (select max(t.station_id)
            from station t)
    into code;

    insert into station(station_name, code) values (add_station_name, code + 1);
    return '��ӳɹ�';
exception
    when others then
        rollback;
        return '���ʧ��';
end;
$$;