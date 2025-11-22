package com.example.demo.service.validator;
import org.springframework.stereotype.Service;

import com.example.demo.domain.dto.RegisterDTO;
import com.example.demo.service.UserService;

import jakarta.validation.ConstraintValidator;

@Service
public class RegisterValidator implements ConstraintValidator<RegisterChecked, RegisterDTO> {

    private final UserService userService;
    
    public RegisterValidator(UserService userService){
        this.userService = userService;
    }

    @Override
    public boolean isValid(RegisterDTO user, jakarta.validation.ConstraintValidatorContext context) {
        boolean valid = true;
        if(!user.getPassword().equals(user.getConfirmPassword())) {
            context.buildConstraintViolationWithTemplate("Password not match")
                    .addPropertyNode("confirmPassword")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }
        if(userService.checkEmailExists(user.getEmail())) {
            context.buildConstraintViolationWithTemplate("Email already exists")
                    .addPropertyNode("email")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }
        return valid;
    }
    
}
