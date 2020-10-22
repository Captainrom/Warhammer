DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE faction = 'The Empire');
DELETE FROM units WHERE faction = 'The Empire';

INSERT INTO units (faction, unit_name, type, points_per_model, unit_size_min, unit_size_max) VALUES
    ('The Empire', 'TE', 'core', 9, 10, null);


INSERT INTO profiles (unit_id, profile_name, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
    (SELECT unit_id from units WHERE unit_name ='TE'), 'TE', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', null);