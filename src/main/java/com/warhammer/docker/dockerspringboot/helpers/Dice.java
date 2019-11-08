package com.warhammer.docker.dockerspringboot.helpers;

import java.util.Random;

public class Dice {

    public static int rollD6(int numberOfDices){
        int numberOfSides = 6;
        int diceResult = 0;

        Random r = new Random();

        for(int i = 0; i < numberOfDices; i++){
            diceResult = r.nextInt(numberOfSides) +1;
        }

        return diceResult;
    }

}
