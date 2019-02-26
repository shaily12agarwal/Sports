<%-- 
    Document   : memberRegistration
    Created on : 16 Jul, 2018, 7:05:20 PM
    Author     : rahul
--%>

<%@page import="com.universal.dao.ClubDao"%>
<%@page import="com.universal.dto.Club"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            

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
    width: 50%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
input[type=reset] {
    width: 150%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 4px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

            
            body {
                 opacity: 1;
    background-image: url("image1/ball.gif");
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
        
       int id=Integer.parseInt(request.getParameter("id"));
       Club club=new Club();
       club=ClubDao.getClubFromDatabse(id);
       
       
       
   
   
   %>     
       
    <center>    <h1 style="color: white">Edit </h1></center>
           
            <hr>
            <form  action="EditServlet" method="post">
                <table>
                <br>
                <br>
                
                
                <tr>
                    <td style="color: white"> clubname:</td>
                    <td><input type="text" placeholder="values" name="clubname"></td>
                </tr>
                <tr>
                    <td style="color: white">openingTime:</td>
                    <td><input type="email" placeholder="values name="openingTime"></td>
                </tr>
                <tr>
                    <td style="color: white">closingtime:</td>
                    <td><input type="text" value="" placeholder="values" name="closingTime"></td>
                </tr>
                <tr>
                    <td style="color:  white">address:</td>
                    <td><input type="text" placeholder=" values" name="address"></td>
                </tr>
               
               
            </table>
           
        </form>            
    </body>

   
</html>
