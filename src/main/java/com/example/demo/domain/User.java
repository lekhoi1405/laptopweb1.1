package com.example.demo.domain;

public class User {
    private long id;
    private String email;
    private String password;
    private String fullname;
    private String address;
    private String phone;
    
    public void setId(long id){
        this.id = id;
    }

    public long getId(){
        return this.id;
    }

    public void setEmail(String email){
        this.email = email;
    }

    public String getEmail(){
        return this.email;
    }   
    
    public void setPassword(String password){
        this.password = password;
    }

    public String getPassword(){
        return this.password;
    }

    public void setFullname(String fullname){
        this.fullname = fullname;
    }

    public String getFullname(){
        return this.fullname;
    }

    public void setAddress(String address){
        this.address = address;
    }

    public String getAddress(){
        return this.address;
    }
    
    public void setPhone(String phone){
        this.phone = phone;
    }

    public String getPhone(){
        return this.phone;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", email=" + email + ", password=" + password + ", fullname=" + fullname
                + ", address=" + address + ", phone=" + phone + "]";
    }
}
