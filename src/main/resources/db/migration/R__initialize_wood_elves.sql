DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE faction = 'Wood Elves');
DELETE FROM units WHERE faction = 'Wood Elves';

INSERT INTO units (faction, unit_name, type, points_per_model, unit_size_min, unit_size_max) VALUES
    ('Wood Elves', 'Orion', 'Lords', 600, 1, 1),
    ('Wood Elves', 'Durthu', 'Lords', 385, 1, 1),
    ('Wood Elves', 'Araloth', 'Lords', 260, 1, 1),
    ('Wood Elves', 'Glade Lord', 'Lords',145, 1, 1),
    ('Wood Elves', 'Spellweaver','Lords', 185, 1, 1),
    ('Wood Elves', 'Treeman Ancient','Lords', 290, 1, 1),
    ('Wood Elves', 'Drycha','Heroes', 255, 1, 1),
    ('Wood Elves', 'Naestra & Arahan','Heroes', 275, 1, 1),
    ('Wood Elves', 'Glade Captain','Heroes', 75, 1, 1),
    ('Wood Elves', 'Spellsinger','Heroes', 80, 1, 1),
    ('Wood Elves', 'Shadowdancer','Heroes', 100, 1, 1),
    ('Wood Elves', 'Waystalker ','Heroes', 90, 1, 1),
    ('Wood Elves', 'Branchwraith','Heroes', 75, 1, 1),
    ('Wood Elves', 'Glade Guard','Core', 12, 10, 100),
    ('Wood Elves', 'Dryads','Core', 11, 10, 100),
    ('Wood Elves', 'Glade Riders', 'Core', 19, 5, 50),
    ('Wood Elves', 'Eternal Guard', 'Core', 11, 10, 100),
    ('Wood Elves', 'Wildwood Rangers', 'Special', 11, 10, 100),
    ('Wood Elves', 'Wardancers', 'Special',15, 5, 50),
    ('Wood Elves', 'Tree Kin','Special', 45, 3, 30),
    ('Wood Elves', 'Deepwood Scouts','Special', 13, 1, 1),
    ('Wood Elves', 'Warhawk Riders','Special', 45, 3, 30),
    ('Wood Elves', 'Sisters of the Thorn','Special', 26, 5, 50),
    ('Wood Elves', 'Wild Riders','Special', 26, 5, 50),
    ('Wood Elves', 'Waywatchers','Rare', 20, 5, 50),
    ('Wood Elves', 'Great Eagles','Rare', 50, 1, 10),
    ('Wood Elves', 'Treeman','Rare', 225, 1, 1);

