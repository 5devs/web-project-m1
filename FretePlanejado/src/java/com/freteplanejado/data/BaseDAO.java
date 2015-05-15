package com.freteplanejado.data;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public abstract class BaseDAO<T> {
    public abstract List<T> all();

    public abstract void create(T entity);

    public abstract T retrieve(int id);

    public abstract void update(T entity);

    public abstract boolean delete(int id);

    public abstract T load(ResultSet source) throws SQLException;

    public int executeInsert(String sql, Object... params) throws SQLException {
        PreparedStatement ps = ConnectionFactory.getConnection().prepareStatement(sql,
                Statement.RETURN_GENERATED_KEYS);

        for (int i = 0; i < params.length; i++) {
            ps.setObject(i + 1, params[i]);
        }

        ps.execute();

        ps.getGeneratedKeys();
        ResultSet keys = ps.getGeneratedKeys();
        keys.next();
        return keys.getInt(1);
    }

    public int executeUpdate(String sql, Object... params) throws SQLException {
        PreparedStatement ps = ConnectionFactory.getConnection().prepareStatement(sql,
                Statement.RETURN_GENERATED_KEYS);

        for (int i = 0; i < params.length; i++) {
            ps.setObject(i + 1, params[i]);
        }

        ps.execute();

        ps.getGeneratedKeys();
        ResultSet keys = ps.getGeneratedKeys();
        keys.next();
        return keys.getInt(1);
    }

    public ResultSet executeSql(String sql) throws SQLException {
        PreparedStatement ps = ConnectionFactory.getConnection().prepareStatement(sql);
        return ps.executeQuery();
    }

    public ResultSet executeSql(String sql, Object... params) throws SQLException {
        PreparedStatement ps = ConnectionFactory.getConnection().prepareStatement(sql);
        for (int i = 0; i < params.length; i++) {
            ps.setObject(i + 1, params[i]);
        }

        return ps.executeQuery();
    }
}
