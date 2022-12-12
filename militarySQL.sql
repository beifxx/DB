create table public.base (
	id_base serial not null primary key,
	base_location varchar(255) not null,
	num_of_branches int not null
);
create table public.branch (
	branch_num serial not null primary key,
	base_id int not null,
	br_location varchar(255) not null,
	military_type varchar(20) not null,
	constraint fk_base_id foreign key (base_id) references "base"(id_base)
);
create table public.crew(
	id_crew serial not null primary key,
	last_name varchar(50) not null,
	branch_num int not null,
	member_position varchar(40) not null,
	birth_year int not null,
	start_service_year int not null,
	service_record int not null,
	awards varchar(255),
	constraint fk_branch_num foreign key (branch_num) references "branch"(branch_num)
);
create table public.warship(
	warship_id serial not null primary key,
	warship_name varchar(75) not null,
	warship_type varchar(50) not null,
	construction_date date not null,
	service_time int not null,
	seats int not null,
	engine_model varchar(255) not null,
	gear varchar(255) not null,
	ship_body_type varchar(20)
);
create table public.war_games(
	war_game_id serial not null primary key,
	branch_num int not null,
	warship_num int not null,
	game_start_date date not null,
	game_end_date date not null,
	game_location varchar(255) not null,
	conclusion varchar(255) not null,
	constraint fk_branch_num foreign key (branch_num) references "branch"(branch_num),
	constraint fk_warship_num foreign key (warship_num) references "warship"(warship_id)
);