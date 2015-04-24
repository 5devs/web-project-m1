package com.freteplanejado.data;

import com.freteplanejado.entity.Usuario;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserDAO extends BaseDAO<Usuario> {
    
    @Override
    public void create(Usuario entity) {
        try {
            entity.setId(
                executeInsert("INSERT INTO users (name, email, password) VALUES (?, ?, ?)",
                    entity.getName(), entity.getEmail(), entity.getSenha())
            );
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Usuario retrieve(int id) {
        try {
            ResultSet rs = executeSql("SELECT * FROM users");
            
            Usuario usuario = new Usuario();
            while(rs.next()){
                usuario.setId(rs.getInt(1));
                usuario.setName(rs.getString(2));
                usuario.setEmail(rs.getString(3));
                usuario.setPassword(rs.getString(4));
            }
        
            return usuario;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public void update(Usuario entity) {
        try {
            executeUpdate("UPDATE users SET name = ?, email = ?, password = ? WHERE id = ?",
                entity.getName(), entity.getEmail(), entity.getSenha(), entity.getId());
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
