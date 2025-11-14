package com.example.demo.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.domain.User;
import com.example.demo.service.UploadService;
import com.example.demo.service.UserService;


@Controller
public class UserController {

    private final UserService userService;
    private final UploadService uploadService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, UploadService uploadService,PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
    }

    //Get user page
    @GetMapping("/admin/user")
    public String getUserTable(Model model){
        List<User> userList = userService.handleGetAllUsers();
        model.addAttribute("list", userList);
        String tableUser =this.userService.handleGetTableUserPage();
        return tableUser;
    }

    //Get create user page
    @GetMapping("/admin/user/create")
    public String getCreateUserPage(Model model){
        model.addAttribute("user", new User());
        String createUser =this.userService.handleGetCreateUserPage();
        return createUser;
    }

    //Post Method for create user and redirect to table user page
    @PostMapping("/admin/user/create")
    public String createUserPage(@ModelAttribute User user, @RequestParam("userAvatarFile")MultipartFile file){
        String avatar = this.uploadService.handleUploadFile(file, "avatar");
        String hashPassword = this.passwordEncoder.encode(user.getPassword());
        user.setPassword(hashPassword);
        user.setAvatar(avatar);
        user.setRole(userService.handleGetRoleByName(user.getRole().getName()));
        userService.handleSaveUser(user);
        return "redirect:/admin/user";
    }

    //Get view user page
    @GetMapping("/admin/user/view/{id}")
    public String getViewUserPage(Model model, @PathVariable long id ){
        // Optional<User> user = userService.handleGetUserById(id);
        // if(user.isPresent()){
        //     model.addAttribute("user", user.get());
        // }else{
        //     System.out.println("there is no user have id: " + id);
        // }
        
        User user = userService.handleGetUserById(id)
            .orElseThrow(() -> new RuntimeException("there is no user have id: " + id));
        model.addAttribute("user", user);
        String viewUser = userService.handleGetViewUserPage();
        return viewUser;
    }

    //Get update user page
    @GetMapping("/admin/user/update/{id}")
    //Spring JPA use DomainClassConverter to convert id 123 to user have id 123 in database 
    //this is an effort when spring have to convert long 123 to User 123 
    public String getUpdateUserPage(Model model, @PathVariable("id") User user){    
        model.addAttribute("user", user);
        String updateUser = userService.handleGetUpdateUserPage();
        return updateUser;
    }   

    //Post Method for update user
    @PostMapping("/admin/user/update")
    public String updateUser(@ModelAttribute User newUser, @RequestParam("userAvatarFile") MultipartFile file){
        User currentUser = userService.handleGetUserByIdWithGet(newUser.getId());
        if(currentUser != null){
            currentUser.setRole(userService.handleGetRoleByName(newUser.getRole().getName()));
            currentUser.setAddress(newUser.getAddress());
            currentUser.setFullName(newUser.getFullName());
            currentUser.setPhone(newUser.getPhone());
            if(file!=null)currentUser.setAvatar(uploadService.handleUploadFile(file,"avatar"));
        }
        userService.handleSaveUser(currentUser);
        return "redirect:/admin/user";
    }


    //Get method for creating delete user page
    @GetMapping("/admin/user/delete/{id}")
    public String getDeleteUserPage(Model model, @PathVariable long id){
        Optional<User> currentUser = userService.handleGetUserById(id);
        if(currentUser.isPresent()){
            model.addAttribute("user", currentUser.get());
        }
        
        return userService.handleGetDeletePage();
    }

    //
    @PostMapping("/admin/user/delete")
    public String deleteUser(@ModelAttribute User user){
        userService.handleDeleteUser(user);
        return "redirect:/admin/user";
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
