package com.warhammer.docker.dockerspringboot.services;

import com.warhammer.docker.dockerspringboot.models.Unit;
import com.warhammer.docker.dockerspringboot.models.UnitDto;
import com.warhammer.docker.dockerspringboot.repository.FactionsRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FactionsServices {
    FactionsRepository factionsRepository;

    public FactionsServices(FactionsRepository factionsRepository){
        this.factionsRepository = factionsRepository;
    }

    public List<String> getFactions(){
        return factionsRepository.getFactions();
    }

    public List<Unit> getFaction(String faction){
        return factionsRepository.getFaction(faction);
    }

    public List<UnitDto> getUnit(String faction, String unit) {
        return factionsRepository.getUnit(faction, unit);
    }
}
