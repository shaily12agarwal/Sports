<%-- 
    Document   : memberRegistration
    Created on : 16 Jul, 2018, 7:05:20 PM
    Author     : rahul
--%>

<%@page import="com.universal.dto.Sports"%>
<%@page import="com.universal.dao.ClubDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            p{
                
                color:white;
            }

            input[type=text], select {
                width: 150%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }



            input[type=password], select {
                width: 150%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            input[type=file], select {
                width: 150%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            input[type=email], select {
                width: 150%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            input[type=submit]  {
                width: 10%;
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }


            body {
                opacity: 1;
                background-image: url("image1/bg.jpg");
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;    

                /* optional, center the image */
            }


        </style>

    </head>
    <body>
        <%
            int id = 0;
            String sname = null, ptime = null, image = null, trainer = null, about = null;
            int fees = 0;
            
            

                id = Integer.parseInt(request.getParameter("sportid"));
                System.out.println(id);
                Sports sport = ClubDao.getSportData(id);
                System.out.println(sport);
                sname = sport.getSportName();
                ptime = sport.getPlayTime();
                fees = sport.getFees();
                trainer = sport.getTrainer();
                about = sport.getAbout();
                image = sport.getImage();

            
        %>



    <center>    <h1 style="color: white">Sports Details </h1></center>

    <hr>

   
<form action="payuform.jsp">
    
             <table>
        <br>
        <br>
        <tr>
            <td style="color: white"> Sport Name:</td>
            <td><p><%=sname%></p></td>
        </tr>
        <tr>
            <td style="color: white">Playing Time:</td>
            <td><p><%=ptime%></p></td>
        </tr>
        <tr>
            <td style="color: white">Sport Fees:</td>
            <td><p name="fees"><%=fees%></p></td>
        </tr>
        <tr>
            <td style="color:  white">Tranier:</td>
            <td><p><%=trainer%></p></td>
        </tr>

        <tr>
            <td style="color: white">About:</td>
            <td><p><%=about%></p></td>
        </tr>
        <tr>
            <td style="color: white">Images:</td>
            <td><p><%=image%></p></td>
        </tr>

  <tr>
            <td style="color: white"></td>
            <td><input type="submit" value ="Confirm"></td>
        </tr>
    </table>
  
        
            <imput type="text" value="<%=fees %>" style="display: none;" name="fees">
             <input type="submit" value ="Confirm"/>
        </form>
        </body>


        </html>
