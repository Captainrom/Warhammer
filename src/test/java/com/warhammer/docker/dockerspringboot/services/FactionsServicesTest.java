package com.warhammer.docker.dockerspringboot.services;

import com.warhammer.docker.dockerspringboot.models.Option;
import com.warhammer.docker.dockerspringboot.models.OptionDto;
import com.warhammer.docker.dockerspringboot.services.mapper.OptionDtosToOptions;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringJUnit4ClassRunner.class)
public class FactionsServicesTest {

    @Test
    public void mapFromOptionDtoToOption() {
        List<OptionDto> optionDtoList = new ArrayList<>();
        optionDtoList.add(createOptionDto(1, "May be armed with one of the following:", null));
        optionDtoList.add(createOptionDto(2, "Additional hand weapon (unless mountes)", 1));
        optionDtoList.add(createOptionDto(3, "Halberd", 1));
        optionDtoList.add(createOptionDto(4, "Lance (mounted only)", 1));
        optionDtoList.add(createOptionDto(5, "Spear", 1));
        optionDtoList.add(createOptionDto(6, "Great weapon", 1));
        optionDtoList.add(createOptionDto(7, "May take a longbow", null));
        optionDtoList.add(createOptionDto(8, "May replace light armor with one of the following:", null));
        optionDtoList.add(createOptionDto(9, "Heavy armour", 8));
        optionDtoList.add(createOptionDto(10, "Dragon armour (unless the model has a lion cloak)", 8));
        optionDtoList.add(createOptionDto(11, "May take a shield", null));
        optionDtoList.add(createOptionDto(12, "May take a lion cloak (unless the model has Dragon armour)", null));
        optionDtoList.add(createOptionDto(13, "May be mounted on one of the following:", null));
        optionDtoList.add(createOptionDto(14, "Elven Steed", 13));
        optionDtoList.add(createOptionDto(15, "May be upgraded to have ithilmar barding", 14));
        optionDtoList.add(createOptionDto(16, "Great Eagle", 13));
        optionDtoList.add(createOptionDto(17, "May be upgraded to have have Swiftsense", 16));
        optionDtoList.add(createOptionDto(18, "May be upgraded to have have Shredding Talons", 16));
        optionDtoList.add(createOptionDto(19, "Griffon", 13));
        optionDtoList.add(createOptionDto(20, "May be upgraded to have Swooping Strike", 19));
        optionDtoList.add(createOptionDto(21, "May be upgraded to have Swiftsense", 19));
        optionDtoList.add(createOptionDto(22, "Tiranoc Chariot", 13));
        optionDtoList.add(createOptionDto(23, "Sun Dragon", 13));
        optionDtoList.add(createOptionDto(24, "Moon Dragon", 13));
        optionDtoList.add(createOptionDto(25, "Star Dragon", 13));
        optionDtoList.add(createOptionDto(26, "May take magic items up to a total of 100 points", null));

        List<Option> options = new ArrayList<>(OptionDtosToOptions.map(optionDtoList));

        assertEquals(options.size(), 7);
        assertEquals(options.get(0).getName(), "May be armed with one of the following:");
        assertEquals(options.get(0).getOptions().size(), 5);
        assertEquals(options.get(0).getOptions().get(0).getName(), "Additional hand weapon (unless mountes)");
        assertNull(options.get(0).getOptions().get(0).getOptions());
        assertEquals(options.get(0).getOptions().get(1).getName(), "Halberd");
        assertNull(options.get(0).getOptions().get(1).getOptions());
        assertEquals(options.get(0).getOptions().get(2).getName(), "Lance (mounted only)");
        assertNull(options.get(0).getOptions().get(2).getOptions());
        assertEquals(options.get(0).getOptions().get(3).getName(), "Spear");
        assertNull(options.get(0).getOptions().get(3).getOptions());
        assertEquals(options.get(0).getOptions().get(4).getName(), "Great weapon");
        assertNull(options.get(0).getOptions().get(4).getOptions());
        assertEquals(options.get(1).getName(), "May take a longbow");
        assertNull(options.get(1).getOptions());
        assertEquals(options.get(2).getName(), "May replace light armor with one of the following:");
        assertEquals(options.get(2).getOptions().size(), 2);
        assertEquals(options.get(2).getOptions().get(0).getName(), "Heavy armour");
        assertEquals(options.get(2).getOptions().get(1).getName(), "Dragon armour (unless the model has a lion cloak)");
        assertEquals(options.get(3).getName(), "May take a shield");
        assertNull(options.get(3).getOptions());
        assertEquals(options.get(4).getName(), "May take a lion cloak (unless the model has Dragon armour)");
        assertNull(options.get(4).getOptions());
        assertEquals(options.get(5).getName(), "May be mounted on one of the following:");
        assertEquals(options.get(5).getOptions().size(), 7);
        assertEquals(options.get(5).getOptions().get(0).getName(), "Elven Steed");
        assertEquals(options.get(5).getOptions().get(0).getOptions().size(), 1);
        assertEquals(options.get(5).getOptions().get(0).getOptions().get(0).getName(), "May be upgraded to have ithilmar barding");
        assertEquals(options.get(5).getOptions().get(1).getName(), "Great Eagle");
        assertEquals(options.get(5).getOptions().get(1).getOptions().size(), 2);
        assertEquals(options.get(5).getOptions().get(1).getOptions().get(0).getName(), "May be upgraded to have have Swiftsense");
        assertEquals(options.get(5).getOptions().get(1).getOptions().get(1).getName(), "May be upgraded to have have Shredding Talons");
        assertEquals(options.get(5).getOptions().get(2).getName(), "Griffon");
        assertEquals(options.get(5).getOptions().get(2).getOptions().size(), 2);
        assertEquals(options.get(5).getOptions().get(2).getOptions().get(0).getName(), "May be upgraded to have Swooping Strike");
        assertEquals(options.get(5).getOptions().get(2).getOptions().get(1).getName(), "May be upgraded to have Swiftsense");
        assertEquals(options.get(5).getOptions().get(3).getName(), "Tiranoc Chariot");
        assertNull(options.get(5).getOptions().get(3).getOptions());
        assertEquals(options.get(5).getOptions().get(4).getName(), "Sun Dragon");
        assertNull(options.get(5).getOptions().get(4).getOptions());
        assertEquals(options.get(5).getOptions().get(5).getName(), "Moon Dragon");
        assertNull(options.get(5).getOptions().get(5).getOptions());
        assertEquals(options.get(5).getOptions().get(6).getName(), "Star Dragon");
        assertNull(options.get(5).getOptions().get(6).getOptions());
        assertEquals(options.get(6).getName(), "May take magic items up to a total of 100 points");
        assertNull(options.get(6).getOptions());
    }

    private OptionDto createOptionDto(Integer optionId, String name, Integer parentOptionId) {
        OptionDto optionDto = new OptionDto();

        optionDto.setOption_id(optionId);
        optionDto.setName(name);
        optionDto.setParent_option(parentOptionId);

        return optionDto;
    }
}