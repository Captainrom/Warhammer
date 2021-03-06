DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE faction = 'Tomb Kings');
DELETE FROM units WHERE faction = 'Tomb Kings';

INSERT INTO units (faction, unit_name, type, points_per_model, unit_size_min, unit_size_max) VALUES
    ('Tomb Kings', 'Settra the Imperishable', 'Lords', 475, 1, 1),
    ('Tomb Kings', 'Hight Queen Khalida' ,'Lords' , 365, 1, 1),
    ('Tomb Kings', 'Arkhan the Black','Lords' , 360, 1, 1),
    ('Tomb Kings', 'Grand Hierophant Khatep','Lords' , 330, 1, 1),
    ('Tomb Kings', 'Tomb King','Lords' , 170, 1, 1),
    ('Tomb Kings', 'Liche High Priest','Lords' , 175, 1, 1),
    ('Tomb Kings', 'The Herald Nekaph' ,'Heroes' , 120, 1, 1),
    ('Tomb Kings', 'Prince Apophas','Heroes' , 130, 1, 1),
    ('Tomb Kings', 'Ramhotep the Visionary','Heroes' , 110, 1, 1),
    ('Tomb Kings', 'Tomb Prince','Heroes' , 100, 1, 1),
    ('Tomb Kings', 'Tomb Herald','Heroes' , 60, 1, 1),
    ('Tomb Kings', 'Liche Priest','Heroes' , 70, 1, 1),
    ('Tomb Kings', 'Necrotect','Heroes' , 60, 1, 1),
    ('Tomb Kings', 'Skeleton Warriors' ,'Core' , 4, 10, 100),
    ('Tomb Kings', 'Skeleton Archers','Core' , 6, 10, 100),
    ('Tomb Kings', 'Skeleton Horsemen','Core' , 12, 5, 50),
    ('Tomb Kings', 'Skeleton Horse Archers','Core' , 14, 5, 50),
    ('Tomb Kings', 'Skeleton Chariots','Core' , 55, 1, 1),
    ('Tomb Kings', 'Tomb Guard','Special' , 11, 10, 100),
    ('Tomb Kings', 'Necropolis Knights','Special' , 65, 3, 30),
    ('Tomb Kings', 'Tomb Scorpion','Special' , 85, 1, 1),
    ('Tomb Kings', 'Ushabti','Special' , 50, 3, 30),
    ('Tomb Kings', 'Tomb Swarm','Special' , 40, 2, 10),
    ('Tomb Kings', 'Carrion','Special' , 24, 3, 30),
    ('Tomb Kings', 'Khemrian Warsphinx','Special' , 210, 1, 1),
    ('Tomb Kings', 'Sepulchral Stalkers','Special' , 55, 3, 30),
    ('Tomb Kings', 'Necrolith Colossus','Rare' , 170, 1, 1),
    ('Tomb Kings', 'Hierotitan','Rare' , 175, 1, 1),
    ('Tomb Kings', 'Necrosphinx','Rare' , 225, 1, 1),
    ('Tomb Kings', 'Screaming Skull Catapult','Rare' , 90, 1, 1),
    ('Tomb Kings', 'Casket of Souls','Rare' , 135, 1, 1);