INSERT INTO profiles (unit_id, profile_name, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
     (SELECT unit_id from units WHERE unit_name ='Orion'), 'Orion', '9', 8, 8, 6, 5, 5, 9, '5', 10, 'Monster(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Orion'), 'Hound og Orion', '9', 4, 0, 4, 4, 1, 4, '1', 6, 'War Beast', 1),
    ((SELECT unit_id from units WHERE unit_name ='Durthu'), 'Durthu', '5', 7, 7, 6, 6, 6, 2, '6', 10, 'Monster(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Araloth'), 'Araloth', '5', 8, 7, 4, 3, 3, 8, '5', 10, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Glade Lord'), 'Glade Lord', '5', 7, 7, 4, 3, 3, 8, '4', 10, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Spellweaver'), 'Spellweaver', '5', 4, 4, 3, 3, 3, 5, '1', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Treeman Ancient'), 'Treeman Ancient', '5', 4, 4, 5, 6, 6, 2, '3', 10, 'Monster(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Drycha'), 'Drycha', '5', 7, 5, 4, 4, 3, 7, '4', 9, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Naestra & Arahan'), 'Naestra', '5', 6, 6, 4, 3, 2, 7, '3', 9, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Naestra & Arahan'), 'Arahan', '5', 6, 6, 4, 3, 2, 7, '3', 9, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Naestra & Arahan'), 'Ceithin-Har', '6', 6, 0, 6, 6, 6, 3, '5', 8, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Naestra & Arahan'), 'Gwindalor', '2', 5, 0, 4, 4, 3, 4, '2', 8, 'Monstrous Beast', 1),
    ((SELECT unit_id from units WHERE unit_name ='Glade Captain'), 'Glade Captain', '5', 6, 6, 4, 3, 2, 7, '3', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Spellsinger'), 'Spellsinger', '5', 4, 4, 3, 3, 2, 5, '1', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Shadowdancer'), 'Shadowdancer', '5', 8, 6, 4, 3, 2, 8, '3', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Waystalker'), 'Waystalker', '5', 6, 7, 4, 3, 2, 7, '1', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Branchwraith'), 'Branchwraith', '5', 6, 6, 4, 4, 2, 7, '3', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Glade Guard'), 'Glade Guard', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Glade Guard'), 'Lord`s Bowman', '5', 4, 5, 3, 3, 1, 5, '1', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Dryads'), 'Dryad', '5', 4, 4, 3, 4, 1, 5, '2', 8, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Dryads'), 'Branch Nymph', '5', 4, 4, 3, 4, 1, 5, '3', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Glade Riders'), 'Glade Rider', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Glade Riders'), 'Glade Knight', '5', 4, 5, 3, 3, 1, 5, '1', 8, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Glade Riders'), 'Elven Steed', '9', 3, 0, 3, 3, 1, 4, '1', 5, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Eternal Guard'), 'Eternal Guard', '5', 5, 4, 3, 3, 1, 5, '1', 9, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Eternal Guard'), 'Eternal Warden', '5', 5, 4, 3, 3, 1, 5, '2', 9, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Wildwood Rangers'), 'Wildwood Ranger', '5', 5, 4, 3, 3, 1, 5, '1', 9, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Wildwood Rangers'), 'Wildwood Warden', '5', 5, 4, 3, 3, 1, 5, '2', 9, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Wardancers'), 'Wardancer', '5', 6, 4, 3, 3, 1, 6, '1', 8, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Wardancers'), 'Bladesinger', '5', 6, 4, 3, 3, 1, 6, '2', 8, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Tree Kin'), 'Tree Kin', '5', 4, 4, 4, 5, 3, 3, '3', 8, 'Monstrous Infantry', 30),
    ((SELECT unit_id from units WHERE unit_name ='Tree Kin'), 'Tree Kin Elder', '5', 4, 4, 4, 5, 3, 3, '4', 8, 'Monstrous Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Deepwood Scouts'), 'Deepwood Scouts', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Deepwood Scouts'), 'Master Scout', '5', 4, 5, 3, 3, 1, 5, '1', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Warhawk Riders'), 'Warhawk Riders', '5', 4, 4, 3, 3, 1, 5, 1, 8, 'Monstrous Cavalry', 30),
    ((SELECT unit_id from units WHERE unit_name ='Warhawk Riders'), 'Wind Rider', '5', 4, 4, 3, 3, 1, 5, '2', 8, 'Monstrous Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Warhawk Riders'), 'Warhawk', '1', 4, 0, 4, 4, 3, 5, '2', 5, null, 30),
    ((SELECT unit_id from units WHERE unit_name ='Sisters of the Thorn'), 'Sisters of the Thorn', '5', 4, 5, 3, 3, 1, 5, '1', 9, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Sisters of the Thorn'), 'Handmaiden of the Thorn', '5', 4, 6, 3, 3, 1, 5, '1', 9, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Sisters of the Thorn'), 'Steed og Isha', '9', 3, 0, 4, 3, 1, 4, '1', 5, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Wild Riders'), 'Wild Rider', '5', 5, 4, 4, 3, 1, 5, '1', 9, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Wild Riders'), 'Wild Hunter', '5', 5, 4, 4, 3, 1, 5, '2', 9, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Wild Riders'), 'Steed of Kurnous', '9', 3, 0, 4, 3, 1, 4, '1', 5, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Waywatchers'), 'Waywatcher', '5', 4, 5, 3, 3, 1, 5, '1', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Waywatchers'), 'Waywatcher Sentinel', '5', 4, 6, 3, 3, 1, 5, '1', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Great Eagles' AND faction = 'Wood Elves'), 'Great Eagle', '2', 5, 0, 4, 4, 3, 4, '2', 8, 'Monstrous Beast', 10),
    ((SELECT unit_id from units WHERE unit_name ='Treeman'), 'Treeman', '5', 6, 6, 5, 6, 5, 2, '5', 9, 'Monster', 1);
