package com.luv2code.ecommerce.Dao;

import com.luv2code.ecommerce.Entity.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "productCategory", path="product-category")
public interface ProductCategoryRespository extends JpaRepository<ProductCategory, Integer> {
}
