create table units (
    unit_id          INT  PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    race             TEXT NOT NULL,
    name             TEXT UNIQUE NOT NULL,
    type             TEXT NOT NULL,
    points_per_model INT,
    unit_size_min    INT,
    unit_size_max    INT

);

create table profiles (
    profile_id         INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    unit_id            INT,
    name       TEXT NOT NULL,
    movement_allowance varchar(10),
    weapon_skill        INT,
    ballistic_skill    INT,
    strength           INT,
    toughness          INT,
    wounds             INT,
    initiative         INT,
    attacks            varchar(10),
    leadership         INT,
    troop_type         TEXT,
    max_per_unit       INT,
    constraint profiles_id_fk_1 foreign key (unit_id) references units (unit_id)
);

create table special_rules (
    special_rule_id  INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name TEXT NOT NULL,
    rule TEXT NOT NULL,
)

create table profiles_special_rules (
    profile_special_rule_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    profile_id  INT NOT NULL,
    special_rule_id INT NOT NULL,
    constraint profiles_id_fk_1 foreign key (profile_id) references profiles (profile_id),
    constraint special_rule_id_fk_1 foreign key (special_rule_id) references special_rules (special_rule_id)
)

create table options (
    option_id  INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    description TEXT NOT NULL,
    cost INT NOT NULL,
)

create table profiles_options (
    profile_options_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    profile_id  INT NOT NULL,
    option_id INT NOT NULL,
    constraint profiles_id_fk_1 foreign key (profile_id) references profiles (profile_id),
    constraint option_id_fk_1 foreign key (option_id) references options (option_id)
)

create index unit_id on profiles (unit_id);