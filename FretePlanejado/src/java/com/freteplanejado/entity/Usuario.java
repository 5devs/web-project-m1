package com.freteplanejado.entity;

import java.io.*;
import java.util.*;
/**
 *
 * @author 42143954840
 */
public class Usuario {
    
    private int id;
    private String name;
    private String email;
    private String password;
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public String getName(){
        return this.name;
    }
    
    public String getEmail(){
        return this.email;
    }
    
    public String getSenha(){
        return this.password;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
