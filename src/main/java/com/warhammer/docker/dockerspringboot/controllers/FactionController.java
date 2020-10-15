package com.warhammer.docker.dockerspringboot.controllers;

import com.warhammer.docker.dockerspringboot.models.Unit;
import com.warhammer.docker.dockerspringboot.models.UnitDto;
import com.warhammer.docker.dockerspringboot.services.FactionsServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/factions")
public class FactionController {
    FactionsServices factionsServices;

    @Autowired
    public FactionController(FactionsServices factionsServices){
        this.factionsServices = factionsServices;
    }

    @GetMapping()
    public List<String> getFactions() {
        return factionsServices.getFactions();
    }

    @GetMapping("/{faction}")
    public List<Unit> getFaction(@PathVariable String faction) {
        return factionsServices.getFaction(faction);
    }

    @GetMapping("/{faction}/{unit}")
    public List<UnitDto> getUnit(@PathVariable String faction, @PathVariable String unit) {
        return factionsServices.getUnit(faction, unit);
    }
}
