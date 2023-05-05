package com.nexential.springBoot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nexential.springBoot.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
