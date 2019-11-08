package com.warhammer.docker.dockerspringboot.repository;

import com.warhammer.docker.dockerspringboot.models.Unit;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class UnitRepository {

    public List<Unit> getAllUnits(){
        String sql =
                "SELECT * FROM units";

        Sql2o sql2o = new Sql2o("spring.datasource.url=jdbc:mysql://localhost:32768/warhammer\n" +
                                                                        "spring.datasource.username=root\n" +
                                                                    "spring.datasource.password=nightGoblin");
        try(Connection con = sql2o.open()) {
            return con.createQuery(sql).executeAndFetch(Unit.class);
        }
    }

    public List<Long> getNumberOfUnits() {
        String sql =
                "SELECT COUNT(*) FROM units";

        Sql2o sql2o = new Sql2o("spring.datasource.url=jdbc:mysql://localhost:32768/warhammer\n" +
                "spring.datasource.username=root\n" +
                "spring.datasource.password=nightGoblin");
        try (Connection con = sql2o.open()) {
            return con.createQuery(sql).executeAndFetch(Long.class);
        }
    }

    public Unit getUnit(String name){
        String UnitName = name;
        String sql = "SELECT * FROM units WHERE name =" + name + "";

        Sql2o sql2o = new Sql2o("spring.datasource.url=jdbc:mysql://localhost:32768/warhammer\n" +
                "spring.datasource.username=root\n" +
                "spring.datasource.password=nightGoblin");
        try (Connection con = sql2o.open()) {
            return con.createQuery(sql).executeAndFetch(Unit.class).get(0);
        }
    }

}
