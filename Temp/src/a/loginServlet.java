package a; 
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletConfig; 
import javax.servlet.ServletException; 
import javax.servlet.ServletRequest; 
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import Connection.SQL_Connection;
import Connection.getData;


public class loginServlet implements javax.servlet.Servlet{ 
	
 public void doPost(HttpServletRequest request,HttpServletResponse response)
 throws ServletException,IOException, ClassNotFoundException, SQLException{
 String userName = request.getParameter("email");//取得用户名
 String password = request.getParameter("password");//取得密码
 String dogName = request.getParameter("dogName");
 String firstName = request.getParameter("firstName");
 String breed = request.getParameter("breed");
 String lastName = request.getParameter("lastName");
 String dogBirth = request.getParameter("dogBirth");
 String Address = request.getParameter("Address");
 String firstPhone = request.getParameter("firstPhone");
 String minorPhone = request.getParameter("minorPhone");
 
 PrintWriter out = response.getWriter();
 
 if(userName == "" || userName == null || password == "" || password == null) {
	 request.getParameter("password");
	 response.sendRedirect("Register.jsp");
	 return;
 }
 getData get = new getData();
 
 get.connection();
 get.addPerson(userName, password, firstName, lastName, Address, firstPhone, minorPhone);
 get.addDog(userName, dogName, breed, dogBirth);
 
 response.sendRedirect("Login.jsp");
 //response.sendRedirect("Register.jsp");
 }

 public void destroy() { 
 }

 public ServletConfig getServletConfig() {
  return null;
 }

 public String getServletInfo() {
  return null;
 }

 public void init(ServletConfig arg0) throws ServletException {  
 }

 public void service(ServletRequest request, ServletResponse response)
   throws ServletException, IOException {
  HttpServletRequest rq = (HttpServletRequest)request;
  HttpServletResponse rs = (HttpServletResponse) response;
  try {
	doPost(rq,rs);
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

 }
}