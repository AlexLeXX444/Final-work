package com.nursery.animalnursery.controllers;

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
    public String hamsterEdit(@PathVariable("hamsterId") Long hamsterId, Model model) {
        model.addAttribute("hamster", petService.hamsterById(hamsterId));
        return "/redact/redact_hamster";
    }

    @GetMapping("/redact/cat/{catId}")
    public String catEdit(@PathVariable("catId") Long catId, Model model) {
        model.addAttribute("cat", petService.catById(catId));
        return "/redact/redact_cat";
    }

    @GetMapping("/redact/dog/{dogId}")
    public String dogEdit(@PathVariable("dogId") Long dogId, Model model) {
        model.addAttribute("dog", petService.dogById(dogId));
        return "/redact/redact_dog";
    }

    @GetMapping("/redact/donkey/{donkeyId}")
    public String donkeyEdit(@PathVariable("donkeyId") Long donkeyId, Model model) {
        model.addAttribute("donkey", petService.donkeyById(donkeyId));
        return "/redact/redact_donkey";
    }

    @GetMapping("/redact/horse/{horseId}")
    public String horseEdit(@PathVariable("horseId") Long horseId, Model model) {
        model.addAttribute("horse", petService.horseById(horseId));
        return "/redact/redact_horse";
    }

    @GetMapping("/redact/camel/{camelId}")
    public String camelEdit(@PathVariable("camelId") Long camelId, Model model) {
        model.addAttribute("camel", petService.camelById(camelId));
        return "/redact/redact_camel";
    }

    @PostMapping("/redact_hamster")
    public String hamsterEdit(@RequestParam("id") Long id,
                              @RequestParam("petCommands") List<String> petCommands) {
        petService.redactHamsterCommands(id, petCommands);
        return "redirect:/list_of_pets";
    }

    @PostMapping("/redact_cat")
    public String catEdit(@RequestParam("id") Long id,
                              @RequestParam("petCommands") List<String> petCommands) {
        petService.redactCatCommands(id, petCommands);
        return "redirect:/list_of_pets";
    }

    @PostMapping("/redact_dog")
    public String dogEdit(@RequestParam("id") Long id,
                          @RequestParam("petCommands") List<String> petCommands) {
        petService.redactDogCommands(id, petCommands);
        return "redirect:/list_of_pets";
    }

    @PostMapping("/redact_donkey")
    public String donkeyEdit(@RequestParam("id") Long id,
                          @RequestParam("petCommands") List<String> petCommands) {
        petService.redactDonkeyCommands(id, petCommands);
        return "redirect:/list_of_pets";
    }

    @PostMapping("/redact_horse")
    public String horseEdit(@RequestParam("id") Long id,
                             @RequestParam("petCommands") List<String> petCommands) {
        petService.redactHorseCommands(id, petCommands);
        return "redirect:/list_of_pets";
    }

    @PostMapping("/redact_camel")
    public String camelEdit(@RequestParam("id") Long id,
                            @RequestParam("petCommands") List<String> petCommands) {
        petService.redactCamelCommands(id, petCommands);
        return "redirect:/list_of_pets";
    }

}
