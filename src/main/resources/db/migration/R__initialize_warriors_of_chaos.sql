DELETE FROM profiles WHERE unit_id IN(SELECT unit_id FROM units WHERE faction = 'Warriors of Chaos');
DELETE FROM units WHERE faction = 'Warriors of Chaos';

INSERT INTO units (faction, unit_name, type, points_per_model, unit_size_min, unit_size_max) VALUES
    ('Warriors of Chaos', 'Archaon', 'Lords', 580, 1, 1),
    ('Warriors of Chaos', 'Galrauch' ,'Lords' , 510, 1, 1),
    ('Warriors of Chaos', 'Kholek Suneater','Lords' , 545, 1, 1),
    ('Warriors of Chaos', 'Sigvald the Magnificent','Lords' , 375, 1, 1),
    ('Warriors of Chaos', 'Valkia the Bloody','Lords' , 405, 1, 1),
    ('Warriors of Chaos', 'Vilitch the Curseling','Lords' , 380, 1, 1),
    ('Warriors of Chaos', 'Chaos Lord' ,'Lords' , 210, 1, 1),
    ('Warriors of Chaos', 'Chaos Sorcerer Lord','Lords' , 235, 1, 1),
    ('Warriors of Chaos', 'Daemon Prince','Lords' , 235, 1, 1),
    ('Warriors of Chaos', 'Wulfrik the Wanderer' ,'Heroes' , 180, 1, 1),
    ('Warriors of Chaos', 'Throgg','Heroes' , 195, 1, 1),
    ('Warriors of Chaos', 'Festus the Leechlord','Heroes' , 190, 1, 1),
    ('Warriors of Chaos', 'Scyla Anfingrimm','Heroes' , 105, 1, 1),
    ('Warriors of Chaos', 'Exalted Hero','Heroes' , 110, 1, 1),
    ('Warriors of Chaos', 'Chaos Sorcerer','Heroes' , 110, 1, 1),
    ('Warriors of Chaos', 'Chaos Warriors' ,'Core' , 14, 10, 100),
    ('Warriors of Chaos', 'Chaos Marauders','Core' , 6, 10, 100),
    ('Warriors of Chaos', 'Forsaken','Core' , 19, 5, 50),
    ('Warriors of Chaos', 'Chaos Warhounds','Core' , 6, 5, 50),
    ('Warriors of Chaos', 'Chaos Chariot','Core' , 110, 1, 1),
    ('Warriors of Chaos', 'Marauder Horsemen','Core' , 14, 5, 50),
    ('Warriors of Chaos', 'Hellstriders of Slaanesh','Special' , 19, 5, 50),
    ('Warriors of Chaos', 'Chosen','Special' , 18, 5, 50),
    ('Warriors of Chaos', 'Chaos Knights','Special' , 40, 5, 50),
    ('Warriors of Chaos', 'Chaos Ogres','Special' , 33, 3, 30),
    ('Warriors of Chaos', 'Dragon Ogres','Special' , 60, 3, 30),
    ('Warriors of Chaos', 'Chaos Trolls','Special' , 35, 3, 30),
    ('Warriors of Chaos', 'Chimera','Special' , 230, 1, 1),
    ('Warriors of Chaos', 'Gorebeast Chariot','Special' , 130, 1, 1),
    ('Warriors of Chaos', 'Chaos Warshrine','Special' , 125, 1, 1),
    ('Warriors of Chaos', 'Hellcannon','Rare' , 210, 1, 1),
    ('Warriors of Chaos', 'Dragon Ogre Shaggoth','Rare' , 215, 1, 1),
    ('Warriors of Chaos', 'Chaos Giant','Rare' , 200, 1, 1),
    ('Warriors of Chaos', 'Chaos Spawn','Rare' , 50, 1, 1),
    ('Warriors of Chaos', 'Skullcrushers of Khorne','Rare' , 75, 3, 30),
    ('Warriors of Chaos', 'Slaughterbrute','Rare' , 205, 1, 1),
    ('Warriors of Chaos', 'Mutalith Vortex Beast','Rare' , 240, 1, 1);

