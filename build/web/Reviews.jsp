<%-- 
    Document   : Reviews
    Created on : 18 Jul, 2018, 7:48:45 PM
    Author     : rahul
--%>

<%@page import="com.universal.dto.Feedback"%>
<%@page import="com.universal.dao.Review"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.universal.dao.FeedbackDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery.min.js"></script>
      <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
    a.list-group-item {
    height:auto;
    min-height:220px;
}
a.list-group-item.active small {
    color:#fff;
}
.stars {
    margin:20px auto 1px;    
}
</style>
    </head>
<!------ Include the above in your HEAD tag ---------->
<body>
<div class="container">
    
    <%
            
              ArrayList<Review> reviewList = FeedbackDao.getAllReviewsFromDatabse();
              String clubname="";
              String username="";
              String comment="";
              String photo="";
              for (Review review : reviewList) {
                      clubname=review.getClubname();
                      username=review.getUsername();
                      comment=review.getComment();
                    photo= review.getImage();
                  
              %>
    <div class="row">
		<div class="well">
        <h1 class="text-center">Reviews</h1>
        <div class="list-group">
          <a href="#" class="list-group-item active">
                <div class="media col-md-3">
                    <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive"  src="upload/<%=photo%>" alt="<%=photo%>" >
                    </figure>
                </div>
              
          
              
                <div class="col-md-6">
                    <h4 class="list-group-item-heading"> <%=clubname%> </h4>
                    <p class="list-group-item-text"> <%=comment%>
                    </p>
                </div>
                <div class="col-md-3 text-center">
                    <h2> <small> <%=username%> </small></h2>
                   
                    <div class="stars">
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star-empty"></span>
                    </div>
                   
                </div>
          </a>
         <%}%>
          </a>
        </div>
        </div>
	</div>
</div>
    </body>
</html>
