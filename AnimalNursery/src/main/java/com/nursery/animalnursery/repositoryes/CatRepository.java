package com.nursery.animalnursery.repositoryes;

import com.nursery.animalnursery.models.HomePets.Cat;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CatRepository extends JpaRepository<Cat, Long> {
}
