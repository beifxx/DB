SELECT COUNT(*) FROM branch 
JOIN base ON branch.base_id = base.id_base 
WHERE base.base_location='Minsk'


SELECT COUNT(*) FROM crew 
JOIN branch ON branch.branch_num=crew.branch_num 
WHERE crew.service_record>5


SELECT SUM(crew.service_record) FROM crew 
JOIN branch ON branch.branch_num=crew.branch_num 
WHERE branch.branch_num=1234


SELECT SUM(base.num_of_branches) FROM base 
JOIN branch ON branch.base_id = base.id_base
WHERE branch.br_location!='Minsk'


SELECT UPPER(crew.last_name) FROM crew 
JOIN branch ON branch.branch_num=crew.branch_num 
WHERE branch.br_location!='Baranavichy'


SELECT LOWER(war_games.conclusion) FROM war_games 
JOIN warship ON war_games.warship_num=warship.warship_id 
WHERE warship.warship_name='Sofia'


SELECT * FROM branch 
JOIN base ON branch.base_id = base.id_base
WHERE base.base_location!='Minsk' 
ORDER BY branch.branch_num


SELECT * FROM branch 
JOIN base ON branch.base_id = base.id_base 
WHERE base.base_location NOT IN ('Minsk','Gomel')


SELECT branch.branch_num FROM branch 
JOIN crew on crew.branch_num=branch.branch_num 
WHERE crew.awards IS NULL


SELECT num_of_branches,branch_num,military_type FROM branch, base;


SELECT num_of_branches,branch_num,military_type,last_name
FROM  branch, base,crew
WHERE branch.base_id = base.id_base AND
branch.branch_num=crew.branch_num

SELECT num_of_branches,branch_num,military_type
FROM branch RIGHT OUTER JOIN base
ON branch.base_id = base.id_base


select avg(distinct service_record) from crew


SELECT member_position, count(service_record) FROM crew
group by member_position


SELECT last_name
FROM crew
ORDER BY last_name ASC;


SELECT last_name,birth_year,
birth_year + (interval '5 months')
FROM crew


