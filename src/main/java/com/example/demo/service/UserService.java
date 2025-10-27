package com.example.demo.service;

import org.springframework.stereotype.Service;

import com.example.demo.domain.User;
import com.example.demo.repository.UserRepository;

@Service
public class UserService {

    UserRepository userRepository;
    UserService(UserRepository repository){
        this.userRepository = repository;
    }

    public User handleSaveUser(User user){
        return userRepository.save(user);
    }

    public String handleHello(){
        return "hello";
    }

    public String createUser(){
        return "admin/user/create";
    }

}
