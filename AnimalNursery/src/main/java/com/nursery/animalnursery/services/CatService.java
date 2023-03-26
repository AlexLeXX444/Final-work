package com.nursery.animalnursery.services;

import com.nursery.animalnursery.models.HomePets.Cat;
import com.nursery.animalnursery.repositoryes.CatRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CatService {
    private final CatRepository catRepository;

    public List<Cat> listCats() {
        return catRepository.findAll();
    }

    public void createCat(Cat cat) {
        catRepository.save(cat);
    }
}
