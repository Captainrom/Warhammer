DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE race = 'High Elves');
DELETE FROM units WHERE race = 'High Elves';

INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Spearmen', 9, 10, null);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Archers', 10, 10, null);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Lothern Sea Guard', 11, 10, null);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Silver Helms', 21, 5, null);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Ellyrian Reavers', 16, 5, null);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Lion Chariot of Chrace', 120, 1, 1);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'White Lions of Chrace', 13, 10, null);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Swordmasters Of Hoeth', 13, 5, null);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Shadow Warriors', 14, 5, null);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Phoenix Guard', 15, 10, null);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Dragon Princes of Caledor', 29, 5, null);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Lothern Skycutter', 95, 1, 1);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Tiranoc Chariot', 70, 1, 3);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Eagle Claw Bolt Thrower', 70, 1, 1);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Great Eagles', 50, 1, null);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Flamespyre Phoenix', 225, 1, 1);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Frostheart Phoenix', 240, 1, 1);
INSERT INTO units (race, name, points_per_model, unit_size_min, unit_size_max) VALUES ('High Elves', 'Sisters of Avelorn', 14, 5, null);

INSERT INTO profiles (unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
    ((SELECT unit_id from units WHERE name='Spearmen'), 'Spearman', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', null),
    ((SELECT unit_id from units WHERE name='Spearmen'), 'Sentinel', '5', 4, 4, 3, 3, 1, 5, '2', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE name='Archers'), 'Archer', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', null),
    ((SELECT unit_id from units WHERE name='Archers'), 'Hawkeye', '5', 4, 5, 3, 3, 1, 5, '1', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE name='Lothern Sea Guard'), 'Sea Guard', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', null),
    ((SELECT unit_id from units WHERE name='Lothern Sea Guard'), 'Sea Master', '5', 4, 4, 3, 3, 1, 5, '2', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE name='Silver Helms'), 'Silver Helm', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Cavalry', null),
    ((SELECT unit_id from units WHERE name='Silver Helms'), 'High Helm', '5', 4, 4, 3, 3, 1, 5, '2', 8, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE name='Silver Helms'), 'Elven Steed', '9', 3, 0, 3, 3, 1, 4, '1', 5, 'NULL', null),
    ((SELECT unit_id from units WHERE name='Ellyrian Reavers'), 'Ellyrian Reaver', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Cavalry', null),
    ((SELECT unit_id from units WHERE name='Ellyrian Reavers'), 'Harbinger', '5', 4, 5, 3, 3, 1, 5, '2', 8, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE name='Ellyrian Reavers'), 'Elven Steed', '9', 3, 0, 3, 3, 1, 4, '1', 5, 'NULL', null),
    ((SELECT unit_id from units WHERE name='Lion Chariot of Chrace'), 'Lion Chariot', 'NULL', null, null, 5, 4, 4, null, 'NULL', null, 'Chariot (Armour Save 4+)', 1),
    ((SELECT unit_id from units WHERE name='Lion Chariot of Chrace'), 'Lion Charioteer', 'NULL', 5, 4, 4, null, null, 5, '1', 8, 'NULL', 2),
    ((SELECT unit_id from units WHERE name='Lion Chariot of Chrace'), 'War Lion', '8', 5, null, 5, null, null, 4, '2', null, 'NULL', 2),
    ((SELECT unit_id from units WHERE name='White Lions of Chrace'), 'White Lion', '5', 5, 4, 4, 3, 1, 5, '1', 8, 'Infantry', null),
    ((SELECT unit_id from units WHERE name='White Lions of Chrace'), 'Guardian', '5', 5, 4, 4, 3, 1, 5, '2', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE name='Swordmasters Of Hoeth'), 'Swordmaster', '5', 6, 4, 3, 3, 1, 5, '2', 8, 'Infantry', null),
    ((SELECT unit_id from units WHERE name='Swordmasters Of Hoeth'), 'Bladelord', '5', 6, 4, 3, 3, 1, 5, '3', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE name='Shadow Warriors'), 'Shadow Warrior', '5', 5, 5, 3, 3, 1, 5, '1', 8, 'Infantry', null),
    ((SELECT unit_id from units WHERE name='Shadow Warriors'), 'Shadow-walker', '5', 5, 5, 3, 3, 1, 5, '2', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE name='Phoenix Guard'), 'Phoenix Guard', '5', 5, 4, 3, 3, 1, 6, '1', 9, 'Infantry', null),
    ((SELECT unit_id from units WHERE name='Phoenix Guard'), 'Keeper of the Flame', '5', 5, 4, 3, 3, 1, 6, '2', 9, 'Infantry', null),
    ((SELECT unit_id from units WHERE name='Dragon Princes of Caledor'), 'Dragon Prince', '5', 5, 4, 3, 3, 1, 6, '2', 9, 'Cavalry', null),
    ((SELECT unit_id from units WHERE name='Dragon Princes of Caledor'), 'Drakemaster', '5', 5, 4, 3, 3, 1, 6, '3', 9, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE name='Dragon Princes of Caledor'), 'Elven Steed', '9', 3, 0, 3, 3, 1, 4, '1', 5, 'NULL', null),
    ((SELECT unit_id from units WHERE name='Lothern Skycutter'), 'Lothern Skycutter', 'NULL', null, null, 5, 4, 4, null, 'NULL', null, 'Chariot(Armour Save 4+)', 1),
    ((SELECT unit_id from units WHERE name='Lothern Skycutter'), 'Sea Guard Crew', 'NULL', 4, 4, 3, null, null, 5, '1', 8, 'NULL', 3),
    ((SELECT unit_id from units WHERE name='Lothern Skycutter'), 'Swiftfeather Roc', '2', 5, null, 4, null, null, 4, '2', null, 'NULL', 1),
    ((SELECT unit_id from units WHERE name='Tiranoc Chariot'), 'Tiranoc Chariot', 'NULL', null, null, 5, 4, 4, null, 'NULL', null, 'Chariot(Armour Save 5+)', 3),
    ((SELECT unit_id from units WHERE name='Tiranoc Chariot'), 'Tiranoc Charioteer', 'NULL', 4, 4, 3, null, null, 5, '1', 8, 'NULL', 2),
    ((SELECT unit_id from units WHERE name='Tiranoc Chariot'), 'Elven Steed', '9', 3, null, 3, null, null, 4, '1', null, 'NULL', 2),
    ((SELECT unit_id from units WHERE name='Eagle Claw Bolt Thrower'), 'Eagle Claw Bolt Thrower', 'NULL', null, null, null, 2, 2, null, 'NULL', null, 'War Machine(Bolt Thrower)', 1),
    ((SELECT unit_id from units WHERE name='Eagle Claw Bolt Thrower'), 'Sea Guard Crew', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'NULL', 2),
    ((SELECT unit_id from units WHERE name='Great Eagles'), 'Great Eagles', '2', 5, 0, 4, 4, 3, 4, '2', 8, 'Monstrous Beast', null),
    ((SELECT unit_id from units WHERE name='Flamespyre Phoenix'), 'Flamespyre Phoenix', '2', 5, 0, 5, 5, 5, 4, '3', 8, 'Monster', 1),
    ((SELECT unit_id from units WHERE name='Frostheart Phoenix'), 'Frostheart Phoenix', '2', 6, 0, 6, 6, 5, 3, '4', 9, 'Monster', 1),
    ((SELECT unit_id from units WHERE name='Sisters of Avelorn'), 'Sister of Avelorn', '5', 5, 5, 3, 3, 1, 5, '1', 8, 'Infantry', null),
    ((SELECT unit_id from units WHERE name='Sisters of Avelorn'), 'High Sister', '5', 5, 6, 3, 3, 1, 5, '1', 8, 'Infantry', null));



