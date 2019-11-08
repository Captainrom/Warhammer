package com.warhammer.docker.dockerspringboot.models;

public class Profile {

        private long profile_id;
        private long unit_id;
        private String profile_name;
        private int movement_allowance;
        private int weapon_skill;
        private int ballistic_skill;
        private int strength;
        private int toughness;
        private int wounds;
        private int initiative;
        private int attacks;
        private int leadership;
        private String troop_type;
        private int max_per_unit;

        public long getProfile_id() {
            return profile_id;
        }

        public void setProfile_id(long profile_id) {
            this.profile_id = profile_id;
        }

        public long getUnit_id() {
            return unit_id;
        }

        public void setUnit_id(long unit_id) {
            this.unit_id = unit_id;
        }

        public String getProfile_name() {
            return profile_name;
        }

        public void setProfile_name(String profile_name) {
            this.profile_name = profile_name;
        }

        public int getMovement_allowance() {
            return movement_allowance;
        }

        public void setMovement_allowance(int movement_allowance) {
            this.movement_allowance = movement_allowance;
        }

        public int getWepon_skill() {
            return weapon_skill;
        }

        public void setWepon_skill(int wepon_skill) {
            this.weapon_skill = wepon_skill;
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

        public int getAttacks() {
            return attacks;
        }

        public void setAttacks(int attacks) {
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

        @Override
        public String toString() {
            return "Uniname";
        }
    }