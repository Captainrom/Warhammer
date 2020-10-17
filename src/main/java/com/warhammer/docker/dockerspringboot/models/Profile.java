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

        public long getProfileId() {
            return profile_id;
        }

        public void setProfileId(long profile_id) {
            this.profile_id = profile_id;
        }

        public long getUnitId() {
            return unit_id;
        }

        public void setUnitId(long unit_id) {
            this.unit_id = unit_id;
        }

        public String getProfileName() {
            return profile_name;
        }

        public void setProfileName(String profile_name) {
            this.profile_name = profile_name;
        }

        public int getMovementAllowance() {
            return movement_allowance;
        }

        public void setMovementAllowance(int movement_allowance) {
            this.movement_allowance = movement_allowance;
        }

        public int getWeponSkill() {
            return weapon_skill;
        }

        public void setWeponSkill(int wepon_skill) {
            this.weapon_skill = wepon_skill;
        }

        public int getBallisticSkill() {
            return ballistic_skill;
        }

        public void setBallisticSkill(int ballistic_skill) {
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

        public String getTroopType() {
            return troop_type;
        }

        public void setTroopType(String troop_type) {
            this.troop_type = troop_type;
        }

        public int getMaxPerUnit() {
            return max_per_unit;
        }

        public void setMaxPerUnit(int max_per_unit) {
            this.max_per_unit = max_per_unit;
        }

        @Override
        public String toString() {
            return "Uniname";
        }
    }