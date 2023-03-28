package com.nursery.animalnursery.controllers;

import com.nursery.animalnursery.models.homepets.Hamster;
import com.nursery.animalnursery.services.PetService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class RedactPetController {
    private final PetService petService;

    @GetMapping("/redact/hamster/{hamsterId}")
    public String userEdit(@PathVariable("hamsterId") Long hamsterId, Model model) {
        model.addAttribute("hamster", petService.hamsterById(hamsterId));
        return "/redact/redact_hamster";
    }

    @PostMapping("/redact_hamster")
    public String hamsterEdit(@RequestParam("id") Long id,
                              @RequestParam("petCommands") List<String> petCommands) {
        Hamster hamster = petService.hamsterById(id);
        hamster.setPetCommands(petCommands);
        petService.redactHamster(hamster);
        return "redirect:/list_of_pets";
    }
}
