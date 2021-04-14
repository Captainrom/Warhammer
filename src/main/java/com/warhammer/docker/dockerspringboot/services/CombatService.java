package com.warhammer.docker.dockerspringboot.services;

import ch.qos.logback.classic.Logger;
import com.warhammer.docker.dockerspringboot.models.CombatResult;
import com.warhammer.docker.dockerspringboot.models.CombatUnit;
import com.warhammer.docker.dockerspringboot.models.Unit;
import com.warhammer.docker.dockerspringboot.models.UnitDto;
import com.warhammer.docker.dockerspringboot.repository.FactionsRepository;
import com.warhammer.docker.dockerspringboot.services.mapper.OptionDtosToOptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CombatService {

    @Autowired
    public CombatService(FactionsRepository factionsRepository) {
        this.factionsRepository = factionsRepository;
    }

    FactionsRepository factionsRepository;

    public CombatResult resolveCombat (CombatUnit combatUnit1, CombatUnit combatUnit2) {
        factionsRepository.getUnit(combatUnit1.getUnitId());
        factionsRepository.getUnit(combatUnit2.getUnitId());


        CombatResult result = new CombatResult();

        result.setUnit_id(combatUnit1.getUnitId());
        result.setUnit_size(combatUnit1.getUnitSize());

/*
        List<UnitDto> unit1 = factionsRepository.getUnit(combatUnit1.getUnitId());
        System.out.println("Testing TEsting");
        System.out.println(unit1);
        System.out.println("HIPHUPPERR");
*/
        return result;
    }
}
