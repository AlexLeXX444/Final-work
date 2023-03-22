package com.nursery.animalnursery.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DogController {

    @GetMapping("/dog")
    public String dogMain() {
        return "dogs/dog";
    }
}
