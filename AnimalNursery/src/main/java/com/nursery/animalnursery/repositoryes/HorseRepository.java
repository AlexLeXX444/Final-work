package com.nursery.animalnursery.repositoryes;

import com.nursery.animalnursery.models.packpets.Horse;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HorseRepository extends JpaRepository<Horse, Long> {
}
