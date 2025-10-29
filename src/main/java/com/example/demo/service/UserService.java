package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.demo.domain.User;
import com.example.demo.repository.UserRepository;


@Service
public class UserService {

    UserRepository userRepository;
    UserService(UserRepository repository){
        this.userRepository = repository;
    }

    public List<User> handleGetAllUsers(){
        return userRepository.findAll();
    }

    public List<User> handleGetAllUsersByEmail(String email){
        return userRepository.findOneByEmail(email);
    }

    public Optional<User> handleGetUserById(long id){
        return userRepository.findById(id);
    }

    public User handleGetUserByIdWithGet(long id){
        return userRepository.getById(id);
    }

    public void handleDeleteUser(User user){
        userRepository.delete(user);
    }

    public User handleSaveUser(User user){
        return userRepository.save(user);
    }

    public String handleGetDeletePage(){
        return "admin/user/delete";
    }

    public String handleGetTableUserPage(){
        return "admin/user/tableUser";
    }

    public String handleGetHelloPage(){
        return "hello";
    }

    public String handleGetCreateUserPage(){
        return "admin/user/create";
    }

    public String handleGetViewUserPage(){
        return "admin/user/viewUser";
    }

    public String handleGetUpdateUserPage(){
        return "admin/user/updateUser";
    }
}
