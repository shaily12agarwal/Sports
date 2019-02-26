<%-- 
    Document   : Feedback
    Created on : 18 Jul, 2018, 12:43:40 PM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background-color: #2F4F4F;
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

            input[type=submit]  {
                width: 50%;
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                @import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro);

            </style>
        </head>
        <body>
            
           
        <center>  <img src="image1/user.png" height="200" width="200"> <h1 style="color:white">FeedBack...</h1></center>  
            <center>
                <form action="FeedbacksServlet">
                    <table>
                        <tr>

                            <td style="color:white">SelectClub:</td>
                            <td>
                                <select name="clubname"value="SelectClub" >
                                    <option></option>
                                    <option>Tiger Club</option>
                                    <option>Pauls Club</option>
                                    <option>LA Fittness Club</option>
                                    <option>Wii SportClub</option>
                                    <option>Kananook SportClub</option>
                                    <option>The Yacth Club</option>
                                    <option>City SportClub</option>

                                </select>
                            </td>    

                        </tr>
                        <tr>
                        <tr>
                            <td style="color: white"> name:</td>
                            <td><input type="text" placeholder="Enter name" name="name"></td>
                        </tr>
                        <tr>
                            <td style="color: white"> comment:</td>
                            <td ><textarea rows="10" cols="40" name="comment" placeholder="comments......"></textarea>
                        </tr>
                        <tr>
                            <td></td>
                            <td >
                                <input type="submit" value="Send" class="btn">
                            </td>
                        </tr>
                    </table>
            </center>

        </form>


    </body>
</html>
