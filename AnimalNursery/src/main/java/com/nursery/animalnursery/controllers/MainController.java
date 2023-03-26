package com.nursery.animalnursery.controllers;

import com.nursery.animalnursery.models.HomePets.Cat;
import com.nursery.animalnursery.services.CatService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class MainController {
    private  final CatService catService;

    @GetMapping("/")
    public String mainPage() {
        return "main_page";
    }

    @GetMapping("/home_pets")
    public String homePetsPage(Cat cat, Model model) {
        model.addAttribute("cat", cat);
        model.addAttribute("cats", catService.listCats());
        return "home_pets";
    }

    @GetMapping("/pack_pets")
    public String packPetsPage() {
        return "pack_pets";
    }
}
