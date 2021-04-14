package com.warhammer.docker.dockerspringboot.controllers;

import com.warhammer.docker.dockerspringboot.models.Combat;
import com.warhammer.docker.dockerspringboot.models.CombatResult;
import com.warhammer.docker.dockerspringboot.models.CombatUnit;
import com.warhammer.docker.dockerspringboot.services.CombatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/combat")
public class CombatController {
    CombatService combatService;

    @Autowired
    public CombatController(CombatService combatService) {
        this.combatService = combatService;
    }

    @PostMapping()
    public CombatResult combat(@RequestBody Combat combat) {

        CombatUnit unit1 = combat.getCombatUnits().get(0);
        CombatUnit unit2 = combat.getCombatUnits().get(1);

        return combatService.resolveCombat(unit1, unit2);
    }
}
