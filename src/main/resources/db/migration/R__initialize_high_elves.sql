DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE race = 'High Elves');
DELETE FROM units WHERE race = 'High Elves';

INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (27, 'High Elves', 'Archers', 10, 10, null);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (28, 'High Elves', 'Lothern Sea Guard', 11, 10, null);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (29, 'High Elves', 'Silver Helms', 21, 5, null);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (30, 'High Elves', 'Ellyrian Reavers', 16, 5, null);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (31, 'High Elves', 'Lion Chariot of Chrace', 120, 1, 1);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (26, 'High Elves', 'Spearmen', 9, 10, null);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (32, 'High Elves', 'White Lions of Chrace', 13, 10, null);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (33, 'High Elves', 'Swordmasters Of Hoeth', 13, 5, null);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (34, 'High Elves', 'Shadow Warriors', 14, 5, null);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (35, 'High Elves', 'Phoenix Guard', 15, 10, null);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (36, 'High Elves', 'Dragon Princes of Caledor', 29, 5, null);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (37, 'High Elves', 'Lothern Skycutter', 95, 1, 1);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (38, 'High Elves', 'Tiranoc Chariot', 70, 1, 3);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (39, 'High Elves', 'Eagle Claw Bolt Thrower', 70, 1, 1);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (40, 'High Elves', 'Great Eagles', 50, 1, null);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (41, 'High Elves', 'Flamespyre Phoenix', 225, 1, 1);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (42, 'High Elves', 'Frostheart Phoenix', 240, 1, 1);
INSERT INTO warhammer.units (unit_id, race, name, points_per_model, unit_size_min, unit_size_max) VALUES (43, 'High Elves', 'Sisters of Avelorn', 14, 5, null);

INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (59, 26, 'Spearman', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (60, 26, 'Sentinel', '5', 4, 4, 3, 3, 1, 5, '2', 8, 'Infantry', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (61, 27, 'Archer', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (62, 27, 'Hawkeye', '5', 4, 5, 3, 3, 1, 5, '1', 8, 'Infantry', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (63, 28, 'Sea Guard', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Infantry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (64, 28, 'Sea Master', '5', 4, 4, 3, 3, 1, 5, '2', 8, 'Infantry', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (65, 29, 'Silver Helm', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Cavalry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (66, 29, 'High Helm', '5', 4, 4, 3, 3, 1, 5, '2', 8, 'Cavalry', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (67, 29, 'Elven Steed', '9', 3, 0, 3, 3, 1, 4, '1', 5, 'NULL', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (68, 30, 'Ellyrian Reaver', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'Cavalry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (69, 30, 'Harbinger', '5', 4, 5, 3, 3, 1, 5, '2', 8, 'Cavalry', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (70, 30, 'Elven Steed', '9', 3, 0, 3, 3, 1, 4, '1', 5, 'NULL', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (71, 31, 'Lion Chariot', 'NULL', null, null, 5, 4, 4, null, 'NULL', null, 'Chariot (Armour Save 4+)', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (72, 31, 'Lion Charioteer', 'NULL', 5, 4, 4, null, null, 5, '1', 8, 'NULL', 2);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (73, 31, 'War Lion', '8', 5, null, 5, null, null, 4, '2', null, 'NULL', 2);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (74, 32, 'White Lion', '5', 5, 4, 4, 3, 1, 5, '1', 8, 'Infantry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (75, 32, 'Guardian', '5', 5, 4, 4, 3, 1, 5, '2', 8, 'Infantry', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (76, 33, 'Swordmaster', '5', 6, 4, 3, 3, 1, 5, '2', 8, 'Infantry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (77, 33, 'Bladelord', '5', 6, 4, 3, 3, 1, 5, '3', 8, 'Infantry', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (78, 34, 'Shadow Warrior', '5', 5, 5, 3, 3, 1, 5, '1', 8, 'Infantry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (79, 34, 'Shadow-walker', '5', 5, 5, 3, 3, 1, 5, '2', 8, 'Infantry', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (80, 35, 'Phoenix Guard', '5', 5, 4, 3, 3, 1, 6, '1', 9, 'Infantry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (81, 35, 'Keeper of the Flame', '5', 5, 4, 3, 3, 1, 6, '2', 9, 'Infantry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (82, 36, 'Dragon Prince', '5', 5, 4, 3, 3, 1, 6, '2', 9, 'Cavalry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (83, 36, 'Drakemaster', '5', 5, 4, 3, 3, 1, 6, '3', 9, 'Cavalry', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (84, 36, 'Elven Steed', '9', 3, 0, 3, 3, 1, 4, '1', 5, 'NULL', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (85, 37, 'Lothern Skycutter', 'NULL', null, null, 5, 4, 4, null, 'NULL', null, 'Chariot(Armour Save 4+)', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (86, 37, 'Sea Guard Crew', 'NULL', 4, 4, 3, null, null, 5, '1', 8, 'NULL', 3);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (87, 37, 'Swiftfeather Roc', '2', 5, null, 4, null, null, 4, '2', null, 'NULL', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (88, 38, 'Tiranoc Chariot', 'NULL', null, null, 5, 4, 4, null, 'NULL', null, 'Chariot(Armour Save 5+)', 3);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (89, 38, 'Tiranoc Charioteer', 'NULL', 4, 4, 3, null, null, 5, '1', 8, 'NULL', 2);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (90, 38, 'Elven Steed', '9', 3, null, 3, null, null, 4, '1', null, 'NULL', 2);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (91, 39, 'Eagle Claw Bolt Thrower', 'NULL', null, null, null, 2, 2, null, 'NULL', null, 'War Machine(Bolt Thrower)', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (92, 39, 'Sea Guard Crew', '5', 4, 4, 3, 3, 1, 5, '1', 8, 'NULL', 2);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (93, 40, 'Great Eagles', '2', 5, 0, 4, 4, 3, 4, '2', 8, 'Monstrous Beast', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (94, 41, 'Flamespyre Phoenix', '2', 5, 0, 5, 5, 5, 4, '3', 8, 'Monster', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (95, 42, 'Frostheart Phoenix', '2', 6, 0, 6, 6, 5, 3, '4', 9, 'Monster', 1);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (96, 43, 'Sister of Avelorn', '5', 5, 5, 3, 3, 1, 5, '1', 8, 'Infantry', null);
INSERT INTO warhammer.profiles (profile_id, unit_id, profile_name, movement_allowance, wepon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (97, 43, 'High Sister', '5', 5, 6, 3, 3, 1, 5, '1', 8, 'Infantry', null);