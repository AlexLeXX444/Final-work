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

import java.util.Optional;

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

    public Optional<?> petById(Long id) {
        if (hamsterRepository.findById(id).isPresent()) return hamsterRepository.findById(id);
        if (catRepository.findById(id).isPresent()) return catRepository.findById(id);
        if (dogRepository.findById(id).isPresent()) return dogRepository.findById(id);
        if (donkeyRepository.findById(id).isPresent()) return donkeyRepository.findById(id);
        if (horseRepository.findById(id).isPresent()) return horseRepository.findById(id);
        if (camelRepository.findById(id).isPresent()) return camelRepository.findById(id);
        return null;
    }
}
