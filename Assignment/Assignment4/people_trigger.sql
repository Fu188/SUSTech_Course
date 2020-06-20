create trigger people_trigger
    before insert
    on people
    for each row
    execute function valid_check();