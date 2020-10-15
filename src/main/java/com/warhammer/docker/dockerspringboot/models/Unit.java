package com.warhammer.docker.dockerspringboot.models;

public class Unit {
    private long unit_id;
    private String race;
    private String name;
    private long points_per_model;
    private long unit_size_min;
    private long unit_size_max;

    public long getUnitID() {
        return unit_id;
    }

    public void setUnitID(long value) {
        this.unit_id = value;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String value) {
        this.race = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String value) {
        this.name = value;
    }

    public long getPointsPerModel() {
        return points_per_model;
    }

    public void setPointsPerModel(long value) {
        this.points_per_model = value;
    }

    public long getUnitSizeMin() {
        return unit_size_min;
    }

    public void setUnitSizeMin(long value) {
        this.unit_size_min = value;
    }

    public long getUnitSizeMax() {
        return unit_size_max;
    }

    public void setUnitSizeMax(long value) {
        this.unit_size_max = value;
    }
}
