package com.nursery.animalnursery.controllers;

import com.nursery.animalnursery.services.PetService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class ReturnPetInfoController {
    private final PetService petService;

    @GetMapping("/list_of_pets")
    public String listOfPetsPage(Model model) {
        model.addAttribute("hamsters", petService.getListHamsters());
        model.addAttribute("cats", petService.getListCats());
        model.addAttribute("dogs", petService.getListDogs());
        model.addAttribute("donkeys", petService.getListDonkeys());
        model.addAttribute("horses", petService.getListHorses());
        model.addAttribute("camels", petService.getListCamels());
        return "lists/list_of_pets";
    }
}
