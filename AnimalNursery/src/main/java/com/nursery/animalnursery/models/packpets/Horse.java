package com.nursery.animalnursery.models.packpets;

import jakarta.persistence.Entity;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "horses")
@Data
@AllArgsConstructor
public class Horse extends PackPet {

    @PrePersist
    public void init() {}

    public Horse(String name, Date birthDate, String petCommands) {
        super.setName(name);
        super.setBirthDate(birthDate);
        if (petCommands.length() > 0) {
            super.setPetCommands(new ArrayList<>(Arrays.asList(petCommands.split(" "))));
        }
    }

    @Override
    public String toString() {
        return String.format("Pet: id={%s}  type={%s}  name={%s}  date={%s}", super.getId(), super.getPetType(), super.getName(), super.getBirthDate());
    }
}
