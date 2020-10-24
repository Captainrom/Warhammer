DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE faction = 'Beastmen');
DELETE FROM units WHERE faction = 'Beastmen';

INSERT INTO units (faction, unit_name, type, points_per_model, unit_size_min, unit_size_max) VALUES
    ('Beastmen', 'Khazrak The One-Eye', 'Lords', 270, 1, 1),
    ('Beastmen', 'Gorthor the Beastlord', 'Lords', 350, 1, 1),
    ('Beastmen', 'Malagor, The Dark Omen', 'Lords', 350, 1, 1),
    ('Beastmen', 'Taurox, The Brass Bull', 'Lords', 355, 1, 1),
    ('Beastmen', 'Beastlord', 'Lords', 145, 1, 1),
    ('Beastmen', 'Doombull', 'Lords', 235, 1, 1),
    ('Beastmen', 'Great Bray-Shaman', 'Lords', 200, 1, 1),
    ('Beastmen', 'Morghur, Master of Skulls', 'Heroes', 280, 1, 1),
    ('Beastmen', 'Slugtongue', 'Heroes', 190, 1, 1),
    ('Beastmen', 'Moonclaw, Son of Morrslieb', 'Heroes', 200, 1, 1),
    ('Beastmen', 'Wargor', 'Heroes', 85, 1, 1),
    ('Beastmen', 'Gorebull', 'Heroes', 160, 1, 1),
    ('Beastmen', 'Bray-Shaman', 'Heroes', 75, 1, 1),
    ('Beastmen', 'Gors', 'Core', 7, 10, 200),
    ('Beastmen', 'Ungors', 'Core', 5, 10, 200),
    ('Beastmen', 'Ungor Raiders', 'Core', 6, 5, 10),
    ('Beastmen', 'Tuskgor Chariots', 'Core', 80, 1, 1),
    ('Beastmen', 'Chaos Warhounds', 'Core', 6, 5, 200),
    ('Beastmen', 'Minotaurs', 'Special', 55, 3, 200),
    ('Beastmen', 'Centigors', 'Special', 25, 5, 200),
    ('Beastmen', 'Harpies', 'Special', 11, 5, 10),
    ('Beastmen', 'Bestigors', 'Special', 12, 10, 200),
    ('Beastmen', 'Razorgor Chariot', 'Special', 145, 1, 1),
    ('Beastmen', 'Razorgor', 'Special', 55, 1, 100),
    ('Beastmen', 'Cygor', 'Rare', 275, 1, 1),
    ('Beastmen', 'Ghorgon', 'Rare', 275, 1, 1),
    ('Beastmen', 'Chaos Spawn', 'Rare', 55, 1, 2),
    ('Beastmen', 'Giant', 'Rare', 225, 1, 1),
    ('Beastmen', 'Jabberslythe', 'Rare', 275, 1, 1);

