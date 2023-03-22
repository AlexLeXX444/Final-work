package com.nursery.animalnursery.models;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class BasePet {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "pet_id")
    private long id;

    @Column(name = "pet_name")
    private String name;

    @Column(name = "pet_birth_date")
    private LocalDateTime birthDate;

    @Column(name = "pet_commands")
    @ManyToMany
    private List<Command> commands = new ArrayList<>();
}
