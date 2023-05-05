package com.nexential.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nexential.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{

}
