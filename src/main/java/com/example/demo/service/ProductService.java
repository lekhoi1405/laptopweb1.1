package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.domain.Product;
import com.example.demo.repository.ProductRepository;

@Service
public class ProductService {

    private ProductRepository productRepository;

    public ProductService(ProductRepository productRepository){
        this.productRepository = productRepository;
    }
    

    public String handleGetProductPage(){
        return "admin/product/show";
    }
    public String handleGetCreateProductPage(){
        return "admin/product/create";
    }

    public String handleGetDetailProductPage(){
        return "admin/product/detail";
    }

    public Product handleSaveProduct(Product product){
        return productRepository.save(product);
    }

    public List<Product> handleGetAllProduct(){
        return productRepository.findAll();
    }
    
}
