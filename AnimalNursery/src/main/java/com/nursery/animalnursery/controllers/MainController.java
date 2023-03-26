package com.nursery.animalnursery.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class MainController {

    @GetMapping("/")
    public String mainPage() {
        return "main_page";
    }

    @GetMapping("/home_pets")
    public String homePetsPage() {
        return "home_pets";
    }

    @GetMapping("/pack_pets")
    public String packPetsPage() {
        return "pack_pets";
    }
}
