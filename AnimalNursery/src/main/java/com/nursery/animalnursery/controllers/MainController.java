package com.nursery.animalnursery.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class MainController {

    @GetMapping("/")
    public String mainPage() {
        return "index";
    }

    @GetMapping("/create_home_pet")
    public String createHomePetPage() {
        return "create_home_pet";
    }

    @GetMapping("/create_pack_pet")
    public String createPackPetPage() {
        return "create_pack_pet";
    }
}
