package com.nursery.animalnursery.controllers;

import com.nursery.animalnursery.services.PetService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class ReturnPetInfoController {
    private final PetService petService;

    @PostMapping("/get_by_id/{id}")
    public String getById(@PathVariable)
}
