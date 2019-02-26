<%-- 
    Document   : ourwork
    Created on : 28 Jul, 2017, 2:57:30 PM
    Author     : Raj
--%>


<%@page import="java.util.List"%>


<%@page import="com.universal.dao.ClubDao"%>
<%@page import="com.universal.dto.Club"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>         
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>ARaynorDesign Template</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" href="style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
  
  <!-- Data Table tag start -->
 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
  
<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>      
  
</head>
  <script>
      
      $(document).ready(function() {
    var table = $('#example').DataTable();
 
    $('#example tbody').on( 'click', 'tr', function () {
        $(this).toggleClass('selected');
    } );
 
    $('#button').click( function () {
        alert( table.rows('.selected').data().length +' row(s) selected' );
    } );
} );
                 
      </script>
  <div id="main">
	
	<div id="menubar">
      <ul id="menu">
        <li><a href="index.jsp">Home</a></li>
        <li class="current"><a href="admin.jsp">Admin</a></li>
        <li><a href="testimonials.jsp">Testimonials</a></li>
        <li><a href="projects.jsp">Projects</a></li>
        <li><a href="contact.jsp">Contact Us</a></li>
      </ul>
    </div><!--close menubar-->	

    <div id="slideshow">
	  <ul class="slideshow">
        <li class="show"><img width="920" height="250" src="images/Badmin1.jpeg" alt="&quot;Passion of Badminton&quot;" /></li>
        <li><img width="920" height="250" src="images/Badmin2.jpeg" alt="&quot;Enter your caption here&quot;" /></li>
      </ul> 
    </div><!--close slidesho-->		  
	
	<div id="header">
	  <div id="banner">
	    <div id="welcome">
	      <h1>Welcome Admin</h1>
	    </div><!--close welcome-->
	  </div><!--close banner-->
    </div><!--close header-->
    
	<div id="site_content">	
	
	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>New Website</h2>
            <p>Welcome to our new website.</p>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->     		
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Latest Update</h2>
            <h3>June 2012</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->   
        <div class="sidebar">
          <div class="sidebar_item">
            <h2>Contact</h2>
            <h3>Phone: +44 (0)1234 567891</h3>
            <h3>Email: <a href="mailto:info@youremail.co.uk">info@youremail.co.uk</a></h3>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
       </div><!--close sidebar_container-->	
        
	  <div id="content">
        <div class="content_item">
<%     
    
        int id;
        String clubName, otime, ctime, address;
       
        
        List<Club> list=  ClubDao.getClubListFromDatabse();
        request.setAttribute("list",list);
           
        for(Club club:list){
             
        id= club.getClubid();
        clubName= club.getClubname();
        otime= club.getOpeningTime();
        ctime= club.getClosingTime();
        address= club.getAddress();
           
%>
  
       <table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Club Id</th>
                <th>Club Name</th>
                <th>Opening time</th>
                <th>Closing time</th>
                <th>Address</th>
                <th>Delete</th>
            </tr>
        </thead>
           <tbody>
            <tr>
                <td><%=id%></td>
                <td><%=clubName%></td>
                <td><%=otime%></td>
                <td><%=ctime%></td>
                <td>Address</td>
                <td><a href="DeleteClub?id=<%=id%>"><img style="height: 50px; width:40px;" src="image1/Delete.png" alt=""/></a></td>
                
            </tr>
           </tbody>
       </table>


<%}%> 










  
    
        
        
        
        </div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content-->
	
	<div id="content_grey">
	  <div class="content_grey_container_box">
		<h4>Latest Blog Post</h4>
	    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
		<div class="readmore">
		  <a href="#">Read more</a>
		</div><!--close readmore-->
	  </div><!--close content_grey_container_box-->
      <div class="content_grey_container_box">
       <h4>Latest News</h4>
	    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
	    <div class="readmore">
		  <a href="#">Read more</a>
		</div><!--close readmore-->
	  </div><!--close content_grey_container_box-->
      <div class="content_grey_container_boxl">
		<h4>Latest Projects</h4>
	    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
	    <div class="readmore">
		  <a href="#">Read more</a>
		</div><!--close readmore-->	  
	  </div><!--close content_grey_container_box1-->      
	  <br style="clear:both"/>
    </div><!--close content_grey-->   
 
  </div><!--close main-->
  
  <div id="footer">
	  <a href="http://validator.w3.org/check?uri=referer">Valid XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">Valid CSS</a> | <a href="http://fotogrph.com/">Images</a> | website template by <a href="http://www.araynordesign.co.uk">ARaynorDesign</a>
  </div><!--close footer-->  
  
  </body>
</html>
