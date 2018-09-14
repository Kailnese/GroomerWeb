package Connection;

import java.sql.*;
import org.apache.log4j.*;

public class SQL_Connection {
		private static final String url="jdbc:mysql://localhost:3306/spm_project";
		private static final String username="root";
		private static final String password="";
		private static final Logger log = Logger.getLogger(SQL_Connection.class);
		static public Connection getConnection(){
			try{
				Class.forName("com.mysql.jdbc.Driver");
			}catch(ClassNotFoundException e){
				log.error(e, e);
			}
			Connection conn = null;
			
			try{
				conn = DriverManager.getConnection(SQL_Connection.url, SQL_Connection.username, SQL_Connection.password);
			}catch(SQLException e){
				log.error(e, e);
			}
			return conn;
		}

}
