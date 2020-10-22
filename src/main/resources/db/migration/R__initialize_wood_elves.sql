DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE faction = 'Wood Elves');
DELETE FROM units WHERE faction = 'Wood Elves';

INSERT INTO units (faction, unit_name, type, points_per_model, unit_size_min, unit_size_max) VALUES
    ('Wood Elves', 'WE', 'Lords', 270, 1, 1);



INSERT INTO profiles (unit_id, profile_name, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
    (SELECT unit_id from units WHERE unit_name ='WE'), 'WE', '5', 7, 1, 5, 5, 3, 5, '4', 9, 'Infantry(Character)', 1);

