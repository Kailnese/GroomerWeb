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


public class getPersonInfo implements javax.servlet.Servlet{ 
	
 public void doPost(HttpServletRequest request,HttpServletResponse response)
 throws ServletException,IOException, ClassNotFoundException, SQLException{
		 getData get = new getData();
		 get.connection();
		 
		 String ss = (String) request.getSession().getAttribute("userName");
		 int t = (int) request.getSession().getAttribute("cusID");
		 //System.out.println(ss);
		 Map person = get.getPerson(ss);
		 Map dog = get.getDog(t);
		 Map app = get.getApp(t);
		 //System.out.println(person.get("firstName"));
		 request.getSession().setAttribute("firstName", person.get("firstName"));  
		 request.getSession().setAttribute("lastName", person.get("lastName")); 
		 request.getSession().setAttribute("address", person.get("address")); 
		 request.getSession().setAttribute("phone", person.get("phone")); 
		 request.getSession().setAttribute("minorPhone", person.get("minorPhone")); 
		 request.getSession().setAttribute("userName", person.get("userName")); 
		 request.getSession().setAttribute("passWord", person.get("passWord")); 
		 //request.getRequestDispatcher("UserInfo.jsp").forward(request, response);; 
		 request.getSession().setAttribute("dogName", dog.get("petName"));
		 request.getSession().setAttribute("breed", dog.get("breed"));
		 request.getSession().setAttribute("birth", dog.get("birth"));
		 request.getSession().setAttribute("Time", app.get("AppTime"));
		 request.getSession().setAttribute("service", app.get("service"));
		 
		 response.sendRedirect("UserInfo.jsp");		 
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