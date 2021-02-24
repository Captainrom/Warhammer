package com.warhammer.docker.dockerspringboot.services;

import com.warhammer.docker.dockerspringboot.models.Unit;
import com.warhammer.docker.dockerspringboot.models.UnitDto;
import com.warhammer.docker.dockerspringboot.repository.FactionsRepository;
import com.warhammer.docker.dockerspringboot.services.mapper.OptionDtosToOptions;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class FactionsServices {
    FactionsRepository factionsRepository;

    public FactionsServices(FactionsRepository factionsRepository) {
        this.factionsRepository = factionsRepository;
    }

    public List<String> getFactions() {
        return factionsRepository.getFactions();
    }

    public List<Unit> getFaction(String faction) {
        return factionsRepository.getFaction(faction);
    }

    public Map<String, Object> getUnit(String faction, String unit) {
        List<UnitDto> units = factionsRepository.getUnit(faction, unit);

        HashMap<String, Object> result = new HashMap<>();
        result.put("profiles", units);

        if (!units.isEmpty()) {
            result.put("options", OptionDtosToOptions.map(factionsRepository.getOptions(units.get(0).getUnit_id())));
        }

        return result;
    }
}
