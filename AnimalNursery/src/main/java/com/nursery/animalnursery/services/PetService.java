package com.nursery.animalnursery.services;

import com.nursery.animalnursery.models.HomePets.Cat;
import com.nursery.animalnursery.models.HomePets.Dog;
import com.nursery.animalnursery.models.HomePets.Hamster;
import com.nursery.animalnursery.repositoryes.CatRepository;
import com.nursery.animalnursery.repositoryes.DogRepository;
import com.nursery.animalnursery.repositoryes.HamsterRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PetService {
    private final CatRepository catRepository;
    private final HamsterRepository hamsterRepository;
    private final DogRepository dogRepository;

    public void createCat(Cat cat) {
        catRepository.save(cat);
    }

    public void createHamster(Hamster hamster) {
        hamsterRepository.save(hamster);
    }

    public void createDog(Dog dog) {
        dogRepository.save(dog);
    }
}
