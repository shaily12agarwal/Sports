package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    \n");
      out.write("    <!-- Code for web template  -->\n");
      out.write("  <title>My Club</title>\n");
      out.write("  <meta name=\"description\" content=\"free website template\" />\n");
      out.write("  <meta name=\"keywords\" content=\"enter your keywords here\" />\n");
      out.write("  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("  <script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\n");
      out.write("  <script type=\"text/javascript\" src=\"js/image_slide.js\"></script>\n");
      out.write("  <!-- code for template end -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"/resources/demos/style.css\"></link>\n");
      out.write("  <script src=\"https://code.jquery.com/jquery-1.12.4.js\"></script>\n");
      out.write("  <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>\n");
      out.write("  \n");
      out.write("  <script>\n");
      out.write("  $( function() {\n");
      out.write("    $( \"#tabs\" ).tabs();\n");
      out.write("  } );\n");
      out.write("  </script>\n");
      out.write("  <link href=\"login/style1.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!--Start of Zendesk Chat Script-->\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=\n");
      out.write("d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.\n");
      out.write("_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute(\"charset\",\"utf-8\");\n");
      out.write("$.src=\"https://v2.zopim.com/?5rTHX8EqgaMFlJGGbAtmxRFox7k4zUI8\";z.t=+new Date;$.\n");
      out.write("type=\"text/javascript\";e.parentNode.insertBefore($,e)})(document,\"script\");\n");
      out.write("</script>\n");
      out.write("<!--End of Zendesk Chat Script-->\n");
      out.write("  <div id=\"main\">\n");
      out.write("    \n");
      out.write("\t<div id=\"menubar\">\n");
      out.write("      <ul id=\"menu\">\n");
      out.write("        <li class=\"current\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("              <li><a href=\"testimonials.jsp\">Testimonials</a></li>\n");
      out.write("        <li><a href=\"projects.jsp\">Projects</a></li>\n");
      out.write("        <li><a href=\"contact.jsp\">Contact Us</a></li>\n");
      out.write("        <li><a href=\"clubs.jsp\">Our Clubs</a></li>\n");
      out.write("        <li><a href=\"Feedback.jsp\">Feedback</a></li>\n");
      out.write("        <li><a href=\"Reviews.jsp\">Reviews</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div><!--close menubar-->\t\n");
      out.write("\n");
      out.write("    <div id=\"slideshow\">\n");
      out.write("\t  <ul class=\"slideshow\">\n");
      out.write("        <li class=\"show\"><img width=\"920\" height=\"250\" src=\"images/Badmin1.jpeg\" alt=\"&quot;Passion of Badminton&quot;\" /></li>\n");
      out.write("        <li><img width=\"920\" height=\"250\" src=\"images/Badmin2.jpeg\" alt=\"&quot;Game of shuttles&quot;\" /></li>\n");
      out.write("      </ul> \n");
      out.write("    </div><!--close slidesho-->\t\t  \n");
      out.write("\t\n");
      out.write("\t<div id=\"header\">\n");
      out.write("\t  <div id=\"banner\">\n");
      out.write("\t    <div id=\"welcome\">\n");
      out.write("\t      <h1>Welcome To Club\n");
      out.write("              </h1>\n");
      out.write("\t    </div><!--close welcome-->\n");
      out.write("\t  </div><!--close banner-->\n");
      out.write("    </div><!--close header-->\n");
      out.write("    \n");
      out.write("\t<div id=\"site_content\">\t\t\n");
      out.write("\t \n");
      out.write("\t  <div class=\"sidebar_container\">       \n");
      out.write("\t\t<div class=\"sidebar\">\n");
      out.write("          <div class=\"sidebar_item\">\n");
      out.write("            <h2>Visitor Count</h2>\n");
      out.write("            <p><a href=\"http://www.reliablecounter.com\" target=\"_blank\"><img src=\"http://www.reliablecounter.com/count.php?page=clubreaservation.com&digit=style/plain/7/&reloads=0\" alt=\"\" title=\"\" border=\"0\"></a><br /><a href=\"http://\" target=\"_blank\" style=\"font-family: Geneva, Arial; font-size: 9px; color: #330010; text-decoration: none;\"></a></p>\n");
      out.write("          </div><!--close sidebar_item--> \n");
      out.write("        </div><!--close sidebar-->     \t\t\n");
      out.write("\t\t<div class=\"sidebar\">\n");
      out.write("          <div class=\"sidebar_item\">\n");
      out.write("            <h2>Latest Update</h2>\n");
      out.write("            <h3>August 2018</h3>\n");
      out.write("            <p>The New club open in Indore......Have a look there.</p>         \n");
      out.write("\t\t  </div><!--close sidebar_item--> \n");
      out.write("        </div><!--close sidebar-->   \n");
      out.write("        <div class=\"sidebar\">\n");
      out.write("          <div class=\"sidebar_item\">\n");
      out.write("            <h2>Contact</h2>\n");
      out.write("            <h3>Phone: +91 9144189189</h3>\n");
      out.write("            <h3>Email: <a href=\"mailto:jainr8369@gmail.com\">jainr8369@gmail.com</a></h3>\n");
      out.write("          </div><!--close sidebar_item--> \n");
      out.write("        </div><!--close sidebar-->\n");
      out.write("       </div><!--close sidebar_container-->\t\t \n");
      out.write("\t  \n");
      out.write("         <div id=\"content\">\n");
      out.write("        <div class=\"content_item\">\n");
      out.write("\t\t  <h1>Welcome to Ultimate clubs</h1> \n");
      out.write("                  <p>This sports club is just epic. We haven?t seen any better well maintained sports clubs in Bangalore like Play. It has almost all the sports facility that you want.Starting from coaching to tournaments they just have everything. The classy badminton courts here just cannot be missed.</p>\n");
      out.write("              \n");
      out.write("        <div id=\"tabs\">\n");
      out.write("  <ul>\n");
      out.write("    <li><a href=\"#tabs-1\">Admin</a></li>\n");
      out.write("    <li><a href=\"#tabs-2\">Owner</a></li>\n");
      out.write("    <li><a href=\"#tabs-3\">Member</a></li>\n");
      out.write("  </ul>\n");
      out.write("  <div id=\"tabs-1\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("\t<section id=\"content1\">\n");
      out.write("            <form action=\"AdminServlet\">\n");
      out.write("\t\t\t<h1>Admin Login</h1>\n");
      out.write("\t\t\t<div>\n");
      out.write("                            <input type=\"text\" placeholder=\"Username\" name=\"username\" required=\"\" id=\"username\" />\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<input type=\"password\" placeholder=\"Password\" name=\"password\" required=\"\" id=\"password\" />\n");
      out.write("\t\t\t</div>\n");
      out.write("                                 \n");
      out.write("                       \t<div>\n");
      out.write("\t\t\t\t<input type=\"submit\" value=\"Log in\" />\n");
      out.write("\t\t\t\t<a href=\"#\">Lost your password?</a>\n");
      out.write("\t\t\t\t<a href=\"#\">Register</a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</form><!-- form -->\n");
      out.write("                <div class=\"button\">\n");
      out.write("\t\t</div><!-- button -->\n");
      out.write("\t</section><!-- content -->\n");
      out.write("</div>\n");
      out.write("  </div>\n");
      out.write("            \n");
      out.write("  <div id=\"tabs-2\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("\t<section id=\"content1\">\n");
      out.write("\t\t<form action=\"owner.jsp\">\n");
      out.write("\t\t\t<h1>Owner Login</h1>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<input type=\"text\" placeholder=\"Username\" name=\"user_id\" required=\"\" id=\"username\" />\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<input type=\"password\" placeholder=\"Password\" name=\"user_password\" required=\"\" id=\"password\" />\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<input type=\"submit\" value=\"Log in\" />\n");
      out.write("\t\t\t\t<a href=\"#\">Lost your password?</a>\n");
      out.write("                                <a href=clubregistration.jsp>Register </a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</form><!-- form -->\n");
      out.write("\t\t<div class=\"button\">\n");
      out.write("\t\t</div><!-- button -->\n");
      out.write("\t</section><!-- content -->\n");
      out.write("</div>\n");
      out.write("     </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("  <div id=\"tabs-3\">\n");
      out.write("         <div class=\"container\">\n");
      out.write("\t<section id=\"content1\">\n");
      out.write("            ");

            String sportid=request.getParameter("sportid");
            if(sportid==null){
                sportid="abc";
            }
            
      out.write("\n");
      out.write("\t\t<form action=\"member\">\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("\t\t\t<h1>Member Login</h1>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<input type=\"text\" placeholder=\"Username\" required=\"\" name=\"username\" id=\"username\"/>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div>\n");
      out.write("                            <input type=\"text\"  name=\"sportid\" value=\"");
      out.print(sportid);
      out.write("\" style=\"display: none\"/>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<input type=\"password\" placeholder=\"Password\" required=\"\" name=\"password\" id=\"password\"/>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<input type=\"submit\" value=\"Log in\" />\n");
      out.write("\t\t\t\t<a href=\"forgotpassword.jsp\">Lost your password?</a>\n");
      out.write("\t\t\t\t<a href=\"memberRegistration.jsp\">Register</a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div>\n");
      out.write("                            <br>\n");
      out.write("                            <font color=\"red\"><h4><span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${error}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span></h4>\n");
      out.write("\t\t\t</div>\n");
      out.write("                        \n");
      out.write("\t\t</form><!-- form -->\n");
      out.write("\t\t<div class=\"button\">\n");
      out.write("\t\t</div><!-- button -->\n");
      out.write("\t</section><!-- content -->\n");
      out.write("</div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("              \t  \n");
      out.write("\t\t</div><!--close content_item-->\n");
      out.write("      </div><!--close content-->   \n");
      out.write("\t</div><!--close site_content--> \n");
      out.write("        \n");
      out.write("\n");
      out.write("    \n");
      out.write("\t<div id=\"content_grey\">\n");
      out.write("\t  <div class=\"content_grey_container_box\">\n");
      out.write("\t\t<h4>Latest Blog Post</h4>\n");
      out.write("\t    <p>I was so inspired if saina nehwal could get to the quarter finals and almost get a bronze why couldn't i?.</p>\n");
      out.write("\t\t<div class=\"readmore\">\n");
      out.write("\t\t  <a href=\"#\">Read more</a>\n");
      out.write("\t\t</div><!--close readmore-->\n");
      out.write("\t  </div><!--close content_grey_container_box-->\n");
      out.write("      <div class=\"content_grey_container_box\">\n");
      out.write("       <h4>Latest News</h4>\n");
      out.write("\t    <p>Badminton is a racquet sport played using racquets to hit a shuttlecock across a net. Although it ... Ball badminton.</p>\n");
      out.write("\t    <div class=\"readmore\">\n");
      out.write("\t\t  <a href=\"#\">Read more</a>\n");
      out.write("\t\t</div><!--close readmore-->\n");
      out.write("\t  </div><!--close content_grey_container_box-->\n");
      out.write("          \n");
      out.write("      <div class=\"content_grey_container_boxl\">\n");
      out.write("\t\t<h4>Latest Projects</h4>\n");
      out.write("\t    <p> The cricket club is going to be ...........          announced earlier......</p>\n");
      out.write("\t    <div class=\"readmore\">\n");
      out.write("\t\t  <a href=\"#\">Read more</a>\n");
      out.write("\t\t</div><!--close readmore-->\t  \n");
      out.write("\t  </div><!--close content_grey_container_box1-->      \n");
      out.write("\t  <br style=\"clear:both\"/>\n");
      out.write("    </div><!--close content_grey-->   \n");
      out.write(" \n");
      out.write("  </div><!--close main-->\n");
      out.write("  \n");
      out.write("  <div id=\"footer\">\n");
      out.write("\n");
      out.write("  </div><!--close footer-->  \n");
      out.write("  \n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
