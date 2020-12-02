DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE faction = 'Dwarfs');
DELETE FROM units WHERE faction = 'Dwarfs';

INSERT INTO units (faction, unit_name, type, points_per_model, unit_size_min, unit_size_max) VALUES
    ('Dwarfs', 'Thorgrim Grudgebearer', 'Lords', 650, 1, 1),
    ('Dwarfs', 'Thorek Ironbrow', 'Lords', 435, 1, 1),
    ('Dwarfs', 'Ungrim Ironfist', 'Lords', 350, 1, 1),
    ('Dwarfs', 'Belegar Ironhammer', 'Lords', 305, 1, 1),
    ('Dwarfs', 'Lord', 'Lords', 145, 1, 1),
    ('Dwarfs', 'RuneLord', 'Lords', 120, 1, 1),
    ('Dwarfs', 'Daemon Slayer', 'Lords', 140, 1, 1),
    ('Dwarfs', 'Josef Bugman', 'Heroes', 165, 1, 1),
    ('Dwarfs', 'Grimm Burloksson', 'Heroes', 165, 1, 1),
    ('Dwarfs', 'Thane', 'Heroes', 65, 1, 1),
    ('Dwarfs', 'RuneSmith', 'Heroes', 60, 1, 1),
    ('Dwarfs', 'Master Engineer', 'Heroes', 70, 1, 1),
    ('Dwarfs', 'Dragon Slayer', 'Heroes', 70, 1, 1),
    ('Dwarfs', 'Dwarf Warriors', 'Core', 8, 10, 100),
    ('Dwarfs', 'Quarrellers', 'Core', 12, 10, 100),
    ('Dwarfs', 'Thunderers', 'Core', 12, 10, 100),
    ('Dwarfs', 'Longbeards', 'Core', 12, 10, 100),
    ('Dwarfs', 'Hammerers', 'Special', 14, 1, 1),
    ('Dwarfs', 'Ironbreakers', 'Special', 14, 1, 1),
    ('Dwarfs', 'Miners', 'Special', 10, 10, 100),
    ('Dwarfs', 'Slayers', 'Special', 12, 10, 100),
    ('Dwarfs', 'Cannon', 'Special', 120, 1, 1),
    ('Dwarfs', 'Gyrocopter', 'Special', 80, 1, 1),
    ('Dwarfs', 'Bolt Thrower', 'Special', 55, 1, 1),
    ('Dwarfs', 'Grudge Thrower', 'Special', 80, 1, 1),
    ('Dwarfs', 'Organ Gun', 'Rare', 120, 1, 1),
    ('Dwarfs', 'Flame Cannon', 'Rare', 140, 1, 1),
    ('Dwarfs', 'Rangers', 'Rare', 14, 5, 50),
    ('Dwarfs', 'Irondrakes', 'Rare', 15, 10, 100),
    ('Dwarfs', 'Gyrobomber', 'Rare', 125, 1, 1);

