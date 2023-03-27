package com.nursery.animalnursery.controllers;

import com.nursery.animalnursery.models.HomePets.Cat;
import com.nursery.animalnursery.models.HomePets.Dog;
import com.nursery.animalnursery.models.HomePets.Hamster;
import com.nursery.animalnursery.services.PetService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class CreatePetController {
    private final PetService petService;

    @PostMapping("/pet_create/cat")
    public String createCat(Cat cat) {
        if (cat.getName() == null || cat.getBirthDate() == null) {
            return "redirect:/create_home_pet";
        }
        petService.createCat(cat);
        return "redirect:/";
    }

    @PostMapping("/pet_create/hamster")
    public String createHamster(Hamster hamster) {
        if (hamster.getName() == null || hamster.getBirthDate() == null) {
            return "redirect:/create_home_pet";
        }
        petService.createHamster(hamster);
        return "redirect:/";
    }

    @PostMapping("/pet_create/dog")
    public String createDog(Dog dog) {
        if (dog.getName() == null || dog.getBirthDate() == null) {
            return "redirect:/create_home_pet";
        }
        petService.createDog(dog);
        return "redirect:/";
    }
}
