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


public class TimeChoice implements javax.servlet.Servlet{ 
	
 public void doPost(HttpServletRequest request,HttpServletResponse response)
 throws ServletException,IOException, ClassNotFoundException, SQLException{

	 String month = request.getParameter("month");//取得用户名
	 String day = request.getParameter("day");
	 String time = request.getParameter("time");
	 String service = request.getParameter("service");
	 String comment = request.getParameter("comment");
	 
	 getData get = new getData();
	 int ss = (int) request.getSession().getAttribute("cusID");
	 get.connection();
	 
	 get.addAppointment(ss, month, day, time, service,comment);
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