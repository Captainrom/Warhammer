package com.warhammer.docker.dockerspringboot.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class UnitDto {
    @JsonIgnore
    private Integer unit_id;
    private String profile_name;
    private String unit_name;
    private String type;
    private long points_per_model;
    private long unit_size_min;
    private long unit_size_max;
    private int movement_allowance;
    private String weapon_skill;
    private int ballistic_skill;
    private int strength;
    private int toughness;
    private int wounds;
    private int initiative;
    private String attacks;
    private int leadership;
    private String troop_type;
    private int max_per_unit;

    public Integer getUnit_id() {
        return unit_id;
    }

    public void setUnit_id(Integer unit_id) {
        this.unit_id = unit_id;
    }

    public String getProfile_name() {
        return profile_name;
    }

    public void setProfile_name(String profile_name) {
        this.profile_name = profile_name;
    }

    public String getUnit_name() {
        return unit_name;
    }

    public void setUnit_name(String unit_name) {
        this.unit_name = unit_name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public long getPoints_per_model() {
        return points_per_model;
    }

    public void setPoints_per_model(long points_per_model) {
        this.points_per_model = points_per_model;
    }

    public long getUnit_size_min() {
        return unit_size_min;
    }

    public void setUnit_size_min(long unit_size_min) {
        this.unit_size_min = unit_size_min;
    }

    public long getUnit_size_max() {
        return unit_size_max;
    }

    public void setUnit_size_max(long unit_size_max) {
        this.unit_size_max = unit_size_max;
    }

    public int getMovement_allowance() {
        return movement_allowance;
    }

    public void setMovement_allowance(int movement_allowance) {
        this.movement_allowance = movement_allowance;
    }

    public String getWeapon_skill() {
        return weapon_skill;
    }

    public void setWeapon_skill(String weapon_skill) {
        this.weapon_skill = weapon_skill;
    }

    public int getBallistic_skill() {
        return ballistic_skill;
    }

    public void setBallistic_skill(int ballistic_skill) {
        this.ballistic_skill = ballistic_skill;
    }

    public int getStrength() {
        return strength;
    }

    public void setStrength(int strength) {
        this.strength = strength;
    }

    public int getToughness() {
        return toughness;
    }

    public void setToughness(int toughness) {
        this.toughness = toughness;
    }

    public int getWounds() {
        return wounds;
    }

    public void setWounds(int wounds) {
        this.wounds = wounds;
    }

    public int getInitiative() {
        return initiative;
    }

    public void setInitiative(int initiative) {
        this.initiative = initiative;
    }

    public String getAttacks() {
        return attacks;
    }

    public void setAttacks(String attacks) {
        this.attacks = attacks;
    }

    public int getLeadership() {
        return leadership;
    }

    public void setLeadership(int leadership) {
        this.leadership = leadership;
    }

    public String getTroop_type() {
        return troop_type;
    }

    public void setTroop_type(String troop_type) {
        this.troop_type = troop_type;
    }

    public int getMax_per_unit() {
        return max_per_unit;
    }

    public void setMax_per_unit(int max_per_unit) {
        this.max_per_unit = max_per_unit;
    }
}
