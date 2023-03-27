package com.nursery.animalnursery.repositoryes;

import com.nursery.animalnursery.models.homepets.Hamster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HamsterRepository extends JpaRepository<Hamster, Long> {
}