INSERT INTO profiles (unit_id, profile_name, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit) VALUES (
    (SELECT unit_id from units WHERE unit_name = 'Archaon'), 'Archaon', '4', 9, 5, 5, 5, 4, 7, '5', 10, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Archaon'), 'Dorghar', '8', 4, 0, 5, 5, 3, 3, '3', 9, 'Monstrous Beast', 1),
    ((SELECT unit_id from units WHERE unit_name ='Galrauch'), 'Galrauch', '6', 6, 6, 6, 6, 6, 6, '6', 9, 'Monster(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Kholek Suneater'), 'Kholek Suneater', '8', 8, 3, 8, 6, 8, 1, '7', 9, 'Monster(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Sigvald the Magnificent'), 'Sigvald the Magnificent', '4', 8, 3, 5, 5, 3, 8, '5', 10, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Valkia the Bloody'), 'Valkia the Bloody', '4', 9, 3, 5, 5, 3, 8, '6', 9, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Vilitch the Curseling'), 'Vilitch the Curseling', '4', 5, 3, 5, 4, 3, 5, '3', 8, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Lord'), 'Chaos Lord', '4', 8, 3, 5, 5, 3, 7, '5', 9, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Sorcerer Lord'), 'Chaos Sorcerer Lord', '4', 5, 3, 4, 4, 3, 5, '3', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Daemon Prince' AND faction = 'Warriors of Chaos'), 'Daemon Prince', '8', 9, 5, 6, 5, 4, 8, '5', 9, 'Monster(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Wulfrik the Wanderer'), 'Wulfrik the Wanderer', '4', 8, 3, 5, 4, 2, 7, '4', 8, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Throgg'), 'Throgg', '6', 5, 2, 6, 5, 4, 2, '5', 8, 'Monstrous Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Festus the Leechlord'), 'Festus the Leechlord', '4', 4, 2, 4, 4, 2, 2, '2', 8, 'Infantry(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Scyla Anfingrimm'), 'Scyla Anfingrimm', '6', 4, 0, 5, 5, 4, 3, 'D6+2', 10, 'Monstrous Beast(Special Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Exalted Hero'), 'Exalted Hero', '4', 7, 3, 5, 4, 2, 6, '4', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Sorcerer'), 'Chaos Sorcerer', '4', 5, 3, 4, 4, 2, 5, '2', 8, 'Infantry(Character)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Warriors'), 'Chaos Warrior', '4', 5, 3, 4, 4, 1, 5, '2', 8, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Warriors'), 'Aspiring Champion', '4', 5, 3, 4, 4, 1, 5, '3', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Marauders'), 'Chaos Marauder', '4', 4, 3, 3, 3, 1, 4, '1', 7, 'Infantry', 100),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Marauders'), 'Marauder Chieftain', '4', 4, 3, 3, 3, 1, 4, '2', 7, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Forsaken'), 'Forsaken', '6', 4, 0, 4, 4, 1, 4, 'D3', 8, 'Infantry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Warhounds' AND faction = 'Warriors of Chaos'), 'Chaos Warhound', '7', 4, 0, 3, 3, 1, 3, '1', 5, 'War Beast', 50),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Chariot'), 'Chaos Chariot', null, null, null, 5, 5, 4, null, null, null, 'Chariot(Armour Save 3+)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Chariot'), 'Chaos Charioteer', null, 5, 3, 4, null, null, 5, '2', 8, null, 2),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Chariot'), 'Chaos Steed', '8', 3, null, 4, null, null, 3, '1', null, null, 2),
    ((SELECT unit_id from units WHERE unit_name ='Marauder Horsemen'), 'Marauder Horseman','4', 4, 3, 3, 3, 1, 4, '1', 7, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Marauder Horsemen'), 'Marauder Horsemaster', '4', 4, 3, 3, 3, 1, 4, '2', 7, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Marauder Horsemen'), 'Warhorse', '8', 3, 0, 3, 3, 1, 3, '1', 5, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Hellstriders of Slaanesh'), 'Hellstrider', '4', 4, 3, 3, 3, 1, 5, '1', 7, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Hellstriders of Slaanesh'), 'Hellreaver', '4', 4, 3, 3, 3, 1, 5, '2', 7, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Hellstriders of Slaanesh'), 'Steed of Slaanesh', '10', 3, 0, 3, 3, 1, 5, '1', 7, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Chosen'), 'Chosen', '4', 6, 3, 4, 4, 1, 5, '2', 8, 'Infantry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Chosen'), 'Chosen Champion', '4', 6, 3, 4, 4, 1, 5, '3', 8, 'Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Knights'), 'Chaos Knight', '4', 5, 3, 4, 4, 1, 5, '2', 8, 'Cavalry', 50),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Knights'), 'Doom Knight', '4', 5, 3, 4, 4, 1, 5, '3', 8, 'Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Knights'), 'Chaos Steed', '8', 3, 0, 4, 3, 1, 3, '1', 5, null, 50),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Ogres'), 'Chaos Ogre', '6', 3, 2, 4, 4, 3, 2, '3', 7, 'Monstrous Infantry', 30),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Ogres'), 'Ogre Mutant', '6', 3, 2, 4, 4, 3, 2, '4', 7, 'Monstrous Infantry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Dragon Ogres'), 'Dragon Ogre', '7', 4, 2, 5, 4, 4, 2, '3', 8, 'Monstrous Beast', 30),
    ((SELECT unit_id from units WHERE unit_name ='Dragon Ogres'), 'Dragon Ogre Shartak', '7', 4, 2, 5, 4, 4, 2, '4', 8, 'Monstrous Beast', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Trolls'), 'Chaos Troll', '6', 3, 1, 5, 4, 3, 1, '3', 4, 'Monstrous Infantry', 30),
    ((SELECT unit_id from units WHERE unit_name ='Chimera'), 'Chimera', '6', 4, 0, 6, 5, 4, 2, 6, 5, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Gorebeast Chariot'), 'Gorebeast Chariot', null, null, null, 5, 6, 5, null, null, null, 'Chariot(Armour Save 3+)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Gorebeast Chariot'), 'Chaos Charioteer', null, 5, 3, 4, null, null, 5, '2', 8, null, 2),
    ((SELECT unit_id from units WHERE unit_name ='Gorebeast Chariot'), 'Gorebeast', '6', 4, null, 5, null, null, 2, 3, null, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Warshrine'), 'Chaos Warshrine', null, null, null, null, 5, 5, null, null, null, 'Chariot(Armour Save 4+)', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Warshrine'), 'Chaos Shrinemaster', null, 5, 3, 4, null, null, 5, '2', 8, null, 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Warshrine'), 'Chaos Shrine Bearers', '6', 3, 3, 4, null, null, 2, 'D6+2', null, null, 2),
    ((SELECT unit_id from units WHERE unit_name ='Hellcannon' AND faction = 'Warriors of Chaos'), 'Hellcannon', '3', 4, 3, 5, 6, 5, 1, '5', 4, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Hellcannon' AND faction = 'Warriors of Chaos'), 'Chaos Dwarf Handlers', '3', 4, 3, 3, 4, 1, 2, '1', 9, null, 3),
    ((SELECT unit_id from units WHERE unit_name ='Dragon Ogre Shaggoth'), 'Dragon Ogre Shaggoth', '7', 6, 3, 6, 5, 6, 4, '5', 9, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Giant'), 'Chaos Giant', '6', 3, 3, 6, 5, 6, 3, 'Special', 10, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Chaos Spawn' AND faction = 'Warriors of Chaos'), 'Chaos Spawn', '2D6', 3, 0, 4, 5, 3, 2, 'D6+1', 10, 'Monstrous Beast', 1),
    ((SELECT unit_id from units WHERE unit_name ='Skullcrushers of Khorne'), 'Skullcrusher', '4', 5, 3, 4, 4, 1, 5, '2', 8, 'Monstrous Cavalry', 30),
    ((SELECT unit_id from units WHERE unit_name ='Skullcrushers of Khorne'), 'Skullhunter', '4', 5, 3, 4, 4, 1, 5, '3', 8, 'Monstrous Cavalry', 1),
    ((SELECT unit_id from units WHERE unit_name ='Skullcrushers of Khorne'), 'Juggernaut of Khorne', '7', 5, 0, 5, 4, 3, 2, '3', 7, null, 30),
    ((SELECT unit_id from units WHERE unit_name ='Slaughterbrute'), 'Slaughterbrute', '6', 3, 0, 7, 5, 5, 3, '4', 5, 'Monster', 1),
    ((SELECT unit_id from units WHERE unit_name ='Mutalith Vortex Beast'), 'Mutalith Vortex Beast', '6', 3, 0, 5, 5, 5, 3, 'D6+2', 8, 'Monster', 1);
