package com.freteplanejado.data;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    private static Connection connection;
    private static String dbName = "frete_planejado";
    private static String dbUser = "root";
    private static String dbPass = null;
     
    public static Connection getConnection() {
        if (connection == null){
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/" + dbName + "?useUnicode=true&characterEncoding=UTF-8&character_set_server=utf8mb4";
                ConnectionFactory.connection = DriverManager.getConnection(url, dbUser, dbPass);
            }
            catch(Exception e)
            {
                System.out.println("Erro na inicialização");
                e.printStackTrace();
            }
        }
        
        return connection;
    }
}
