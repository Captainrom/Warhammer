-- auto-generated definition
create table units
(
    unit_id          int auto_increment
        primary key,
    race             varchar(100) null,
    name             varchar(100) null,
    points_per_model int          null,
    unit_size_min    int          null,
    unit_size_max    int          null
);

-- auto-generated definition
create table profiles
(
    profile_id         int auto_increment
        primary key,
    unit_id            int          null,
    profile_name       varchar(200) null,
    movement_allowance varchar(10)  null,
    wepon_skill        int          null,
    ballistic_skill    int          null,
    strength           int          null,
    toughness          int          null,
    wounds             int          null,
    initiative         int          null,
    attacks            varchar(10)  null,
    leadership         int          null,
    troop_type         varchar(100) null,
    max_per_unit       int          null,
    constraint profiles_ibfk_1
        foreign key (unit_id) references units (unit_id)
);

create index unit_id
    on profiles (unit_id);

-- auto-generated definition
create table equipment
(
    equipment_id             int auto_increment
        primary key,
    equipment_name           varchar(100) null,
    equipment_strengt        varchar(100) null,
    equipment_speacial_rules varchar(250) null,
    equipment_type           varchar(100) null
);

-- auto-generated definition
create table special_rules
(
    special_rule_id   int auto_increment
        primary key,
    special_rule_name varchar(200)  null,
    special_rule_rule varchar(1000) null
);

-- auto-generated definition
create table options
(
    options_id  int auto_increment
        primary key,
    unit_id     int          null,
    description varchar(200) null,
    point_cost  int          null,
    constraint options_ibfk_1
        foreign key (unit_id) references units (unit_id)
);

create index unit_id
    on options (unit_id);

-- auto-generated definition
create table options_per_model
(
    options_per_model_id int auto_increment
        primary key,
    description          varchar(200) null,
    point_cost           int          null
);

-- auto-generated definition
create table profiles_magic_options
(
    profile_magic_option_id int auto_increment
        primary key,
    profile_id              int          null,
    profile_magic_option    varchar(100) null,
    magic_option_points     int          null,
    constraint profiles_magic_options_ibfk_1
        foreign key (profile_id) references profiles (profile_id)
);

create index profile_id
    on profiles_magic_options (profile_id);

-- auto-generated definition
create table profiles_special_rules
(
    profile_special_rule_id int auto_increment
        primary key,
    profile_id              int null,
    special_rule_id         int null,
    constraint profiles_special_rules_ibfk_1
        foreign key (profile_id) references profiles (profile_id),
    constraint profiles_special_rules_ibfk_2
        foreign key (special_rule_id) references special_rules (special_rule_id)
);

create index profile_id
    on profiles_special_rules (profile_id);

create index special_rule_id
    on profiles_special_rules (special_rule_id);

