package com.freteplanejado.data;

import com.freteplanejado.entity.Usuario;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserDAO extends BaseDAO<Usuario> {

    @Override
    public List<Usuario> all() {
        try {
            ResultSet rs = executeSql("SELECT * FROM users");

            List<Usuario> usuarios = new ArrayList<>();
            while (rs.next()) {
                usuarios.add(load(rs));
            }

            return usuarios;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

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
            ResultSet rs = executeSql("SELECT * FROM users where id = ?", id);

            Usuario usuario = new Usuario();
            if (rs.next()) {
                usuario = load(rs);
            }

            return usuario;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public Usuario getByEmail(String email) {
        try {
            ResultSet rs = executeSql("SELECT * FROM users WHERE email = ?", email);

            Usuario usuario = null;
            if (rs.next()) {
                usuario = load(rs);
            }

            return usuario;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public Usuario getByEmailAndPassword(String email, String pass) {
        try {
            ResultSet rs = executeSql("SELECT * FROM users WHERE email = ? AND password = ?", email, pass);

            Usuario usuario = null;
            if (rs.next()) {
                usuario = load(rs);
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
        try {
            return executeSql("DELETE FROM users WHERE id = ?", id) != null;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    @Override
    public Usuario load(ResultSet source) throws SQLException {
        Usuario usuario = new Usuario();
        usuario.setId(source.getInt(1));
        usuario.setName(source.getString(2));
        usuario.setEmail(source.getString(3));
        usuario.setPassword(source.getString(4));
        return usuario;
    }

}
