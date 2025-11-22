package com.example.demo.service.validator;

import jakarta.validation.ConstraintValidator;

public class StrongPasswordValidator implements ConstraintValidator<StrongPassword, String> {

    @Override
    public boolean isValid(String password, jakarta.validation.ConstraintValidatorContext context) {
        if (password == null) {
            return false;
        }
        // At least 8 characters, one uppercase, one lowercase, one digit, one special character
        String passwordPattern = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";
        return password.matches(passwordPattern);
    }
    
}
