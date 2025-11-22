package com.example.demo.controller.client;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.domain.Product;
import com.example.demo.domain.User;
import com.example.demo.domain.dto.RegisterDTO;
import com.example.demo.service.ProductService;
import com.example.demo.service.UserService;

import jakarta.validation.Valid;

@Controller
public class HomePageController {
    
    private final ProductService productService;
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

    public HomePageController(ProductService productService,UserService userService,PasswordEncoder passwordEncoder){
        this.productService = productService;
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/")
    public String getHomePage(Model model){
        List<Product> products = productService.handleGetAllProduct();
        model.addAttribute("list", products);
        return "client/homepage/show";
    }

    @GetMapping("/register")
    public String getRegisterPage(Model model){
        model.addAttribute("registerUser", new RegisterDTO());
        return "client/auth/register";
    }

    @PostMapping("/register")
    public String handleRegister(@ModelAttribute("registerUser") @Valid RegisterDTO registerDTO, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "client/auth/register";
        }
        
        User newUser = userService.registerDTOtoUser(registerDTO);
        newUser.setPassword(passwordEncoder.encode(newUser.getPassword()));
        newUser.setRole(userService.handleGetRoleByName("USER"));
        userService.handleSaveUser(newUser);
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String handleGetLoginPage(){
        return "client/auth/login";
    }
}
