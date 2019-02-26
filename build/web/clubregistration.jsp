<%-- 
    Document   : Registation
    Created on : 13 Jul, 2018, 2:33:53 PM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            input[type=file] {
   
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

            input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=submit] {
    width: 40%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
input[type=reset] {
    width: 40%;
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
    background-image: url("image1/b1.jpg");
    -webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;    
    
    /* optional, center the image */
}
table,tr,th
{
width:100px;
height:45px;
padding:20px;
}
           
        </style>
    </head>
    <body>
        <center>
            <h1 style="color: white">Registered Now!</h1>
           <hr>
            <form method="post" enctype="multipart/form-data" action="clubsignup">
                <table>
                <br>
                <br>
                
                
                <tr>
                    <td style="color:  #66cc00"> ClubName:</td>
                    <td><input type="text" placeholder="Enter Clubname" name="clubname"></td>
                </tr>
                <tr>
                    <td style="color: #66cc00">ClubOpeningTime:</td>
                    <td><input type="text" value="" name="openingtime" placeholder="00:00"></td>
                </tr>
                <tr>
                    <td style="color:  #66cc00">ClubClosingTime:</td>
                    <td><input type="text" value="" name="closingtime" placeholder="00:00"></td>
                </tr>
                <tr>
                    <td style="color:  #66cc00">Address:</td>
                    <td><input type="text" placeholder="Club Address" name="address"></td>
                </tr>
               
            <tr>
                <td style="color: #66cc00">Image:</td>
                <td><input type="file" name="ImageFile"></td>
            </tr>
            <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Submit">
                        <input type="reset" value="Reset">
                    </td>
                </tr>
                
            </table>
           
        </form>            
            </center>
    </body>
</html>
