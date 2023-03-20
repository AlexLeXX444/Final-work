package com.nursery.animalnursery.models;

import jakarta.persistence.*;

@Entity
@Table(name = "pet_variety")
public class PetVariety {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "variety_id")
    private long id;

    @Column(name = "variety")
    private String variety;
}
