package com.nursery.animalnursery.repositoryes;

import com.nursery.animalnursery.models.HomePets.Dog;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DogRepository extends JpaRepository<Dog, Long> {
}
