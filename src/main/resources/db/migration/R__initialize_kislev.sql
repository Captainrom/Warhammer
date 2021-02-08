DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE faction = 'Kislev');
DELETE FROM units WHERE faction = 'Kislev';

INSERT INTO units (faction, unit_name, type, points_per_model, unit_size_min, unit_size_max) VALUES
    ('Kislev', 'Tzarina Katarin, the ice Queen' ,'Lords' , 495, 1, 1),
    ('Kislev', 'Boris Ursus, the Red Tzar' ,'Lords' , 375, 1, 1),
    ('Kislev', 'Kislev Boyar' ,'Heroes' , 90, 1, 1),
    ('Kislev', 'Winged Lancers','Core' , 24, 5, 50),
    ('Kislev', 'Ungol Horse Archers','Core' , 17, 5, 50),
    ('Kislev', 'Kislev Kossars','Core' , 9, 10, 100),
    ('Kislev', 'Gryphon Legion','Special' , 26, 5, 50);

INSERT INTO profiles (unit_id, profile_name, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
    (SELECT unit_id from units WHERE unit_name = 'Tzarina Katarin, the ice Queen'), 'Tzarina Katarin', '4', 4, 3, 3, 3, 3, 3, '1', 10, 'Cavalry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Tzarina Katarin, the ice Queen'), 'Warhorse', '8', 3, 0, 3, 3, 3, 1, '1', 5, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Boris Ursus, the Red Tzar'), 'Boris Bokha', '4', 5, 4, 5, 4, 3, 3, '4', 10, 'Cavalry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Boris Ursus, the Red Tzar'), 'Urskin', '6', 4, 0, 6, 5, 3, 4, '4', 7, 'Bear', 1),
    ((SELECT unit_id from units WHERE unit_name ='Kislev Boyar'), 'Boyar', '4', 5, 5, 4, 4, 2, 5, '3', 8, 'Cavalry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Kislev Boyar'), 'Warhorse', '8', 3, 0, 3, 3, 1, 3, '1', 5, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Winged Lancers'), 'Winged Lancer', '4', 4, 3, 3, 3, 1, 3, '1', 8, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Winged Lancers'), 'Rotamaster', '4', 4, 3, 3, 3, 1, 3, '2', 8, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Winged Lancers'), 'Warhorse', '8', 3, 0, 3, 3, 1, 3, '1', 5, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Ungol Horse Archers'), 'Horse Archer', '4', 3, 4, 3, 3, 1, 3, '1', 7, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Ungol Horse Archers'), 'Champion', '4', 3, 4, 3, 3, 1, 3, '2', 7, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Ungol Horse Archers'), 'Warhorse', '8', 3, 0, 3, 3, 1, 3, '1', 5, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Kislev Kossars'), 'Kossars', '4', 3, 3, 3, 3, 1, 3, '1', 7, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Kislev Kossars'), 'Champion', '4', 3, 3, 3, 3, 1, 3, '2', 7, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Gryphon Legion'), 'Lancer', '4', 4, 3, 4, 3, 1, 4, '1', 8, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Gryphon Legion'), 'Champion', '4', 4, 3, 4, 3, 1, 4, '2', 8, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Gryphon Legion'), 'Warhorse', '8', 3, 0, 3, 3, 1, 3, '1', 5, null, 50);