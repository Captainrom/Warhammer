DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE faction = 'High Elves');
DELETE FROM units WHERE faction = 'High Elves';

INSERT INTO units (faction, unit_name, type, points_per_model, unit_size_min, unit_size_max) VALUES
    ('High Elves', 'Tyrion', 'Lords', 410, 1, 1),
    ('High Elves', 'Teclis', 'Lords', 450, 1, 1),
    ('High Elves', 'Eltharion the Grim', 'Lords', 295, 1, 1),
    ('High Elves', 'Alith Anar', 'Lords',250, 1, 1),
    ('High Elves', 'Alarielle the Radiant','Lords', 350, 1, 1),
    ('High Elves', 'Prince','Lords', 140, 1, 1),
    ('High Elves', 'Archmage','Lords', 185, 1, 1),
    ('High Elves', 'Anointed of Asuryan','Lords', 210, 1, 1),
    ('High Elves', 'Loremaster of Hoeth','Lords', 230, 1, 1),
    ('High Elves', 'Korhil','Heroes', 150, 1, 1),
    ('High Elves', 'Caradryan','Heroes', 170, 1, 1),
    ('High Elves', 'Noble','Heroes', 70, 1, 1),
    ('High Elves', 'Mage','Heroes', 85, 1, 1),
    ('High Elves', 'Dragon Mage of Caledor','Heroes', 350, 1, 1),
    ('High Elves', 'Lothern Sea Helm','Heroes', 100, 1, 1),
    ('High Elves', 'Handmaiden of the Everqueen','Heroes', 95, 1, 1),
    ('High Elves', 'Spearmen', 'Core', 9, 10, 100),
    ('High Elves', 'Archers', 'Core', 10, 10, 100),
    ('High Elves', 'Lothern Sea Guard', 'Core', 11, 10, 100),
    ('High Elves', 'Silver Helms', 'Core',21, 5, 50),
    ('High Elves', 'Ellyrian Reavers','Core', 16, 5, 50),
    ('High Elves', 'Lion Chariot of Chrace','Special', 120, 1, 1),
    ('High Elves', 'White Lions of Chrace','Special', 13, 10, 100),
    ('High Elves', 'Swordmasters Of Hoeth','Special', 13, 5, 50),
    ('High Elves', 'Shadow Warriors','Special', 14, 5, 50),
    ('High Elves', 'Phoenix Guard','Special', 15, 10, 100),
    ('High Elves', 'Dragon Princes of Caledor','Special', 29, 5, 50),
    ('High Elves', 'Lothern Skycutter','Special', 95, 1, 1),
    ('High Elves', 'Tiranoc Chariot','Special', 70, 1, 3),
    ('High Elves', 'Eagle Claw Bolt Thrower','Rare', 70, 1, 1),
    ('High Elves', 'Great Eagles','Rare', 50, 1, 10),
    ('High Elves', 'Flamespyre Phoenix','Rare', 225, 1, 1),
    ('High Elves', 'Frostheart Phoenix','Rare', 240, 1, 1),
    ('High Elves', 'Sisters of Avelorn','Rare', 14, 5, 50);

