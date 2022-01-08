package tugasbesar;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Koneksi {  
    private static Connection MysqlConfig;
    public static Connection configDB()throws SQLException{
        try{
            String URL = "jdbc:mysql://localhost:3306/db_kepegawaian";
            String USER = "root";
            String PASS = "";
            
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            MysqlConfig = DriverManager.getConnection(URL, USER, PASS);
        } catch (SQLException e){
            System.out.println("Koneksi Ke Database Gagal" + e.getMessage());
        }
        return MysqlConfig;
    }
    
    static Statement createStatement(){
        throw new UnsupportedOperationException("Not Supported yet.");
    }
    
}
