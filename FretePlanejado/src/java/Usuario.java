/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.*;
import java.util.*;
/**
 *
 * @author 42143954840
 */
public class Usuario {
    
    private String Login;
    private String Senha;
    private boolean Logado = false;
    
    public boolean Logar(String Login, String Senha){
        if("admin".equals(Login) && "admin".equals(Senha)){
            this.Login = Login;
            this.Senha = Senha;
            this.Logado = true;
        
            return true;
        }
        
        return false;
    }
    
    public String getLogin(){
        return this.Login;
    }
    
    public String getSenha(){
        return this.Senha;
    }
    
    public boolean getLogado(){
        return this.Logado;
    }
    
}
