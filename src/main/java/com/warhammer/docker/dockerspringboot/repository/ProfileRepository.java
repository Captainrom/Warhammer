package com.warhammer.docker.dockerspringboot.repository;

import com.warhammer.docker.dockerspringboot.configuration.DatabaseContext;
import com.warhammer.docker.dockerspringboot.models.Profile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class ProfileRepository {

    Sql2o sql2o;

    @Autowired
    public ProfileRepository(Sql2o sql2o){
        this.sql2o = sql2o;
    }


    public Profile getProfile(String name){
        String sql = "SELECT * FROM profiles WHERE profile_name = :name";

        try(Connection con = sql2o.open()) {
            return con.createQuery(sql).addParameter("name",name).executeAndFetch(Profile.class).get(0);
        }
    }
}
