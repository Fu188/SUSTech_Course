-- ɾ����վ
create or replace function del_station(del_station_name varchar)
    returns text
    language plpgsql
as
$$
BEGIN
    if (del_station_name not in (select station_name from station)) then
        return '�����ڴ˳�վ';
    end if;
    delete from station where station_name = del_station_name;
    return 'ɾ���ɹ�';
exception
    when others then
        rollback;
        return 'ɾ��ʧ��';
end;
$$;