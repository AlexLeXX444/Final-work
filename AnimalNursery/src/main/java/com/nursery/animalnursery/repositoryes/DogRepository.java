package com.nursery.animalnursery.repositoryes;

import com.nursery.animalnursery.models.homepets.Dog;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DogRepository extends JpaRepository<Dog, Long> {
}
