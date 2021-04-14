package com.warhammer.docker.dockerspringboot.models;


import java.util.List;

public class Combat {
    public List<CombatUnit> getCombatUnits() {
        return combatUnits;
    }

    public void setCombatUnits(List<CombatUnit> combatUnits) {
        this.combatUnits = combatUnits;
    }

    private List<CombatUnit> combatUnits;


}