INSERT INTO profiles (unit_id, profile_name, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
    (SELECT unit_id from units WHERE unit_name ='Thorgrim Grudgebearer'), 'Thorgrim Grudgebearer', '3', 7, 6, 4, 5, 7, 4, '4', 10, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Thorgrim Grudgebearer'), 'Thronebearers', '3', 5, 3, 4, null, null, 3, '4', null, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Thorek Ironbrow'), 'Thorek Ironbrow', '3', 6, 4, 4, 5, 5, 3, '2', 10, 'War Machine(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Thorek Ironbrow'), 'Anvil Guards', '3', 5, 3, 4, null, null, 2, '2', null, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Ungrim Ironfist'), 'Ungrim Ironfist', '3', 9, 4, 4, 6, 3, 5, '4', 10, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Belegar Ironhammer'), 'Belegar Ironhammer', '3', 8, 4, 4, 5, 3, 4, '4', 10, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Lord'), 'Lord', '3', 7, 4, 4, 5, 3, 4, '4', 10, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='RuneLord'), 'RuneLord', '3', 6, 4, 4, 5, 3, 3, '2', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Daemon Slayer'), 'Daemon Slayer', '3', 7, 3, 4, 5, 3, 5, '4', 10, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Josef Bugman'), 'Josef Bugman', '3', 6, 5, 5, 5, 2, 4, '4', 10, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Grimm Burloksson'), 'Grimm Burloksson', '3', 4, 5, 6, 4, 2, 2, '2', 9, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Thane'), 'Thane', '3', 6, 4, 4, 5, 2, 3, '3', 10, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='RuneSmith'), 'RuneSmith', '3', 5, 4, 4, 4, 2, 2, '2', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Master Engineer'), 'Master Engineer', '3', 4, 4, 4, 4, 2, 2, '2', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Dragon Slayer'), 'Dragon Slayer', '3', 6, 3, 4, 5, 2, 4, '3', 10, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Dwarf Warriors'), 'Dwarf Warrior', '3', 4, 3, 3, 4, 1, 2, '1', 9, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Dwarf Warriors'), 'Veteran', '3', 4, 3, 3, 4, 1, 2, '2', 9, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Quarrellers'), 'Quarreller', '3', 4, 3, 3, 4, 1, 2, '1', 9, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Quarrellers'), 'Veteran', '3', 4, 3, 3, 4, 1, 2, '2', 9, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Thunderers'), 'Thunderer', '3', 4, 3, 3, 4, 1, 2, '1', 9, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Thunderers'), 'Veteran', '3', 4, 3, 3, 4, 1, 2, '2', 9, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Longbeards'), 'Longbeard', '3', 5, 3, 4, 4, 1, 2, '1', 9, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Longbeards'), 'Veteran', '3', 5, 3, 4, 4, 1, 2, '2', 9, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Hammerers'), 'Hammerer', '3', 5, 3, 4, 4, 1, 2, '2', 9, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Hammerers'), 'Keeper of the Gate', '3', 5, 3, 4, 4, 1, 2, '3', 9, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Ironbreakers'), 'Ironbreaker', '3', 5, 3, 4, 4, 1, 2, '1', 10, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Ironbreakers'), 'Ironbeard', '3', 5, 3, 4, 4, 1, 2, '2', 10, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Miners'), 'Miner', '3', 4, 3, 3, 4, 1, 2, '1', 9, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Miners'), 'Prospector', '3', 4, 3, 3, 4, 1, 2, '2', 9, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Slayers'), 'Slayer', '3', 4, 3, 3, 4, 1, 2, '1', 10, 'Infantry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Slayers'), 'Giant Slayer', '3', 5, 3, 4, 4, 1, 3, '2', 10, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Cannon'), 'Cannon', null, null, null, null, 7, 3, null, null, null, 'War Machine(Cannon)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Cannon'), 'Dwarf Crew', '3', 4, 3, 3, 4, 1, 2, '1', 9, null, 3),
    ((SELECT unit_id from units WHERE unit_name ='Gyrocopter'), 'Gyrocopter', '1', 4, 3, 4, 5, 3, 2, '2', 9, 'Unique', 1),
    ((SELECT unit_id from units WHERE unit_name ='Bolt Thrower'), 'Bolt Thrower', null, null, null, null, 7, 3, null, null, null, 'War Machine(Bolt Thrower)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Bolt Thrower'), 'Dwarf Crew','3', 4, 3, 3, 4, 1, 2, '1', 9, null, 3),
    ((SELECT unit_id from units WHERE unit_name ='Grudge Thrower'), 'Grudge Thrower', null, null, null, null, 7, 3, null, null, null, 'War Machine(Stone Thrower)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Grudge Thrower'), 'Dwarf Crew','3', 4, 3, 3, 4, 1, 2, '1', 9, null, 3),
    ((SELECT unit_id from units WHERE unit_name ='Organ Gun'), 'Organ Gun', null, null, null, null, 7, 3, null, null, null, 'War Machine', 1),
    ((SELECT unit_id from units WHERE unit_name ='Organ Gun'), 'Dwarf Crew','3', 4, 3, 3, 4, 1, 2, '1', 9, null, 3),
    ((SELECT unit_id from units WHERE unit_name ='Flame Cannon'), 'Flame Cannon', null, null, null, null, 7, 3, null, null, null, 'War Machine(Fire Thrower)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Flame Cannon'), 'Dwarf Crew','3', 4, 3, 3, 4, 1, 2, '1', 9, null, 3),
    ((SELECT unit_id from units WHERE unit_name ='Rangers'), 'Ranger', '3', 4, 3, 3, 4, 1, 2, '1', 9, 'Infantry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Rangers'), 'Ol´Deadeye', '3', 4, 4, 3, 4, 1, 2, '1', 9, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Irondrakes'), 'Irondrake', '3', 5, 3, 4, 4, 1, 2, '1', 10, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Irondrakes'), 'Ironwarden', '3', 5, 4, 4, 4, 1, 2, '1', 10, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Gyrobomber'), 'Gyrobomber', '1', 4, 3, 4, 5, 3, 2, 2, 9, 'Unique', 1);
