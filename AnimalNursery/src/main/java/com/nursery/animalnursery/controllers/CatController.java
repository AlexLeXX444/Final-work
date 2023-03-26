package com.nursery.animalnursery.controllers;

import com.nursery.animalnursery.models.HomePets.Cat;
import com.nursery.animalnursery.services.CatService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class CatController {
    private final CatService catService;

    @PostMapping("/cat/create")
    public String createCat(Cat cat) {
        if (cat.getName().isEmpty() || cat.getBirthDate() == null) {
            return "redirect:/create_pet";
        }
        catService.createCat(cat);
        return "redirect:/index";
    }
}
