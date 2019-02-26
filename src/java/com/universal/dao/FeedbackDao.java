/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.dao;

import com.universal.db.DBConnection;
import com.universal.dto.Feedback;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author rahul
 */
public class FeedbackDao {

    public static boolean addFeedbackInDatabase(Feedback feedback) {
        boolean flag=true;
        try {
            String name = feedback.getName();
            String clubname = feedback.getClubname();
            String comment = feedback.getComment();
            Connection conn = DBConnection.getConnection();
            String sql = "insert into feedback(name,clubname,comment)values('" + name + "','" + clubname + "','" + comment + "')";
            PreparedStatement ps = conn.prepareStatement(sql);
           flag= ps.execute();
        } catch (Exception e) {
            e.printStackTrace();

        }
return  flag;
    }

    
    public static ArrayList<Review> getAllReviewsFromDatabse(){
      ArrayList<Review> reviewList=new ArrayList();
        try{
              Connection conn = DBConnection.getConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from feedback");
            while(rs.next()){
               int id= rs.getInt("id");
                  String username = rs.getString("name");
                  String clubname = rs.getString("clubname");
                  String comment = rs.getString("comment");
               String photo= UserDao.getImageOfUser(username);
            Review review=new Review();
            review.setId(id);
            review.setUsername(username);
            review.setClubname(clubname);
            review.setComment(comment);
            review.setImage(photo);
            reviewList.add(review);
            
            }
            
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return reviewList;
    }
    
}
