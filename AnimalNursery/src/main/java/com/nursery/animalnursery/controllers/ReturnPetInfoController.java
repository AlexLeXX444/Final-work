package com.nursery.animalnursery.controllers;

import com.nursery.animalnursery.services.PetService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class ReturnPetInfoController {
    private final PetService petService;

    @GetMapping("/list_of_pets")
    public String listOfPetsPage(Model model) {
        model.addAttribute("cats", petService.getListCats());
        model.addAttribute("dogs", petService.getListDogs());
        return "list_of_pets";
    }
}
