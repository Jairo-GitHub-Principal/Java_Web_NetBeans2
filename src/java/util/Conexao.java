/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author admin
 */
public class Conexao {
            public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	    public static final String URL = "jdbc:mysql://localhost:3306/cadastros";
	    public static final String USER = "root";
	    public static final String PASS = "";
    
              public Connection conexao() throws ClassNotFoundException {
                 Connection con = null;
                 
	        try {
                     
                    Class.forName(DRIVER);
                    con = DriverManager.getConnection(URL,USER,PASS);
                    System.out.println("br.com.DAO.DB conectado");
                   
	        } catch (SQLException e) {
	           throw new RuntimeException("Erro na conex�o com o banco de dados", e);
	        }               
                 return con;
	    }
}