INSERT INTO profiles (unit_id, profile_name, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
    (SELECT unit_id from units WHERE unit_name ='Khazrak The One-Eye'), 'Khazrak', '5', 7, 1, 5, 5, 3, 5, '4', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Gorthor the Beastlord'), 'Gorthor', '5', 7, 3, 5, 5, 3, 5, '5', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Gorthor the Beastlord'), 'Tuskgor Chariot', null, null, null, 5, 4, 4, null, null, null, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Gorthor the Beastlord'), 'Tuskgor', '7', 3, null, 4, null, null, 2, '1', null, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Malagor, The Dark Omen'), 'Malagor', '5', 5, 3, 4, 5, 3, 4, '2', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Taurox, The Brass Bull'), 'Taurox', '6', 6, 3, 6, 6, 5, 5, '6', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Beastlord'), 'Beastlord', '5', 6, 3, 5, 5, 3, 5, '4', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Doombull'), 'Doombull', '6', 6, 3, 6, 5, 5, 5, '5', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Great Bray-Shaman'), 'Great Bray-Shaman', '5', 5, 3, 4, 5, 3, 4, '2', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Morghur, Master of Skulls'), 'Morghur', '5', 6, 3, 4, 5, 2, 4, '3', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Slugtongue'), 'Slugtongue', '5', 4, 3, 3, 4, 2, 3, '1', 7, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Moonclaw, Son of Morrslieb'), 'Moonclaw', '5', 3, 3, 4, 4, 2, 3, '3', 7, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Moonclaw, Son of Morrslieb'), 'Umbralok', '7', 3, 0, 4, 4, 1, 2, '3', 6, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Wargor'), 'Wargor', '5', 5, 3, 4, 5, 2, 4, '3', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Gorebull'), 'Gorebull', '6', 5, 3, 5, 5, 4, 4, '4', 7, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Bray-Shaman'), 'Bray-Shaman', '5', 4, 3, 3, 4, 2, 3, '1', 7, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Gors'), 'Gor', '5', 4, 3, 3, 4, 1, 3, '1', 7, 'Infantry', 200),
    ((SELECT unit_id from units WHERE unit_name ='Gors'), 'Foe-render', '5', 4, 3, 3, 4, 1, 3, '2', 7, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Ungors'), 'Ungor', '5', 3, 3, 3, 3, 1, 3, '1', 6, 'Infantry', 200),
    ((SELECT unit_id from units WHERE unit_name ='Ungors'), 'Halfhorn', '5', 3, 3, 3, 3, 1, 3, '2', 6, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Ungor Raiders'), 'Ungor Raider', '5', 3, 3, 3, 3, 1, 3, '1', 6, 'Infantry', 200),
    ((SELECT unit_id from units WHERE unit_name ='Ungor Raiders'), 'Raider Halfhorn', '5', 3, 4, 3, 3, 1, 3, '1', 6, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Tuskgor Chariots'), 'Tuskgor Chariot', null, null, null, 5, 4, 4, null, null, null, 'Chariot', 1),
    ((SELECT unit_id from units WHERE unit_name ='Tuskgor Chariots'), 'Bestigor', null, 4, 3, 4, null, null, 3, '1', 7, 'Chariot', 1),
    ((SELECT unit_id from units WHERE unit_name ='Tuskgor Chariots'), 'Gor', null, 4, 3, 3, null, null, 3, '1', 7, 'Chariot', 1),
    ((SELECT unit_id from units WHERE unit_name ='Tuskgor Chariots'), 'Tuskgor', '7', 3, null, 4, null, null, 2, '1', null, 'Chariot', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Warhounds'), 'Chaos Warhound', '7', 4, 8, 3, 3, 1, 3, '1', 5, 'Infantry', 200),
    ((SELECT unit_id from units WHERE unit_name ='Minotaurs'), 'Minotaur', '6', 4, 3, 5, 4, 3, 3, '3', 7, 'Infantry', 200),
    ((SELECT unit_id from units WHERE unit_name ='Minotaurs'), 'Bloodkine', '6', 4, 3, 5, 4, 3, 3, '4', 7, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Centigors'), 'Centigor', '8', 4, 3, 4, 4, 1, 2, '2', 7, 'Infantry', 200),
    ((SELECT unit_id from units WHERE unit_name ='Centigors'), 'Gorehoof', '8', 4, 3, 4, 4, 1, 2, '3', 7, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Harpies'), 'Harpy', '5', 3, 0, 3, 3, 1, 5, '2', 6, 'Infantry', 10),
    ((SELECT unit_id from units WHERE unit_name ='Bestigors'), 'Bestigor', '5', 4, 3, 4, 4, 1, 3, '1', 7, 'Infantry', 200),
    ((SELECT unit_id from units WHERE unit_name ='Bestigors'), 'Gouge-horn', '5', 4, 3, 4, 4, 1, 3, '2', 7, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Razorgor Chariot'), 'Razorgor Chariot', null, null, null, 5, 5, 5, null, null, null, 'Chariot', 1),
    ((SELECT unit_id from units WHERE unit_name ='Razorgor Chariot'), 'Bestigor', null, 4, 3, 4, null, null, 3, '1', 7, 'Chariot', 1),
    ((SELECT unit_id from units WHERE unit_name ='Razorgor Chariot'), 'Gor', null, 4, 3, 3, null, null, 3, '1', 7, 'Chariot', 1),
    ((SELECT unit_id from units WHERE unit_name ='Razorgor Chariot'), 'Razorgor', '7', 3, null, 5, null, null, 2, '4', null, 'Chariot', 1),
    ((SELECT unit_id from units WHERE unit_name ='Razorgor'), 'Razorgor', '7', 3, 0, 5, 5, 3, 2, '4', 6, 'Infantry', null),
    ((SELECT unit_id from units WHERE unit_name ='Cygor'), 'Cygor', '7', 2, 1, 6, 5, 5, 3, '5', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Ghorgon'), 'Ghorgon', '7', 4, 0, 6, 6, 6, 3, '6', 10, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Spawn'), 'Chaos Spawn', '2D6', 3, 0, 4, 5, 3, 2, 'D6+1', 10, 'Infantry', 2),
    ((SELECT unit_id from units WHERE unit_name ='Giant'), 'Giant', '6', 3, 3, 6, 5, 6, 2, 'special', 10, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Jabberslythe'), 'Jabberslythe', '8', 4, 4, 5, 5, 5, 3, '5', 9, 'Infantry', null);
