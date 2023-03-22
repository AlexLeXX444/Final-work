package com.nursery.animalnursery.models.HomePets;

import com.nursery.animalnursery.models.BasePet;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class HomePet extends BasePet {
    @Column(name = "pet_type")
    private final String petType = "Home pet";
}
