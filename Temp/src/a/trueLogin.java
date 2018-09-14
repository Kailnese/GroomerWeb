package a; 
import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletConfig; 
import javax.servlet.ServletException; 
import javax.servlet.ServletRequest; 
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import Connection.SQL_Connection;
import Connection.getData;


public class trueLogin implements javax.servlet.Servlet{ 
	
 public void doPost(HttpServletRequest request,HttpServletResponse response)
 throws ServletException,IOException, ClassNotFoundException, SQLException{

 String userName = request.getParameter("Login");//取得用户名
 String password = request.getParameter("password");//取得密码
 

 getData get = new getData();
 
 if(userName == null || password == null) {
	 response.sendRedirect("Login.jsp");
 }else {
	 get.connection();
	 boolean userExist = get.detectUser(userName, password);
	 if(userName.equals("root") && password.equals("root")) {
		 request.getRequestDispatcher("jumptoGroomer.jsp").forward(request, response);
		 return;
	 }
	 if(userExist) {
		 Map person = get.getPerson(userName);
		 //System.out.println(person.get("firstName"));
		 request.getSession().setAttribute("userName", person.get("userName")); 
		 request.getSession().setAttribute("cusID", person.get("cusID"));
		 response.sendRedirect("User.jsp");
		 //request.setAttribute("Login", true); 
	 }else {
		 request.setAttribute("error", "用户名或密码错误");
		   
		 request.getRequestDispatcher("Login.jsp").forward(request, response);
	 }
 }
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