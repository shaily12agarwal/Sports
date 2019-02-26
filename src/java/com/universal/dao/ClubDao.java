/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.dao;

import com.universal.db.DBConnection;
import com.universal.dto.Club;
import com.universal.dto.Sports;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rahul
 */
public class ClubDao {

    public static void addClubInDatabse(Club club) {
        try {
            String address = club.getAddress();
            String closingTime = club.getClosingTime();
            String openingTime = club.getOpeningTime();
            String clubImage = club.getClubImage();
            String clubname = club.getClubname();
            System.out.println("=======>" + address);
            System.out.println("=======>" + closingTime);
            System.out.println("=======>" + openingTime);
            System.out.println("=======>" + clubImage);
            System.out.println("=======>" + clubname);
            String sql = "insert into club (clubname,opening_time,closing_time,address,image)  values('" + clubname + "','" + openingTime + "','" + closingTime + "','" + address + "','" + clubImage + "')";
            Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static ArrayList<Club> getClubListFromDatabse() {
        ArrayList<Club> clubList = new ArrayList<>();
        Connection conn = DBConnection.getConnection();
        try {
            String sql = "select * from club ";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                Club club = new Club();
                int id = rs.getInt("clubid");
                String clubname = rs.getString("clubname");
                String openingtime = rs.getString("opening_time");
                String closingtime = rs.getString("closing_time");
                String address = rs.getString("address");
                String clubimage = rs.getString("image");
                club.setAddress(address);
                club.setClubid(id);
                club.setClosingTime(closingtime);
                club.setOpeningTime(openingtime);
                club.setClubImage(clubimage);
                club.setClubname(clubname);
                clubList.add(club);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return clubList;

    }

    public static Club getClubFromDatabse(int id) {
        Club club = new Club();
        Connection conn = DBConnection.getConnection();
        try {
            String sql = "select * from club where clubid=" + id;
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {

                String clubname = rs.getString("clubname");
                String openingtime = rs.getString("opening_time");
                String closingtime = rs.getString("closing_time");
                String address = rs.getString("address");
                String clubimage = rs.getString("image");
                club.setAddress(address);
                club.setClubid(id);
                club.setClosingTime(closingtime);
                club.setOpeningTime(openingtime);
                club.setClubImage(clubimage);
                club.setClubname(clubname);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return club;
    }

    public static int deleteClubById(int id) {
        Connection conn = DBConnection.getConnection();
        int flag = 0;
        try {
            String sql = "delete  from club where clubid=" + id;
            PreparedStatement ps = conn.prepareStatement(sql);
            flag = ps.executeUpdate();
            return flag;

        } catch (Exception e) {
            e.printStackTrace();
            return flag;
        }

    }

    public static Sports getSportData(int id) {
       Sports sport=new Sports();
        Connection conn = DBConnection.getConnection();
        try {
            String sql = "select * from sport where sportid= "+id;
            
           
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
    
                String sportname = rs.getString("sportname");
                int fees = rs.getInt("sportfees");
                String trainer = rs.getString("trainer");
                String image = rs.getString("image");
                String playTime = rs.getString("playtime");
                String about= rs.getString("about");
                
                sport.setSportName(sportname);
                sport.setPlayTime(playTime);
                sport.setFees(fees);
                sport.setTrainer(trainer);
                sport.setAbout(about);
                sport.setImage(image);
                
                System.out.println("==========================sport detail getting successfull===================");             }
            return sport;

        } catch (Exception e) {
              
            e.printStackTrace();
            return sport;
        }
     
    }

}
