package com.nursery.animalnursery.models.HomePets;

import jakarta.persistence.Entity;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "cats")
@Data
@AllArgsConstructor
public class Cat extends HomePet {

    @PrePersist
    public void init() {

    }

}