INSERT INTO profiles (unit_id, profile_name, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
    (SELECT unit_id from units WHERE unit_name ='Tyrion'), 'Tyrion', '5', 9, 7, 4, 3, 4, 10, '4', 10, 'Cavalry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Tyrion'), 'Malhandhir(Elven Steed)', '10', 4, 0, 4, 3, 1, 5, '2', 7, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Teclis'), 'Morathi', '5', 3, 3, 2, 2, 3, 5, '1', 10, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Eltharion the Grim'), 'Eltharion', '5', 8, 7, 4, 3, 3, 8, '4', 10, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Eltharion the Grim'), 'Stormwing(Griffon)', '6', 6, 0, 5, 5, 5, 7, '4', 8, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Alith Anar'), 'Alith Anar', '5', 7, 7, 4, 3, 3, 9, '4', 10, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Alarielle the Radiant'), 'Alarielle the Radiant', '5', 6, 5, 3, 3, 3, 6, '1', 10, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Prince'), 'Prince', '5', 7, 7, 4, 3, 3, 8, '4', 10, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Archmage'), 'Archmage', '5', 4, 4, 3, 3, 3, 5, '1', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Anointed of Asuryan'), 'Anointed of Asuryan', '5', 7, 6, 4, 3, 3, 8, '3', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Loremaster of Hoeth'), 'Loremaster of Hoeth', '5', 6, 4, 4, 3, 3, 7, '3', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Korhil'), 'Korhil', '5', 6, 6, 4, 3, 2, 7, '3', 9, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Caradryan'), 'Caradryan', '5', 6, 6, 4, 3, 2, 7, '3', 9, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Caradryan'), 'Ashtari(Frostheart Phoenix)', '2', 6, 0, 6, 6, 5, 3, '5', 9, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Noble'), 'Noble', '5', 6, 6, 4, 3, 2, 7, '3', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Mage'), 'Mage', '5', 4, 4, 3, 3, 2, 5, '1', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Dragon Mage of Caledor'), 'Dragon Mage', '5', 4, 4, 3, 3, 2, 6, '2', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Dragon Mage of Caledor'), 'Sun Dragon', '6', 5, 0, 5, 5, 5, 4, '4', 7, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Lothern Sea Helm'), 'Lothern Sea Helm', '5', 6, 6, 4, 3, 2, 7, '2', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Handmaiden of the Everqueen'), 'Handmaiden of the Everqueen', '5', 5, 7, 4, 3, 2, 7, '2', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Spearmen'), 'Spearman', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Spearmen'), 'Sentinel', '5', 4, 4, 3, 3, 1, 5, '2', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Archers'), 'Archer', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Archers'), 'Hawkeye', '5', 4, 5, 3, 3, 1, 5, '1', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Lothern Sea Guard'), 'Sea Guard', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Lothern Sea Guard'), 'Sea Master', '5', 4, 4, 3, 3, 1, 5, '2', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Silver Helms'), 'Silver Helm', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Silver Helms'), 'High Helm', '5', 4, 4, 3, 3, 1, 5, '2', 8, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Silver Helms'), 'Elven Steed', '9', 3, 0, 3, 3, 1, 4, '1', 5, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Ellyrian Reavers'), 'Ellyrian Reaver', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Cavalry', null),
    ((SELECT unit_id from units WHERE unit_name ='Ellyrian Reavers'), 'Harbinger', '5', 4, 5, 3, 3, 1, 5, '2', 8, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Ellyrian Reavers'), 'Elven Steed', '9', 3, 0, 3, 3, 1, 4, '1', 5, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Lion Chariot of Chrace'), 'Lion Chariot', null, null, null, 5, 4, 4, null, null, null, 'Chariot(Armour Save 4+)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Lion Chariot of Chrace'), 'Lion Charioteer', null, 5, 4, 4, null, null, 5, '1', 8, null, 2),
    ((SELECT unit_id from units WHERE unit_name ='Lion Chariot of Chrace'), 'War Lion', '8', 5, null, 5, null, null, 4, '2', null, null, 2),
    ((SELECT unit_id from units WHERE unit_name ='White Lions of Chrace'), 'White Lion', '5', 5, 4, 4, 3, 1, 5, '1', 8, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='White Lions of Chrace'), 'Guardian', '5', 5, 4, 4, 3, 1, 5, '2', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Swordmasters Of Hoeth'), 'Swordmaster', '5', 6, 4, 3, 3, 1, 5, '2', 8, 'Infantry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Swordmasters Of Hoeth'), 'Bladelord', '5', 6, 4, 3, 3, 1, 5, '3', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Shadow Warriors'), 'Shadow Warrior', '5', 5, 5, 3, 3, 1, 5, '1', 8, 'Infantry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Shadow Warriors'), 'Shadow-walker', '5', 5, 5, 3, 3, 1, 5, '2', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Phoenix Guard'), 'Phoenix Guard', '5', 5, 4, 3, 3, 1, 6, '1', 9, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Phoenix Guard'), 'Keeper of the Flame', '5', 5, 4, 3, 3, 1, 6, '2', 9, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Dragon Princes of Caledor'), 'Dragon Prince', '5', 5, 4, 3, 3, 1, 6, '2', 9, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Dragon Princes of Caledor'), 'Drakemaster', '5', 5, 4, 3, 3, 1, 6, '3', 9, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Dragon Princes of Caledor'), 'Elven Steed', '9', 3, 0, 3, 3, 1, 4, '1', 5, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Lothern Skycutter'), 'Lothern Skycutter', null, null, null, 5, 4, 4, null, null, null, 'Chariot(Armour Save 4+)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Lothern Skycutter'), 'Sea Guard Crew', null, 4, 4, 3, null, null, 5, '1', 8, null, 3),
    ((SELECT unit_id from units WHERE unit_name ='Lothern Skycutter'), 'Swiftfeather Roc', '2', 5, null, 4, null, null, 4, '2', null, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Tiranoc Chariot'), 'Tiranoc Chariot', null, null, null, 5, 4, 4, null, null, null, 'Chariot(Armour Save 5+)', 3),
    ((SELECT unit_id from units WHERE unit_name ='Tiranoc Chariot'), 'Tiranoc Charioteer', null, 4, 4, 3, null, null, 5, '1', 8, null, 2),
    ((SELECT unit_id from units WHERE unit_name ='Tiranoc Chariot'), 'Elven Steed', '9', 3, null, 3, null, null, 4, '1', null, null, 2),
    ((SELECT unit_id from units WHERE unit_name ='Eagle Claw Bolt Thrower'), 'Eagle Claw Bolt Thrower', null, null, null, null, 7, 2, null, null, null, 'War Machine(Bolt Thrower)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Eagle Claw Bolt Thrower'), 'Sea Guard Crew', '5', 4, 4, 3, 3, 1, 5, '1', 8, null, 2),
    ((SELECT unit_id from units WHERE unit_name ='Great Eagles'), 'Great Eagle', '2', 5, 0, 4, 4, 3, 4, '2', 8, 'Monstrous Beast', 10),
    ((SELECT unit_id from units WHERE unit_name ='Flamespyre Phoenix'), 'Flamespyre Phoenix', '2', 5, 0, 5, 5, 5, 4, '3', 8, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Frostheart Phoenix'), 'Frostheart Phoenix', '2', 6, 0, 6, 6, 5, 3, '4', 9, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Sisters of Avelorn'), 'Sister of Avelorn', '5', 5, 5, 3, 3, 1, 5, '1', 8, 'Infantry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Sisters of Avelorn'), 'High Sister', '5', 5, 6, 3, 3, 1, 5, '1', 8, 'Infantry', 1);