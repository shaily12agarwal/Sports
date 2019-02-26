<%-- 
    Document   : memberRegistration
    Created on : 16 Jul, 2018, 7:05:20 PM
    Author     : rahul
--%>

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
        
        
        
       
    <center>    <h1 style="color: white">Member Registration </h1></center>>
           
            <hr>
            <form  action="MemberSignupServlet" method="post" enctype="multipart/form-data">
                <table>
                <br>
                <br>
                
                
                <tr>
                    <td style="color: white"> name:</td>
                    <td><input type="text" placeholder="Enter name" name="name"></td>
                </tr>
                <tr>
                    <td style="color: white">email:</td>
                    <td><input type="email" placeholder="Enter Email" name="email"></td>
                </tr>
                <tr>
                    <td style="color: white">phone:</td>
                    <td><input type="text" value="" placeholder="Enter PhoneNo." name="phone"></td>
                </tr>
                <tr>
                    <td style="color:  white">address:</td>
                    <td><input type="text" placeholder=" Address" name="address"></td>
                </tr>
               
            <tr>
                <td style="color: white">age:</td>
                <td><input type="text" placeholder="Enter Age" name="age" ></td>
            </tr>
            <tr>
                <td style="color:white">city:</td>
                    <td>
                        <select name="city">
                 <option></option>
                 <option>Delhi</option>
                 <option>Sachi</option>
                 <option>Kolkata</option>
                 <option>Rajkot</option>
                 <option>Pune</option>
                 <option>Mumbai</option>
                 <option>Nagpur</option>
                 <option>Sagar</option>
                 <option>Indore</option>
                 </select>
            </td>   
            </tr>
            </tr>
            <tr>
                <td style="color:white">gender:</td>
                    
                <td style="color:white">Male <input type="radio" name="gender" value="Male" ></td>
               <td style="color:white"> Female<input type="radio" name="gender" value="Female" ></td>
                                                                                
                </td>
            <tr>
                <td style="color: white">username:</td>
                <td><input type="text" placeholder="Enter UserName" name="username"></td>
            </tr>
             <tr>
                <td style="color: white">password:</td>
                <td><input type="password" placeholder="Enter Password" name="password"></td>
            </tr>
             <tr>
                <td style="color: white">Upload File:</td>
                <td><input type="file" name="ImageFile"></td>
            </tr>

            <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Submit">
                    <td><input type="reset" value="Reset"></td>
                    </td>
                </tr>
                
            </table>
           
        </form>            
    </body>

   
</html>
