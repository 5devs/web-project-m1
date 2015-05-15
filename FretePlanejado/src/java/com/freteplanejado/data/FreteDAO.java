/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.freteplanejado.data;

import com.freteplanejado.entity.Frete;
import com.freteplanejado.entity.Usuario;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 43596980895
 */
public class FreteDAO extends BaseDAO<Frete>{

    @Override
    public void create(Frete entity) {
        try {
            entity.setId(
                    executeInsert("INSERT INTO fretes (origem, destino, altura, largura, profundidade, peso, observacoes) VALUES (?, ?, ?, ?, ?, ?, ?)",
                            entity.getOrigem(), entity.getDestino(), entity.getAltura(), entity.getLargura(), entity.getProfundidade(), entity.getPeso(), entity.getObservacoes())
            );
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Frete retrieve(int id) {
        try {
            ResultSet rs = executeSql("SELECT * FROM fretes where id = ?", id);

            Frete frete = new Frete();
            
            if (rs.next()) {
                frete = load(rs);
            }

            return frete;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public void update(Frete entity) {
        try {
            executeUpdate("UPDATE fretes SET origem = ?, destino = ?, altura = ?, largura = ?, profundidade = ?, peso = ?, observacoes = ? WHERE id = ?",
                    entity.getOrigem(), entity.getAltura(), entity.getLargura(), entity.getProfundidade(), entity.getPeso(), entity.getObservacoes(),
                    entity.getId());
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Frete> all() {
        try {
            ResultSet rs = executeSql("SELECT * FROM fretes");

            List<Frete> fretes = new ArrayList<>();
            
            while (rs.next()) {
                fretes.add(load(rs));
            }

            return fretes;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public Frete load(ResultSet source) throws SQLException {
        Frete frete = new Frete();
        frete.setId(source.getInt(1));
        frete.setOrigem(source.getString(2));
        frete.setDestino(source.getString(3));
        frete.setAltura(source.getFloat(4));
        frete.setLargura(source.getFloat(5));
        frete.setProfundidade(source.getFloat(6));
        frete.setPeso(source.getFloat(7));
        frete.setObservacoes(source.getString(8));
        return frete;
    }
    
}
