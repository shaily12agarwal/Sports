/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.common;

import java.util.Random;
import java.net.*;
import java.io.*;


/**
 *
 * @author rahul
 */
public class CommonToolClass {
    static public String getOtp() {
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 5) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;

    }
    

    static public void SendAndSavaeOtp(String name,String mobile,String otp) {
        try {
          
            String data = "";
            
            data += "username=" + URLEncoder.encode("rahul_sagar", "ISO-8859-1");
            data += "&password=" + URLEncoder.encode("rahul123", "ISO-8859-1");
            data += "&message=" + URLEncoder.encode("Hi "+name+"\n"+ " Your one time password is \n"+otp, "ISO-8859-1");
            data += "&want_report=1";
            data += "&msisdn=91"+mobile;
            System.out.println("=====================>"+mobile);
            System.out.println("=====================>"+otp);
            URL url = new URL("https://bulksms.vsms.net/eapi/submission/send_sms/2/2.0");

            URLConnection conn = url.openConnection();
            conn.setDoOutput(true);
            OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
            wr.write(data);
            wr.flush();
            BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = rd.readLine()) != null) {
                // Print the response output...
                System.out.println(line);
            }
            wr.close();
            rd.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 

}
