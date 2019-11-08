package com.warhammer.docker.dockerspringboot.helpers;

import org.junit.Test;

import static org.junit.Assert.*;

public class DiceTest {
    @Test
    public void valueFromDice(){
        int numberOfDice = 1;
        int diceValue = Dice.rollD6(numberOfDice);
        for(int i = 0; i < 10; i++){
            assertTrue(diceValue > 0 && diceValue < 7);
        }
    }
}
