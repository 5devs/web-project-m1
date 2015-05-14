/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.freteplanejado.data;

import com.freteplanejado.entity.Frete;
import java.sql.SQLException;
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
                    executeInsert("INSERT INTO users (origem, destino, altura, largura, profundidade, peso, observacoes) VALUES (?, ?, ?, ?, ?, ?, ?)",
                            entity.getOrigem(), entity.getDestino(), entity.getAltura(), entity.getLargura(), entity.getProfundidade(), entity.getPeso(), entity.getObservacoes())
            );
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Frete retrieve(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Frete entity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
