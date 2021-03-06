create table units (
    unit_id          INT  PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    faction          TEXT NOT NULL,
    unit_name        TEXT NOT NULL,
    type             TEXT NOT NULL,
    points_per_model INT,
    unit_size_min    INT,
    unit_size_max    INT

);

create table profiles (
    profile_id         INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    unit_id            INT,
    profile_name       TEXT NOT NULL,
    movement_allowance VARCHAR(10),
    weapon_skill       INT,
    ballistic_skill    INT,
    strength           INT,
    toughness          INT,
    wounds             INT,
    initiative         INT,
    attacks            VARCHAR(10),
    leadership         INT,
    troop_type         TEXT,
    max_per_unit       INT,
    constraint profiles_id_fk_1 foreign key (unit_id) references units (unit_id)
);

create index unit_id on profiles (unit_id);

create table options (
    option_id          INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    unit_id            INT,
    name               TEXT NOT NULL,
    points             DECIMAL ,
    pointsPerModel     BOOLEAN,
    parent_option      INT,
    constraint options_id_fk_1 foreign key (unit_id) references units (unit_id)
);

create index option_id on options (option_id);