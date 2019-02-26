<%@page import="com.universal.dao.ClubDao"%>
<%@page import="com.universal.dto.Club"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
</style>
</head>
<body>
   <%
        
        int id=Integer.parseInt(request.getParameter("clubid"));
        Club club=ClubDao.getClubFromDatabse(id);
        String address=club.getAddress();
        String openingTime=club.getOpeningTime();
        String closingTime=club.getClosingTime();
        String clubName=club.getClubname();
        String clubImage=club.getClubImage();
        
        %>
        
<h2 style="text-align:center">User Profile Card</h2>

<div class="card">
    <img src="upload/<%=clubImage%>"  style="width:100%">
  <h1><%=clubName%></h1>
  <p class="title">CEO & Founder, Akash Singh</p>
  <p>Best Club in Indore</p>
  <p>Opening Time : <%=openingTime%></p>
  <p>Closing Time : <%=closingTime%></p>
  <p>Address : <%=address%></p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
 </div>
 <p><button>Contact</button></p>
</div>
<br>
<br>
<div class="jumbotron text-center">

  
<div class="container">
  <div class="row">
    <div class="col-sm-4">
     
      <img src="image1/c.jpg" width="300px" height="250px" style="border: 2px red">
      <a href="sportdetails.jsp?sportid=1">  <h3>Cricket</h3></a>
    </div>
    <div class="col-sm-4">
  
      <img src="image1/f.jpg" width="300px" height="250px" style="border: 2px red">
            <a href="sportdetails.jsp?sportid=1">  <h3>FootBall</h3></a>

    </div>
    <div class="col-sm-4">
     <img src="image1/cy.jpg" width="300px" height="250px" style="border: 2px red">
           <a href="sportdetails.jsp?sportid=1">  <h3>Cycling</h3></a>

    </div>
      <div class="row">
    <div class="col-sm-4">
      <img src="image1/bb.jpg" width="300px" height="250px" style="border: 2px red">
            <a href="sportdetails.jsp?sportid=1">  <h3>Bowlling Ball</h3></a>

    </div>
    <div class="col-sm-4">
    <img src="image1/chess.jpg" width="300px" height="250px" style="border: 2px red">
      <a href="sportdetails.jsp?sportid=1">  <h3>Chess</h3></a>

    </div>
    <div class="col-sm-4">
     <img src="image1/bad.jpg" width="300px" height="250px" style="border: 2px red">
      <a href="sportdetails.jsp?sportid=1">  <h3>Tennis</h3></a>

    </div>
</body>
</html>
