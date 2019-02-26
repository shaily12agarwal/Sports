<%-- 
    Document   : index
    Created on : 28 Jul, 2017, 1:44:25 PM
    Author     : Raj
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
    
    <!-- Code for web template  -->
  <title>My Club</title>
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
  
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
  <link href="login/style1.css" rel="stylesheet" type="text/css"/>
  
  
</head>

<body>
    <!--Start of Zendesk Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
$.src="https://v2.zopim.com/?5rTHX8EqgaMFlJGGbAtmxRFox7k4zUI8";z.t=+new Date;$.
type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
</script>
<!--End of Zendesk Chat Script-->
  <div id="main">
    
	<div id="menubar">
      <ul id="menu">
        <li class="current"><a href="index.jsp">Home</a></li>
              <li><a href="testimonials.jsp">Testimonials</a></li>
        <li><a href="projects.jsp">Projects</a></li>
        <li><a href="contact.jsp">Contact Us</a></li>
        <li><a href="clubs.jsp">Our Clubs</a></li>
        <li><a href="Feedback.jsp">Feedback</a></li>
        <li><a href="Reviews.jsp">Reviews</a></li>
      </ul>
    </div><!--close menubar-->	

    <div id="slideshow">
	  <ul class="slideshow">
        <li class="show"><img width="920" height="250" src="images/Badmin1.jpeg" alt="&quot;Passion of Badminton&quot;" /></li>
        <li><img width="920" height="250" src="images/Badmin2.jpeg" alt="&quot;Game of shuttles&quot;" /></li>
      </ul> 
    </div><!--close slidesho-->		  
	
	<div id="header">
	  <div id="banner">
	    <div id="welcome">
	      <h1>Welcome To Club
              </h1>
	    </div><!--close welcome-->
	  </div><!--close banner-->
    </div><!--close header-->
    
	<div id="site_content">		
	 
	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Visitor Count</h2>
            <p><a href="http://www.reliablecounter.com" target="_blank"><img src="http://www.reliablecounter.com/count.php?page=clubreaservation.com&digit=style/plain/7/&reloads=0" alt="" title="" border="0"></a><br /><a href="http://" target="_blank" style="font-family: Geneva, Arial; font-size: 9px; color: #330010; text-decoration: none;"></a></p>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->     		
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Latest Update</h2>
            <h3>August 2018</h3>
            <p>The New club open in Indore......Have a look there.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->   
        <div class="sidebar">
          <div class="sidebar_item">
            <h2>Contact</h2>
            <h3>Phone: +91 9144189189</h3>
            <h3>Email: <a href="mailto:jainr8369@gmail.com">jainr8369@gmail.com</a></h3>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
       </div><!--close sidebar_container-->		 
	  
         <div id="content">
        <div class="content_item">
		  <h1>Welcome to Ultimate clubs</h1> 
                  <p>This sports club is just epic. We haven?t seen any better well maintained sports clubs in Bangalore like Play. It has almost all the sports facility that you want.Starting from coaching to tournaments they just have everything. The classy badminton courts here just cannot be missed.</p>
              
        <div id="tabs">
  <ul>
    <li><a href="#tabs-1">Admin</a></li>
    <li><a href="#tabs-2">Owner</a></li>
    <li><a href="#tabs-3">Member</a></li>
  </ul>
  <div id="tabs-1">
    <div class="container">
	<section id="content1">
            <form action="AdminServlet">
			<h1>Admin Login</h1>
			<div>
                            <input type="text" placeholder="Username" name="username" required="" id="username" />
			</div>
			<div>
				<input type="password" placeholder="Password" name="password" required="" id="password" />
			</div>
                                 
                       	<div>
				<input type="submit" value="Log in" />
				<a href="#">Lost your password?</a>
				<a href="#">Register</a>
			</div>
		</form><!-- form -->
                <div class="button">
		</div><!-- button -->
	</section><!-- content -->
</div>
  </div>
            
  <div id="tabs-2">
        <div class="container">
	<section id="content1">
		<form action="owner.jsp">
			<h1>Owner Login</h1>
			<div>
				<input type="text" placeholder="Username" name="user_id" required="" id="username" />
			</div>
			<div>
				<input type="password" placeholder="Password" name="user_password" required="" id="password" />
			</div>
			<div>
				<input type="submit" value="Log in" />
				<a href="#">Lost your password?</a>
                                <a href=clubregistration.jsp>Register </a>
			</div>
		</form><!-- form -->
		<div class="button">
		</div><!-- button -->
	</section><!-- content -->
</div>
     </div>
            
            
            
  <div id="tabs-3">
         <div class="container">
	<section id="content1">
            <%
            String sportid=request.getParameter("sportid");
            if(sportid==null){
                sportid="abc";
            }
            %>
		<form action="member">
                    
                    
			<h1>Member Login</h1>
			<div>
				<input type="text" placeholder="Username" required="" name="username" id="username"/>
			</div>
			<div>
                            <input type="text"  name="sportid" value="<%=sportid%>" style="display: none"/>
			</div>
			<div>
				<input type="password" placeholder="Password" required="" name="password" id="password"/>
			</div>
			<div>
				<input type="submit" value="Log in" />
				<a href="forgotpassword.jsp">Lost your password?</a>
				<a href="memberRegistration.jsp">Register</a>
			</div>
			<div>
                            <br>
                            <font color="red"><h4><span>${error}</span></h4>
			</div>
                        
		</form><!-- form -->
		<div class="button">
		</div><!-- button -->
	</section><!-- content -->
</div>
  </div>
</div>
              	  
		</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content--> 
        

    
	<div id="content_grey">
	  <div class="content_grey_container_box">
		<h4>Latest Blog Post</h4>
	    <p>I was so inspired if saina nehwal could get to the quarter finals and almost get a bronze why couldn't i?.</p>
		<div class="readmore">
		  <a href="#">Read more</a>
		</div><!--close readmore-->
	  </div><!--close content_grey_container_box-->
      <div class="content_grey_container_box">
       <h4>Latest News</h4>
	    <p>Badminton is a racquet sport played using racquets to hit a shuttlecock across a net. Although it ... Ball badminton.</p>
	    <div class="readmore">
		  <a href="#">Read more</a>
		</div><!--close readmore-->
	  </div><!--close content_grey_container_box-->
          
      <div class="content_grey_container_boxl">
		<h4>Latest Projects</h4>
	    <p> The cricket club is going to be ...........          announced earlier......</p>
	    <div class="readmore">
		  <a href="#">Read more</a>
		</div><!--close readmore-->	  
	  </div><!--close content_grey_container_box1-->      
	  <br style="clear:both"/>
    </div><!--close content_grey-->   
 
  </div><!--close main-->
  
  <div id="footer">

  </div><!--close footer-->  
  
</body>
</html>