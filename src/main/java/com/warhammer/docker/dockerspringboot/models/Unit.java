package com.warhammer.docker.dockerspringboot.models;

public class Unit {
    private long unitID;
    private String race;
    private String name;
    private long pointsPerModel;
    private long unitSizeMin;
    private long unitSizeMax;

    public long getUnitID() {
        return unitID;
    }

    public void setUnitID(long value) {
        this.unitID = value;
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
        return pointsPerModel;
    }

    public void setPointsPerModel(long value) {
        this.pointsPerModel = value;
    }

    public long getUnitSizeMin() {
        return unitSizeMin;
    }

    public void setUnitSizeMin(long value) {
        this.unitSizeMin = value;
    }

    public long getUnitSizeMax() {
        return unitSizeMax;
    }

    public void setUnitSizeMax(long value) {
        this.unitSizeMax = value;
    }

    @Override
    public String toString() {
        return "Uniname";
    }
}
