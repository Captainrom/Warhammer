package com.warhammer.docker.dockerspringboot.services;

import com.warhammer.docker.dockerspringboot.models.Profile;
import com.warhammer.docker.dockerspringboot.repository.ProfileRepository;
import com.warhammer.docker.dockerspringboot.repository.UnitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProfileServices {

    ProfileRepository profileRepository;

    public ProfileServices(ProfileRepository profileRepository){

        this.profileRepository = profileRepository;

    }


    public Profile Combat(){
        //Profile combatUnit1 = profileRepository.getProfile("Savage Orc Boar Boy");
        Profile CombatUnit2 = profileRepository.getProfile("High Helm");
        Profile winner = CombatUnit2;
        return winner;
    }
}
