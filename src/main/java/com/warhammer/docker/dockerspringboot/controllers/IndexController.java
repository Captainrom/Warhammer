package com.warhammer.docker.dockerspringboot.controllers;

import com.warhammer.docker.dockerspringboot.models.Profile;
import com.warhammer.docker.dockerspringboot.repository.UnitRepository;
import com.warhammer.docker.dockerspringboot.services.ProfileServices;
import com.warhammer.docker.dockerspringboot.services.UnitServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class IndexController {

    ProfileServices profileServices;

    @Autowired
    public IndexController(ProfileServices profileServices){
        this.profileServices = profileServices;
    }

    @GetMapping
    public Profile hello() {


        return profileServices.Combat();
    }
}
