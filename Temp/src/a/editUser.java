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


public class editUser implements javax.servlet.Servlet{ 
	
 public void doPost(HttpServletRequest request,HttpServletResponse response)
 throws ServletException,IOException, ClassNotFoundException, SQLException{
		 getData get = new getData();
		 get.connection();
		 
		 int t = (int) request.getSession().getAttribute("cusID");
		 String lastName = request.getParameter("lastName");//取得用户名
		 String firstName = request.getParameter("firstName");
		 String Address = request.getParameter("Address");
		 String phone = request.getParameter("phone");
		 String minorPhone = request.getParameter("minorPhone");
		 String dogName = request.getParameter("dogName");
		 String breed = request.getParameter("breed");
		 String birth = request.getParameter("birth");
		 
		 //System.out.println(person.get("firstName"));
		 get.editPerson(t, firstName, lastName, Address, phone, minorPhone, dogName, breed, birth);
		 
		 response.sendRedirect("User.jsp");		 
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