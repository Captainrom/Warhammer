package com.warhammer.docker.dockerspringboot.services;

import com.warhammer.docker.dockerspringboot.models.CombatResult;
import com.warhammer.docker.dockerspringboot.models.CombatUnit;
import com.warhammer.docker.dockerspringboot.models.UnitDto;
import com.warhammer.docker.dockerspringboot.repository.FactionsRepository;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;

@RunWith(MockitoJUnitRunner.class)
public class CombatServiceTest {

    @Mock
    CombatService combatService;

    @InjectMocks
    FactionsRepository factionsRepository;

    @Test
    public void basicCombat() {
        CombatUnit combatUnit = new CombatUnit();
        combatUnit.setUnitId(2);


        UnitDto attackingUnit = new UnitDto();
        attackingUnit.setInitiative(8);
        attackingUnit.setWeapon_skill("8");
        attackingUnit.setAttacks("8");
        attackingUnit.setLeadership(5);
        attackingUnit.setStrength(5);
        attackingUnit.setToughness(6);

        UnitDto defendingUnit  = new UnitDto();
        defendingUnit.setInitiative(7);
        defendingUnit.setWeapon_skill("8");
        defendingUnit.setAttacks("6");
        defendingUnit.setLeadership(5);
        defendingUnit.setStrength(5);
        defendingUnit.setToughness(6);

        Mockito.when(factionsRepository.getUnit(Mockito.anyInt())).thenReturn(attackingUnit);
        Mockito.when(factionsRepository.getUnit(Mockito.anyInt())).thenReturn(defendingUnit);

        CombatResult combatResult = combatService.resolveCombat(combatUnit, combatUnit);

        Assertions.assertNotNull(combatResult);
    }


}
