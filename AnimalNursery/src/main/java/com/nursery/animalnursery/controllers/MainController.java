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
        return "index";
    }
}
