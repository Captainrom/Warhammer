package com.warhammer.docker.dockerspringboot.controllers;

import com.warhammer.docker.dockerspringboot.models.Unit;
import com.warhammer.docker.dockerspringboot.repository.TestRepo;
import com.warhammer.docker.dockerspringboot.services.FactionsServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/factions")
public class FactionController {
    FactionsServices factionsServices;
    TestRepo testRepo;

    @Autowired
    public FactionController(FactionsServices factionsServices,  TestRepo testRepo){
        this.factionsServices = factionsServices;
        this.testRepo = testRepo;
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
    public Map<String, Object> getUnit(@PathVariable String faction, @PathVariable String unit) {
        return factionsServices.getUnit(faction, unit);
    }

    @GetMapping("/test")
    public List<Unit> getTest() {
        return testRepo.findAll();
    }

    @GetMapping("/test2")
    public List<Unit> getTest2() {
        return factionsServices.getUnits();
    }
}
