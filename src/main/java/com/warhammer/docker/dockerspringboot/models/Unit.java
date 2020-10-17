package com.warhammer.docker.dockerspringboot.models;

public class Unit {
    private long unit_id;
    private String faction;
    private String Unit_name;
    private String type;
    private long points_per_model;
    private long unit_size_min;
    private long unit_size_max;

    public long getUnitID() {
        return unit_id;
    }

    public void setUnitID(long value) {
        this.unit_id = value;
    }

    public String getFaction() {
        return faction;
    }

    public void setFaction(String value) {
        this.faction = value;
    }

    public String getUnitName() {
        return Unit_name;
    }

    public void setUnitName(String value) {
        this.Unit_name = value;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
