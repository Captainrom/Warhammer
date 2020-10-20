DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE faction = 'Orcs & Goblins');
DELETE FROM units WHERE faction = 'Orcs & Goblins';

INSERT INTO units (faction, unit_name, type, points_per_model, unit_size_min, unit_size_max) VALUES
    ('Orcs & Goblins', 'Orc Boyz' ,'Core' , 6, 10, null),
    ('Orcs & Goblins', 'Orc Arrer Boyz','Core' , 7, 10, null),
    ('Orcs & Goblins', 'Savage Orcs','Core' , 8, 10, null),
    ('Orcs & Goblins', 'Goblins','Core' , 3, 20, null),
    ('Orcs & Goblins', 'Goblins Wolf Riders','Core' , 10, 5, null),
    ('Orcs & Goblins', 'Night Goblins','Core' , 3, 20, null),
    ('Orcs & Goblins', 'Forest Goblin Spider Riders','Core' , 13, 5, null),
    ('Orcs & Goblins', 'Black Orcs','Core' , 12, 10, null),
    ('Orcs & Goblins', 'Orc Boar Boyz','Core' , 16, 5, null),
    ('Orcs & Goblins', 'Savage Orc Boar Boyz','Core' , 18, 5, null),
    ('Orcs & Goblins', 'Orc Boar Chariot','Core' , 85, 1, null),
    ('Orcs & Goblins', 'Goblin Wolf Chariot','Core' , 50, 1, 3),
    ('Orcs & Goblins', 'Goblin Spear Chukka','Core' , 35, 1, null),
    ('Orcs & Goblins', 'Night Goblin Squig Hoppers','Core' , 12, 5, null),
    ('Orcs & Goblins', 'Night Goblin Squig Herd','Core' , 27, 10, null),
    ('Orcs & Goblins', 'Snotlings','Core' , 30, 2, null),
    ('Orcs & Goblins', 'Trolls','Core' , 35, 1, null),
    ('Orcs & Goblins', 'Goblin Rock Lobber','Core' , 85, 1, 1),
    ('Orcs & Goblins', 'Doom Diver Catapult','Core' , 80, 1, 1),
    ('Orcs & Goblins', 'Snotling Pump Wagon','Core' , 45, 1, 1),
    ('Orcs & Goblins', 'Arachnarok Spider','Core' , 290, 1, 1),
    ('Orcs & Goblins', 'Mangler Squigs','Core' , 65, 1, 1),
    ('Orcs & Goblins', 'Stone Trolls','Core' , 45, 1, null),
    ('Orcs & Goblins', 'River Trolls','Core' , 45, 1, null),
    ('Orcs & Goblins', 'Giant','Core' , 200, 1, 1);

INSERT INTO profiles (unit_id, profile_name, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
    (SELECT unit_id from units WHERE unit_name = 'Orc Boyz'), 'Orc Boyz', '4', 3, 3, 3, 4, 1, 2, '1', 7, 'Infantry', null);
