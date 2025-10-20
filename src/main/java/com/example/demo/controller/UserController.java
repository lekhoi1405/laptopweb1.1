package com.example.demo.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.domain.User;
import com.example.demo.service.UserService;

@Controller
public class UserController {

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String getHomePage(Model model){
        String test = this.userService.handleHello();
        model.addAttribute("eric", test);
        model.addAttribute("meomeoemeo", "meo meo meo meo meo meo meo meo meo meo");
        return test;
    }

    @GetMapping("/admin/user")
    public String getCreateUser(Model model){
        model.addAttribute("user", new User());
        String createUser =this.userService.createUser();
        return "admin/user/create";
    }

    @PostMapping("/admin/user/create")
    public String createUserPage(Model model, @ModelAttribute("user") User hehe ){
        System.out.println(hehe);
        return "hello";
    }
}
// @RestController
// public class UserController {
    
//     private UserService userService;

//     public UserController(UserService userService) {
//         this.userService = userService;
//     }

//     @GetMapping("/")
//     public String getHomePage(){
//         return userService.handleHello();
//     }
// }
