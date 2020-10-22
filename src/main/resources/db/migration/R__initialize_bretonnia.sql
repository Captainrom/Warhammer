DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE faction = 'Bretonnia');
DELETE FROM units WHERE faction = 'Bretonnia';

INSERT INTO units (faction, unit_name, type, points_per_model, unit_size_min, unit_size_max) VALUES
    ('Bretonnia', 'Knights Errant', 'core', 20, 5, 15);

INSERT INTO profiles (unit_id, profile_name, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
    (SELECT unit_id from units WHERE unit_name ='Knights Errant'), 'Knights Errant', '4', 3, 3, 3, 3, 1, 3, '1', 7, 'Cavalry', 14),
    ((SELECT unit_id from units WHERE unit_name ='Knights Errant'), 'Cavalier', '4', 3, 3, 3, 3, 1, 3, '2', 7, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Knights Errant'), 'Warhorse', '8', 3, 0, 3, 3, 1, 3, '1', 5, '-', 15);