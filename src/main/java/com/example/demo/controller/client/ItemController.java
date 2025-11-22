package com.example.demo.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.domain.Product;

@Controller
public class ItemController {
    
    @GetMapping("/product/{id}")
    public String getDetailPage(@PathVariable("id") Product product, Model model){
        model.addAttribute("product", product);
        return "client/product/detail";
    }
}
