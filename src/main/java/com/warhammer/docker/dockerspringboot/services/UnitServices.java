package com.warhammer.docker.dockerspringboot.services;

import com.warhammer.docker.dockerspringboot.models.Unit;
import com.warhammer.docker.dockerspringboot.repository.UnitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UnitServices{

    UnitRepository unitRepository;

    public UnitServices(UnitRepository unitRepository){

       this.unitRepository = unitRepository;

    }


    public Unit Combat(){
        Unit combatUnit1 = unitRepository.getUnit("Swordmaster");
        Unit CombatUnit2 = unitRepository.getUnit("White Lion");
        Unit winner = CombatUnit2;
        System.out.println(combatUnit1.getName());
        return winner;
    }








}
