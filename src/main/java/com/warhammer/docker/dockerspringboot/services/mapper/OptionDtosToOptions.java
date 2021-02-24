package com.warhammer.docker.dockerspringboot.services.mapper;

import com.warhammer.docker.dockerspringboot.models.Option;
import com.warhammer.docker.dockerspringboot.models.OptionDto;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

public class OptionDtosToOptions {
    public static Collection<Option> map(List<OptionDto> optionDtos) {
        HashMap<Integer, Option> map = new HashMap<>();

        for (OptionDto optionDto : optionDtos) {
            Option option = new Option();
            option.setName(optionDto.getName());
            option.setPoints(optionDto.getPoints());
            option.setPointsPerModel(optionDto.isPointsPerModel());
            map.put(optionDto.getOption_id(), option);
        }

        for (OptionDto optionDto : optionDtos) {
            if (optionDto.getParent_option() != null) {
                Option parent = map.get(optionDto.getParent_option());

                if (parent.getOptions() == null) {
                    parent.setOptions(new ArrayList<>());
                }

                parent.getOptions().add(map.get(optionDto.getOption_id()));
            }
        }

        return optionDtos.stream()
                .filter(optionDto -> optionDto.getParent_option() == null)
                .map(optionDto -> map.get(optionDto.getOption_id())).collect(Collectors.toList());
    }
}