INSERT INTO profiles (unit_id, profile_name, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
    (SELECT unit_id from units WHERE unit_name = 'Settra the Imperishable'), 'Settra the Imperishable', '4', 7, 3, 6, 5, 4, 3, '5', 10, 'Infantry(Special Character; Tomb King & Liche Priest)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Settra the Imperishable'), 'Chariot of the Gods', null, null, null, 5, 5, 5, null, null, null, 'Chariot(Armour Save 4+)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Settra the Imperishable'), 'Skeletal Steed', '8', 2, null, 3, null, null, 2, '1', null, null, 4),
    ((SELECT unit_id from units WHERE unit_name ='Hight Queen Khalida'), 'Hight Queen Khalida', '6', 6, 3, 4, 5, 3, 9, '5', 10, 'Infantry(Special Character; Tomb King)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Arkhan the Black'), 'Arkhan the Black', '4', 4, 3, 5, 5, 3, 3, '3', 9, 'Infantry(Special Character; Liche High Priest & Tomb King)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Grand Hierophant Khatep'), 'Grand Hierophant Khatep', '4', 3, 3, 3, 4, 3, 2, '1', 9, 'Infantry(Special Character; Liche High Priest)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Tomb King'), 'Tomb King', '4', 6, 3, 5, 5, 4, 3, '4', 10, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Liche High Priest'), 'Liche High Priest', '4', 3, 3, 3, 4, 3, 2, '1', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='The Herald Nekaph'), 'The Herald Nekaph', '4', 5, 3, 4, 4, 2, 3, '3', 8, 'Infantry(Special Character; Tomb Herald)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Prince Apophas'), 'Prince Apophas', '4', 4, 3, 4, 3, 4, 1, '5', 8, 'Infantry(Special Character; Tomb Prince)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Ramhotep the Visionary'), 'Ramhotep the Visionary', '4', 3, 3, 4, 4, 2, 3, '2', 7, 'Infantry(Special Character; Necrotect)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Tomb Prince'), 'Tomb Prince', '4', 5, 3, 4, 5, 3, 3, '3', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Tomb Herald'), 'Tomb Herald', '4', 4, 3, 4, 4, 2, 3, '3', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Liche Priest'), 'Liche Priest', '4', 3, 3, 3, 3, 2, 2, '1', 7, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Necrotect'), 'Necrotect', '4', 3, 3, 4, 4, 2, 3, '2', 7, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Warriors' AND faction = 'Tomb Kings'), 'Skeleton Warrior', '4', 2, 2, 3, 3, 1, 2, '1', 5, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Warriors' AND faction = 'Tomb Kings'), 'Master of Arms', '4', 2, 2, 3, 3, 1, 2, '2', 5, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Archers'), 'Skeleton Warrior', '4', 2, 2, 3, 3, 1, 2, '1', 5, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Archers'), 'Master of Arrows', '4', 2, 3, 3, 3, 1, 2, '1', 5, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Horsemen'), 'Skeleton Horseman', '4', 2, 2, 3, 3, 1, 2, '1', 5, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Horsemen'), 'Master of Horse', '4', 2, 2, 3, 3, 1, 2, '2', 5, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Horsemen'), 'Skeletal Steed', '8', 2, 0, 3, 3, 1, 2, '1', 5, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Horse Archers'), 'Skeleton Horsema', '4', 2, 2, 3, 3, 1, 2, '1', 5, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Horse Archers'), 'Master of Scouts', '4', 2, 3, 3, 3, 1, 2, '1', 5, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Horse Archers'), 'Skeletal Steed','8', 2, 0, 3, 3, 1, 2, '1', 5, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Chariots'), 'Skeleton Chariot', null, null, null, 4, 4, 3, null, null, null, 'Chariot(Armour Save 5+)', 30),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Chariots'), 'Skeleton Charioteer', null, 3, 2, 3, null, null, 2, '2', 7, null, 2),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Chariots'), 'Master of Chariots', null, 3, 2, 3, null, null, 2, '3', 7, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Skeleton Chariots'), 'Skeletal Steed','8', 2, null, 3, null, null, 2, '1', null, null, 30),
    ((SELECT unit_id from units WHERE unit_name ='Tomb Guard'), 'Tomb Guard', '4', 3, 3, 4, 4, 1, 3, '1', 8, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Tomb Guard'), 'Tomb Captain', '4', 3, 3, 4, 4, 1, 3, '2', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Necropolis Knights'), 'Necropolis Knight', '4', 4, 3, 4, 4, 1, 3, '2', 8, 'Monstrous Cavalry', 30),
    ((SELECT unit_id from units WHERE unit_name ='Necropolis Knights'), 'Necropolis Captain', '4', 4, 3, 4, 4, 1, 3, '3', 8, 'Monstrous Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Necropolis Knights'), 'Necroserpent', '7', 3, 0, 5, 4, 3, 3, '3', 8, 'Monstrous Cavalry', 30),
    ((SELECT unit_id from units WHERE unit_name ='Tomb Scorpion'), 'Tomb Scorpion', '7', 4, 0, 5, 5, 3, 3, '4', 8, 'Monstrous Beast', 1),
    ((SELECT unit_id from units WHERE unit_name ='Ushabti'), 'Ushabti', '5', 4, 2, 4, 4, 3, 3, '3', 8, 'Monstrous Infantry', 30),
    ((SELECT unit_id from units WHERE unit_name ='Ushabti'), 'Ushabti Ancient', '5', 4, 2, 4, 4, 3, 3, '4', 8, 'Monstrous Infantry', 3),
    ((SELECT unit_id from units WHERE unit_name ='Tomb Swarm'), 'Tomb Swarm', '4', 3, 0, 2, 2, 5, 1, '5', 10, 'Swarm', 10),
    ((SELECT unit_id from units WHERE unit_name ='Carrion'), 'Carrion', '2', 3, 0, 4, 4, 2, 3, '3', 4, 'War Beast', 30),
    ((SELECT unit_id from units WHERE unit_name ='Khemrian Warsphinx'), 'Khemrian Warsphinx', '6', 4, 0, 5, 8, 5, 1, '4', 8, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Khemrian Warsphinx'), 'Tomb Guard Crew', null, 3, 3, 4, null, null, 3, '1', 8, null, 4),
    ((SELECT unit_id from units WHERE unit_name ='Sepulchral Stalkers'), 'Sepulchral Stalker', '7', 3, 3, 4, 4, 3, 3, '2', 8, 'Monstrous Beast', 30),
    ((SELECT unit_id from units WHERE unit_name ='Necrolith Colossus'), 'Necrolith Colossus', '6', 3, 2, 6, 6, 5, 1, '4', 8, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Hierotitan'), 'Hierotitan', '6', 3, 0, 6, 6, 5, 1, '3', 8, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Necrosphinx'), 'Necrosphinx', '6', 4, 0, 5, 8, 5, 1, '5', 8, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Screaming Skull Catapult'), 'Screaming Skull Catapult', null, null, null, null, 7, 3, null, null, null, 'War Machine(Stone Thrower)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Screaming Skull Catapult'), 'Skeleton Crew', '4', 2, 2, 3, 3, 1, 2, '1', 5, null, 3),
    ((SELECT unit_id from units WHERE unit_name ='Casket of Souls'), 'Casket of Souls', null, null, null, null, 10, 3, null, null, null, 'War Machine', 1),
    ((SELECT unit_id from units WHERE unit_name ='Casket of Souls'), 'Keeper of the Casket', '4', 3, 3, 3, 3, 1, 3, '2', 8, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Casket of Souls'), 'Casket Guard', '4', 3, 3, 3, 3, 1, 3, '2', 8, null, 2);
