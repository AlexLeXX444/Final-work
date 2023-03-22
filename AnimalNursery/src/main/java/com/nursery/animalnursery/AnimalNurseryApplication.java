package com.nursery.animalnursery;

import com.nursery.animalnursery.models.Command;
import com.nursery.animalnursery.models.HomePets.Cat;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.ArrayList;

@SpringBootApplication
public class AnimalNurseryApplication {

    public static void main(String[] args) {
        SpringApplication.run(AnimalNurseryApplication.class, args);
        System.out.println("Hi !!!");
        Cat cat = new Cat();
    }

}
