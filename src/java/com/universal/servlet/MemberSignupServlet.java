/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.servlet;

import com.universal.common.CommonToolClass;
import com.universal.common.Mailer;
import com.universal.dao.ClubDao;
import com.universal.dao.UserDao;
import com.universal.dto.Club;
import com.universal.dto.User;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author rahul
 */
public class MemberSignupServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
     try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignUp</title>");            
            out.println("</head>");
            out.println("<body>");
                    
            
String path = "";
String itemName = "";
String imgName="";
String name="";
String email="";
String phone="";
String age="";
String address="";
String city="";
String username="";
String password="";
String gender="";

FileItem item = null;
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (isMultipart)
{
FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = upload.parseRequest(request);
Iterator itr = items.iterator();
while (itr.hasNext())
{
 item = (FileItem) itr.next();
if (!item.isFormField())
{
itemName = item.getName();
System.out.println("=================11====="+itemName);
imgName = itemName.toString();
int i = itemName.toString().lastIndexOf("\\");
imgName = imgName.substring(itemName.lastIndexOf("\\")+1);
System.out.println("================22======"+imgName);
System.out.println("================33======"+name);
System.out.println("================44======"+path);
path = getServletConfig().getServletContext().getRealPath("/");
path=path.replace(File.separator+"build","");
    System.out.println("path===============>"+path);
path +="upload"+File.separator+imgName;
System.out.println("************"+path);
File savedFile = new File(path);
item.write(savedFile);
}  
else{
    System.out.println("**************NOT A FORM DATA");
     String fieldName = item.getFieldName();
      
      String fieldData = item.getString();
      
  
      if(fieldName.equals("name"))
      {
                  name = fieldData;
      }
      if(fieldName.equals("email"))
      {
                  email = fieldData;
      }
      if(fieldName.equals("phone"))
      {
                  phone = fieldData;
      }
      if(fieldName.equals("age"))
      {
                  age = fieldData;
      }
      if(fieldName.equals("address"))
      {
                  address = fieldData;
      }
      if(fieldName.equals("city"))
      {
                  city = fieldData;
      }
      if(fieldName.equals("username"))
      {
                  username = fieldData;
      }
      if(fieldName.equals("password"))
      {
                  password = fieldData;
      }
      if(fieldName.equals("gender"))
      {
                  gender = fieldData;
      }

    }
}


}
User user=new User();
            user.setAge(Integer.parseInt(age));
            user.setAddress(address);
            user.setGender(gender);
            user.setName(name);
            user.setPassword(password);
            user.setPhone(phone);
            user.setEmail(email);
            user.setUsername(username);
            user.setGender(gender);
            user.setCity(city);
            user.setImageNmae(imgName);
           
boolean flag=UserDao.addUserInDatabase(user);
if(!flag){
                
    
    response.sendRedirect("index.jsp");
    
}
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
