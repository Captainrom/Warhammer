package com.warhammer.docker.dockerspringboot.services;

import ch.qos.logback.classic.Logger;
import com.warhammer.docker.dockerspringboot.models.CombatResult;
import com.warhammer.docker.dockerspringboot.models.CombatUnit;
import com.warhammer.docker.dockerspringboot.models.Unit;
import com.warhammer.docker.dockerspringboot.models.UnitDto;
import com.warhammer.docker.dockerspringboot.repository.FactionsRepository;
import com.warhammer.docker.dockerspringboot.services.mapper.OptionDtosToOptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import static java.lang.Integer.parseInt;

@Service
public class CombatService {

    @Autowired
    public CombatService(FactionsRepository factionsRepository) {
        this.factionsRepository = factionsRepository;
    }

    FactionsRepository factionsRepository;
    Random random = new Random();

    public CombatResult resolveCombat (CombatUnit combatUnit1, CombatUnit combatUnit2) {
        UnitDto unit1 =  factionsRepository.getUnit(combatUnit1.getUnitId());
        UnitDto unit2 =  factionsRepository.getUnit(combatUnit2.getUnitId());

        //Sjekker hvem som har høyest initiativ
        if(unit1.getInitiative() >= unit2.getInitiative()){
            //Sjekker hva som trengs for å treffe forsvarende unit sitter igjen med en int verde
            int valueToHit = toHitValue(convertWeaponSkill(unit1.getWeapon_skill()), convertWeaponSkill(unit2.getWeapon_skill()));
            //Kaster terning hvis unit size er størst Skjekker om hvor mange terninger som treffer
            int numberOfDicesThatHit = diceresult(combatUnit1.getUnitSize() * convertAttacks(unit1.getAttacks()), valueToHit);
            if(numberOfDicesThatHit >= 1){
                System.out.println("test " + numberOfDicesThatHit);
                //System.out.println("unit1 diceresult", diceresult(combatUnit1.getUnitSize() * convertAttacks(unit1.getAttacks()), valueToHit);
                int valueTowound = toWoundValue(unit1.getStrength(), unit2.getToughness());
                int numberofDicesThatWounded = diceresult(numberOfDicesThatHit, combatUnit2.getUnitSize());
                

            }




        }


        System.out.print(unit1.getInitiative());

        CombatResult result = new CombatResult();

        result.setUnit_id(combatUnit1.getUnitId());
        result.setUnit_size(combatUnit1.getUnitSize());

        System.out.println("Testing TEsting");
        System.out.println(unit1);
        System.out.println(unit2);
        System.out.println("HIPHUPPERR");

        return result;
    }

    public int convertWeaponSkill(String weaponSkill){
        if(weaponSkill.equals('*')){
            return random.nextInt(6) +1;
        }
            return parseInt(weaponSkill);
    }

    public int convertAttacks(String attacks){
        if(attacks.equals('*')){
            return 0;
        }
        return parseInt(attacks);
    }

    public int toHitValue(int attacker, int defender){
        if(attacker * 2 - defender >= 1){
            return 5;
        }
        else if(attacker - defender >= 1){
            return 3;
        }
            return 4;

    }

    public int toWoundValue(int attackerStrengte, int defenderThofness){
        if(attackerStrengte - defenderThofness >= 2){
            return 2;
        }
        if(attackerStrengte - defenderThofness == 1){
            return 3;
        }
        else if(attackerStrengte == defenderThofness){
            return 4;
        }
        else if(defenderThofness - attackerStrengte == 1){
            return 5;
        }
        else{
            return 6;
        }

    }


    public int diceresult(int numberOfDices, int threshold) {
        int successfulDiceRolls = 0;
        for(int i = 0; i < numberOfDices; i++){
            if(random.nextInt(6) + 1  >= threshold){
                successfulDiceRolls++;
            }
        }
        return successfulDiceRolls;
    }

}
