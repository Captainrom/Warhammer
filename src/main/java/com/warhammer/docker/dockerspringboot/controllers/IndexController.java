package com.warhammer.docker.dockerspringboot.controllers;

import com.warhammer.docker.dockerspringboot.services.UnitServices;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class IndexController {

    UnitServices unitServices;

    public IndexController(UnitServices unitServices){
        this.unitServices = unitServices;
    }

    @GetMapping
    public String hello() {
        return "totalUnits" + unitServices.getNumberOfUnits();
    }
}
