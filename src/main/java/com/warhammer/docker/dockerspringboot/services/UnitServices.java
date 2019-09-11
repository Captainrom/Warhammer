package com.warhammer.docker.dockerspringboot.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UnitServices {

    JdbcTemplate jdbcTemplate;

    @Autowired
    public UnitServices(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }
    @Transactional
    public Long getNumberOfUnits(){

        return jdbcTemplate.queryForObject("Select COUNT(*) From units", Long.class);
    }


}
