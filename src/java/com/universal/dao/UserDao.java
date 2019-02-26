/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.dao;

import com.universal.common.CommonToolClass;
import com.universal.common.Mailer;
import com.universal.db.DBConnection;
import com.universal.dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author rahul
 */
public class UserDao {
    

    public static boolean addUserInDatabase(User user) {
        boolean flag=true;
        try {
        String name = user.getName();
        String email= user.getEmail();
        String phone = user.getPhone();
        String address = user.getAddress();
        String city = user.getCity();
        String username = user.getUsername();
        String password = user.getPassword();
        String gender = user.getGender();
        String photo=user.getImageNmae();
        int age = user.getAge();
        String otp = CommonToolClass.getOtp();
            System.out.println("==========================================>"+user);
        Connection conn = DBConnection.getConnection();
            String sql = "insert into user (name,email,phone,age,address,city,username,password,gender,photo,status,otp) values( '" + name + "','" + email+ "','" + phone + "'," + age + ",'" + address+ "','" + city + "','" +username+ "','" + password+ "','" + gender + "','" + photo + "','false','"+otp+"')";
            PreparedStatement ps = conn.prepareStatement(sql);
           flag=ps.execute();
           
          
            Mailer.send("jainr8369@gmail.com", "paras1008", email, "Mail Verification Club Booking", "http://localhost:8080/ClubRegistrationLive/email?emailkey="+otp);
        Thread.sleep(5000);
        } catch (Exception e) {
            e.printStackTrace();
        }
     return flag;
}
public static  String getImageOfUser(String name){
    String photo="";
            Connection conn = DBConnection.getConnection();
                        try{

String sql="select photo from user where username='"+name+"'";
                            System.out.println("============================"+sql);
        Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(sql);
                while(rs.next()){
                    photo=rs.getString("photo");
                }
            }catch(Exception e){
                e.printStackTrace();
            }
                        return photo;
}

    public static String isUSerValid(String username, String password) {
        String name="";
        Connection conn = DBConnection.getConnection();
        try{
        Statement st = conn.createStatement();
        String sql="select name,username,password from user";
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
            String dbname = rs.getString("name");
            String dbUsername = rs.getString("username");
            String dbpassword = rs.getString("password");
            if(username.equals(dbUsername) && password.equals(dbpassword)){
               name=dbname;
            }
            
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return name;
        }

    public static String getEmailStatus(String username) {
         String status="";
        Connection conn = DBConnection.getConnection();
        try{
        Statement st = conn.createStatement();
        String sql="select status from user";
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
             status = rs.getString("status");  
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return status;
    }

    public static boolean checkAndSetStatus(String emailotp) {
         boolean flag=true;
        Connection conn = DBConnection.getConnection();
        try{
            String sql="update user set status='true' where otp='"+emailotp+"'";
            
             PreparedStatement ps = conn.prepareStatement(sql);
        
           flag=ps.execute();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return flag;
    }

    public static String isUsernameExists(String username) {
         String name="";
        Connection conn = DBConnection.getConnection();
        try{
        Statement st = conn.createStatement();
        String sql="select username,name from user";
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
            String dbUsername = rs.getString("username");  
            
            if(username.equals(dbUsername)){
               name= rs.getString("name");
            }
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return name;
    }

    public static boolean sendAndSaveOtp(String name) {
          boolean flag=true;
        String otp = CommonToolClass.getOtp();
        Connection conn = DBConnection.getConnection();
        try{
            String sql="update user set otp='"+otp+"' where name='"+name+"'";
            
             PreparedStatement ps = conn.prepareStatement(sql);
        
           flag=ps.execute();
           
           if(!flag){
               
               String mobile=getMobile(name);
               
               CommonToolClass.SendAndSavaeOtp(name, mobile, otp);
              flag=true;
           }
           
           
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return flag;
    }

    private static String getMobile(String name) {
         String mobile="";
        Connection conn = DBConnection.getConnection();
        try{
        Statement st = conn.createStatement();
        String sql="select phone from user where name='"+name+"'";
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
         mobile = rs.getString("phone");  
            
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return mobile;
    }
}
