/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.db;

import static com.universal.db.DBProperties.DRIVER;
import static com.universal.db.DBProperties.PASSWORD;
import static com.universal.db.DBProperties.URL;
import static com.universal.db.DBProperties.USERNAME;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author rahul
 */
public class DBConnection implements DBProperties{
   static Connection conn=null;
    public static Connection getConnection(){
        try{
            Class.forName(DRIVER);
           conn= DriverManager.getConnection(URL, USERNAME, PASSWORD);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return conn;
    }
}