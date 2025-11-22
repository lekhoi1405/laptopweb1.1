package com.example.demo.service;

import java.util.List;
import java.util.Optional;

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

    public String handleGetUpdateProductPage(){
        return "admin/product/update";
    }

    public String handleGetDeleteProductPage(){
        return "admin/product/delete";
    }

    public Product handleSaveProduct(Product product){
        return productRepository.save(product);
    }

    public List<Product> handleGetAllProduct(){
        return productRepository.findAll();
    }
    
    public Product handleGetProductById(Long id){
        return productRepository.getById(id);
    }

     public Optional<Product> handleGetProductByIdWithFindBy(Long id){
        return productRepository.findById(id);
    }

    public void handleDeleteProductById(Long id){
        productRepository.deleteById(id);
    }
}
