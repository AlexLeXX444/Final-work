package com.nursery.animalnursery.services;

import com.nursery.animalnursery.models.homepets.Cat;
import com.nursery.animalnursery.models.homepets.Dog;
import com.nursery.animalnursery.models.homepets.Hamster;
import com.nursery.animalnursery.models.packpets.Camel;
import com.nursery.animalnursery.models.packpets.Donkey;
import com.nursery.animalnursery.models.packpets.Horse;
import com.nursery.animalnursery.repositoryes.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PetService {
    private final CatRepository catRepository;
    private final HamsterRepository hamsterRepository;
    private final DogRepository dogRepository;
    private final DonkeyRepository donkeyRepository;
    private final HorseRepository horseRepository;
    private final CamelRepository camelRepository;

    public void createCat(Cat cat) {
        catRepository.save(cat);
    }

    public void createHamster(Hamster hamster) {
        hamsterRepository.save(hamster);
    }

    public void createDog(Dog dog) {
        dogRepository.save(dog);
    }

    public void createDonkey(Donkey donkey) {
        donkeyRepository.save(donkey);
    }

    public void createHorse(Horse horse) {
        horseRepository.save(horse);
    }

    public void createCamel(Camel camel) {
        camelRepository.save(camel);
    }

    public List<Hamster> getListHamsters() {
        return hamsterRepository.findAll();
    }

    public List<Cat> getListCats() {
        return catRepository.findAll();
    }

    public List<Dog> getListDogs() {
        return dogRepository.findAll();
    }

    public List<Donkey> getListDonkeys() {
        return donkeyRepository.findAll();
    }

    public List<Horse> getListHorses() {
        return horseRepository.findAll();
    }

    public List<Camel> getListCamels() {
        return camelRepository.findAll();
    }

    public Hamster hamsterById(Long id) {
        return hamsterRepository.findById(id).orElse(null);
    }

    public Cat catById(Long id) {
        return catRepository.findById(id).orElse(null);
    }

    public Dog dogById(Long id) {
        return dogRepository.findById(id).orElse(null);
    }

    public Donkey donkeyById(Long id) {
        return donkeyRepository.findById(id).orElse(null);
    }

    public Horse horseById(Long id) {
        return horseRepository.findById(id).orElse(null);
    }

    public Camel camelById(Long id) {
        return camelRepository.findById(id).orElse(null);
    }

    public void redactHamsterCommands(Long id, List<String> petCommands) {
        Hamster redactedHamster = hamsterRepository.findById(id).orElse(null);
        if (redactedHamster != null) {
            redactedHamster.setPetCommands(petCommands);
            hamsterRepository.save(redactedHamster);
        }
    }

    public void redactCatCommands(Long id, List<String> petCommands) {
        Cat redactedCat = catRepository.findById(id).orElse(null);
        if (redactedCat != null) {
            redactedCat.setPetCommands(petCommands);
            catRepository.save(redactedCat);
        }
    }

    public void redactDogCommands(Long id, List<String> petCommands) {
        Dog redactedDog = dogRepository.findById(id).orElse(null);
        if (redactedDog != null) {
            redactedDog.setPetCommands(petCommands);
            dogRepository.save(redactedDog);
        }
    }

    public void redactDonkeyCommands(Long id, List<String> petCommands) {
        Donkey redactedDonkey = donkeyRepository.findById(id).orElse(null);
        if (redactedDonkey != null) {
            redactedDonkey.setPetCommands(petCommands);
            donkeyRepository.save(redactedDonkey);
        }
    }

    public void redactHorseCommands(Long id, List<String> petCommands) {
        Horse redactedHorse = horseRepository.findById(id).orElse(null);
        if (redactedHorse != null) {
            redactedHorse.setPetCommands(petCommands);
            horseRepository.save(redactedHorse);
        }
    }

    public void redactCamelCommands(Long id, List<String> petCommands) {
        Camel redactedCamel = camelRepository.findById(id).orElse(null);
        if (redactedCamel != null) {
            redactedCamel.setPetCommands(petCommands);
            camelRepository.save(redactedCamel);
        }
    }

    public void deleteHamster(Long id) {
        hamsterRepository.deleteById(id);
    }

    public void deleteCat(Long id) {
        catRepository.deleteById(id);
    }

    public void deleteDog(Long id) {
        dogRepository.deleteById(id);
    }

    public void deleteDonkey(Long id) {
        donkeyRepository.deleteById(id);
    }

    public void deleteHorse(Long id) {
        horseRepository.deleteById(id);
    }

    public void deleteCamel(Long id) {
        camelRepository.deleteById(id);
    }
}
