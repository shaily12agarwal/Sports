<%@page import="com.universal.dto.Club"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.universal.dao.ClubDao"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Club's</title>
  <meta charset="utf-8">
   <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" href="style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
  <!-- code for template end -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
      <link rel="stylesheet" href="/resources/demos/style.css"></link>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>

<body>

<br>
<br>
<br>
    <%
    String clubName="";
     String clubImage="";
    %>
    <center>
    <table>
    <%
      ArrayList<Club> clubs=  ClubDao.getClubListFromDatabse();
      for (Club club : clubs) {
      int clubId=club.getClubid();
          clubImage=club.getClubImage();
           clubName=club.getClubname();
  %>

       

    <tr>
        
     <td>
      <img src="upload/<%=clubImage%>" width="500px" height="300px" style="border: solid green 2px;">
    <center><font style="font-family: initial"><h3><a href="clubdetails.jsp?clubid=<%=clubId%>"><%=clubName%></h3></a><center>
             </td>
  </tr>
    </center>
 
<%}%>

<table>
    </center>
</body>
</html>
