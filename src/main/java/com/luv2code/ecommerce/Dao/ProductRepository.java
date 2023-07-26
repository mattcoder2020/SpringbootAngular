package com.luv2code.ecommerce.Dao;

import com.luv2code.ecommerce.Entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.RequestParam;
@RepositoryRestResource
public interface ProductRepository extends JpaRepository<Product, Integer> {

    Page<Product> findByCategoryId(@RequestParam("id") Integer id, Pageable pageable);
}
