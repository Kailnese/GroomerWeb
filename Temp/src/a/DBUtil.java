package a;

import java.sql.*;

public class DBUtil { 
	 boolean bInited = false;
	 //��������
	 public void initJDBC() throws ClassNotFoundException {
	 //����MYSQL JDBC��������
			 Class.forName("com.mysql.jdbc.Driver");
			 bInited = true;
			 System.out.println("Success loading Mysql Driver!");
	 }
		
	 public Connection getConnection() throws ClassNotFoundException,SQLException{
			 if(!bInited){
				 initJDBC();
			 }
		 //����URLΪ jdbc:mysql//��������ַ/���ݿ���
		 //�����2�������ֱ��ǵ�½�û���������
		 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/���ݿ���","�û���","����");
		 return conn;
	 }
	
	
	 public boolean loginSuccess(String userName,String password){
		 boolean returnValue = false;
		 String sql = "SELECT * FROM login";
		 Connection conn = null;
		 Statement stmt = null;
		 ResultSet rs = null;
		
		 try{
			 conn = getConnection();
			 stmt = conn.createStatement();
			 rs = stmt.executeQuery(sql);
			 while(rs.next()){
				 String userNameInDB = rs.getString("username");
				 String passwordInDB = rs.getString("password");
				 if(userNameInDB.equals(userName) && passwordInDB.equals(password)){
					 returnValue = true;
					 break;
				 }
			 }
		 }catch (ClassNotFoundException e) {
			 e.printStackTrace();
		 }catch (SQLException e) {
			 e.printStackTrace();
		 }
		 return returnValue;
	
	 }
}