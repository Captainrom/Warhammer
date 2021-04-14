package com.warhammer.docker.dockerspringboot.models;

public class OptionDto {
    private Integer option_id;
    private String name;
    private double points;
    private boolean pointsPerModel;
    private Integer parent_option;

    public Integer getOption_id() {
        return option_id;
    }

    public void setOption_id(Integer option_id) {
        this.option_id = option_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPoints() {
        return points;
    }

    public void setPoints(double points) {
        this.points = points;
    }

    public boolean isPointsPerModel() {
        return pointsPerModel;
    }

    public void setPointsPerModel(boolean pointsPerModel) {
        this.pointsPerModel = pointsPerModel;
    }

    public Integer getParent_option() {
        return parent_option;
    }

    public void setParent_option(Integer parent_option) {
        this.parent_option = parent_option;
    }
}
