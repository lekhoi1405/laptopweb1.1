package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.demo.domain.Role;
import com.example.demo.domain.User;
import com.example.demo.repository.RoleRepository;
import com.example.demo.repository.UserRepository;


@Service
public class UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    UserService(UserRepository userRepository,RoleRepository roleRepository){
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
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

    public Role handleGetRoleByName(String name){
        return roleRepository.findByName(name);
    }

    public String handleGetDeletePage(){
        return "admin/user/delete";
    }

    public String handleGetTableUserPage(){
        return "admin/user/show";
    }

    public String handleGetCreateUserPage(){
        return "admin/user/create";
    }

    public String handleGetViewUserPage(){
        return "admin/user/detail";
    }

    public String handleGetUpdateUserPage(){
        return "admin/user/update";
    }
    public String handleGetHelloPage(){
        return "hello";
    }
}