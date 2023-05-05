package com.nexential.springBoot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nexential.springBoot.entity.Toy;
@Repository
public interface ToyRepository extends JpaRepository<Toy, Long> {

}
