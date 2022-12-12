create temp table test(id_ int, weapon_ varchar(50) default 'test');
INSERT INTO test(id_) VALUES (1);
INSERT INTO test(id_, weapon_) VALUES (2,'РСЗО');
SELECT * FROM test;

select test2();
select * from crew;
drop function test2()

create function test2() returns int AS  $$
declare
	birth_year_test int;
	member_position_test varchar(50);
	result_ int;
begin
	birth_year_test = (select birth_year from crew where id_crew=1);
	member_position_test = (select member_position from crew where id_crew=1);
	if (birth_year_test > 2000) then
	update crew set birth_year = birth_year + 2 where  id_crew=1;
	return result_ = (select birth_year from crew where id_personnel=1);
	else update crew set birth_year = birth_year - 12  where  id_crew=1;
	return result_ = (select birth_year from crew where id_crew=1);
	end if;
end;
$$
language plpgsql;



select test3(12);
select * from crew;
drop function test3(id_cr integer)

create function test3(id_cr integer) returns int AS  $$
declare
	birth_year_test int;
	result_ int;
begin
	birth_year_test = (select birth_year from crew where id_crew=id_cr);
	result_ = 1;
	WHILE birth_year_test >= 2000 LOOP
    	result_ =  5;
		birth_year_test = 1;
	END LOOP;
	return result_ ;
end;
$$
language plpgsql;


select test4(12);
select * from crew;
drop function test3(id_cr integer)

create function test4(id_cr integer) returns int AS  $$
declare
	
begin
	return (select birth_year from crew where id_crew =id_cr) ;
end;
$$
language plpgsql;

select * from location

select get_branch();
drop function get_branch();

CREATE FUNCTION get_branch () 
 RETURNS TABLE (
 number_of_branches int,
 id_branch INT) 
AS $$
BEGIN
 RETURN query 
 SELECT
 number_of_part,
 id_branch
 FROM
 branch;
END; 
$$ 
LANGUAGE plpgsql;


--дуркa............

drop procedure data_();
call data_();
select * from branch;

CREATE PROCEDURE data_()
LANGUAGE SQL
as 
$$
  alter table branch rename column branch_num to  num_branch;
$$;


drop procedure data_2(int);
call data_2(1);
select * from branch;

CREATE PROCEDURE data_2(id_ int)
LANGUAGE SQL
as 
$$
  update branch set branch_num = 12345  where branch_num = id_;
$$;


select get_branch();
drop function get_branch();

CREATE procedure get_branch () 
 RETURNS TABLE (
 number_of_branches int,
 id_branch INT) 
AS $$
BEGIN
 RETURN query 
 SELECT
 br_location,
 branch_num
 FROM
 branch;
END; 
$$ 
LANGUAGE plpgsql;


CREATE FUNCTION Parse(string varchar(150))
RETURNS TABLE
(number_ int,
substr varchar(30))
AS
$$
DECLARE 
str1 varchar(150);
pos int;
begin
SET str1 = string;
WHILE 1>0 LOOP
SET pos = position(str1 in string);
IF pos > 0 then
INSERT INTO tabless VALUES (str1,pos);
ELSE
INSERT INTO tabless VALUE (str1);
END if;
end loop;
RETURN tabless;
END;
$$
LANGUAGE plpgsql;

select Calculator(9,5,'/');

CREATE FUNCTION Calculator
(operand int,
operand2 int,
 action_ varchar(5))
RETURNS real
AS
$$
DECLARE 
 result_ real;
begin
CASE action_
	WHEN '+' THEN result_ = operand + operand2;
	WHEN '-' THEN result_ = operand - operand2;
	WHEN '*' THEN result_ = operand * operand2;
	WHEN '/' THEN result_ = operand / operand2;
	ELSE result_ = 0;
END case;
Return result_;
END;
$$ 
LANGUAGE plpgsql;
