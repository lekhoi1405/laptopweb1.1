package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.domain.Product;
import com.example.demo.service.ProductService;
import com.example.demo.service.UploadService;



@Controller
public class ProductController {
    
    private final ProductService productService;
    private final UploadService uploadService;

    public ProductController(ProductService productService,UploadService uploadService){
        this.productService = productService;
        this.uploadService = uploadService;
    }

    @GetMapping("/admin/product")
    public String getProductPage(Model model){
        List<Product> products = productService.handleGetAllProduct();
        model.addAttribute("list", products);
        String ProductPage = productService.handleGetProductPage();
        return ProductPage;
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model){
        model.addAttribute("product",new Product());
        String createProductPage = productService.handleGetCreateProductPage(); 
        return createProductPage;
    }

    @PostMapping("/admin/product/create")
    public String createUserPage(@ModelAttribute Product product, @RequestParam("imageProduct") MultipartFile File){
        String image = uploadService.handleUploadFile(File, "product");
        product.setImage(image);
        productService.handleSaveProduct(product);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/view/{product}")
    public String getDetailProductPage(@PathVariable Product product, Model model){
        model.addAttribute("product", product);
        return productService.handleGetDetailProductPage();
    }

}   
