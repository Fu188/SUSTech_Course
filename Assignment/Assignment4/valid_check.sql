create or replace function valid_check()
    returns trigger
    language plpgsql
    as
$$
    DECLARE
        birthday    date;
        i           int:=1;
        temp        int:=0;
    BEGIN
        if(substring(new.id,1,6)) not in (select code from district) then
            raise exception 'Invalid district';
        end if;
        if(length(new.id)<>18) then
            raise exception 'Invalid length';
        end if;
        perform substring(new.id,7,8)::timestamp;
        birthday = to_date(substring(new.id,7,8),'YYYYmmDD');
        if(birthday<to_date('1900','YYYY')) then
            raise exception 'Invalid date';
        end if;
        while(i<=17)
            LOOP
                temp = temp + (cast(pow(2,18-i) as integer)%11)*cast(substring(new.id,i,1) as integer);
                i = i+1;
            end loop;
        temp = (12-temp%11)%11;
        if(temp=10) then
            if(substring(new.id,18,1))!='X' then
                raise exception 'Invalid CheckSum';
            end if;
        else if(temp<>cast(substring(new.id,18,1) as integer)) then
            raise exception 'Invalid CheckSum';
        end if;
        end if;
        select string_agg(x.name, ',') into new.address
        from (
             select name
             from district
             where code in (substring(new.id,1,2)||'0000', substring(new.id,1,4)||'00', substring(new.id,1,6))
             order by code) x;
        new.birthday = substring(new.id,7,8);
        new.id = new.id;
        return new;
        exception
            when others then
            raise exception 'Invalid Insert';
    end;
$$;