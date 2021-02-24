package com.warhammer.docker.dockerspringboot.models;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class Option {
    private String name;
    private Integer points;
    private boolean pointsPerModel;
    private List<Option> options;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPoints() {
        return points;
    }

    public void setPoints(Integer points) {
        this.points = points;
    }

    public boolean isPointsPerModel() {
        return pointsPerModel;
    }

    public void setPointsPerModel(boolean pointsPerModel) {
        this.pointsPerModel = pointsPerModel;
    }

    public List<Option> getOptions() {
        return options;
    }

    public void setOptions(List<Option> options) {
        this.options = options;
    }
}
