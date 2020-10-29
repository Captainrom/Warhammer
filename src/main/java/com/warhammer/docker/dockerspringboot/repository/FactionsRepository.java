package com.warhammer.docker.dockerspringboot.repository;

import com.warhammer.docker.dockerspringboot.models.Unit;
import com.warhammer.docker.dockerspringboot.models.UnitDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class FactionsRepository {
    private final Sql2o sql2o;

    @Autowired
    public FactionsRepository(Sql2o sql2o) {
        this.sql2o = sql2o;
    }

    public List<String> getFactions() {
        String sql = "SELECT DISTINCT faction FROM units ORDER BY faction ASC";

        try (Connection con = sql2o.open()) {
            return con.createQuery(sql).executeAndFetch(String.class);
        }
    }

    public List<Unit> getFaction(String faction) {
        String sql = "SELECT * FROM units WHERE faction = :faction ORDER BY unit_id ASC";

        try (Connection con = sql2o.open()) {
            return con.createQuery(sql)
                    .addParameter("faction", faction)
                    .executeAndFetch(Unit.class);
        }
    }

    public List<UnitDto> getUnit(String faction, String unit) {
        String sql = "SELECT profile_name, unit_name, type, points_per_model, unit_size_min, unit_size_max, movement_allowance, weapon_skill, ballistic_skill, strength, toughness, wounds, initiative, attacks, leadership, troop_type, max_per_unit FROM units INNER JOIN profiles ON (units.unit_id = profiles.unit_id) WHERE faction = :faction AND units.unit_name = :unit ORDER BY unit_name ASC";
        try (Connection con = sql2o.open()) {
            return con.createQuery(sql)
                    .addParameter("faction", faction)
                    .addParameter("unit", unit)
                    .executeAndFetch(UnitDto.class);
        }
    }
}
