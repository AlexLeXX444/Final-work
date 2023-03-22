package com.nursery.animalnursery.services;

import com.nursery.animalnursery.models.HomePets.Cat;
import com.nursery.animalnursery.repositoryes.CatRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class CatService {
    private final CatRepository catRepository;

    public List<Cat> listCats() {
        return catRepository.findAll();
    }

    public void createCat(Cat cat) {
        System.out.println(cat);
        catRepository.save(cat);
    }
}
