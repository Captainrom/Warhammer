package com.warhammer.docker.dockerspringboot.models;

import java.util.List;

public class CombatResult {

    private long unit_id;
    private int unit_size;

    public long getUnit_id() {
        return unit_id;
    }

    public void setUnit_id(long unit_id) {
        this.unit_id = unit_id;
    }

    public int getUnit_size() {
        return unit_size;
    }

    public void setUnit_size(int unit_size) {
        this.unit_size = unit_size;
    }
}

