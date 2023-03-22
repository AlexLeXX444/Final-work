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

    @GetMapping("/sucsess")
    public String sucsessPage() {
        return "sucsess";
    }

    @GetMapping("/false")
    public String falsePage() {
        return "false";
    }
}
