package com.nursery.animalnursery.controllers;

import com.nursery.animalnursery.services.PetService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequiredArgsConstructor
public class DeletePetController {
    private final PetService petService;

    @GetMapping("/delete/hamster/{hamsterId}")
    public String hamsterDelete(@PathVariable("hamsterId") Long hamsterId) {
        petService.deleteHamster(hamsterId);
        return "redirect:/list_of_pets";
    }

    @GetMapping("/delete/cat/{catId}")
    public String catDelete(@PathVariable("catId") Long catId) {
        petService.deleteCat(catId);
        return "redirect:/list_of_pets";
    }

    @GetMapping("/delete/dog/{dogId}")
    public String dogDelete(@PathVariable("dogId") Long dogId) {
        petService.deleteDog(dogId);
        return "redirect:/list_of_pets";
    }

    @GetMapping("/delete/donkey/{donkeyId}")
    public String donkeyDelete(@PathVariable("donkeyId") Long donkeyId) {
        petService.deleteDonkey(donkeyId);
        return "redirect:/list_of_pets";
    }

    @GetMapping("/delete/horse/{horseId}")
    public String horseDelete(@PathVariable("horseId") Long horseId) {
        petService.deleteHorse(horseId);
        return "redirect:/list_of_pets";
    }

    @GetMapping("/delete/camel/{camelId}")
    public String camelDelete(@PathVariable("camelId") Long camelId) {
        petService.deleteCamel(camelId);
        return "redirect:/list_of_pets";
    }
}
