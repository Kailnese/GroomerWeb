package Connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;


public class getData {
	private static PreparedStatement ps;
	private static ResultSet rs;
	private static SQL_Connection info;
	private static Connection conn;
	
	public static void addAppointment(int userID, String month, String day, String time, String service, String comment) {
		set_Check();
		set_update();
		String addApp = "insert into appointment(cusID, month, day, time, service, comment) values(?,?,?,?,?,?);";
		try {
			PreparedStatement ps = conn.prepareStatement(addApp);
			ps.setInt(1, userID);
			ps.setString(2, month);
			ps.setString(3, day);
			ps.setString(4, time);
			ps.setString(5, service);
			ps.setString(6, comment);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void cancelApp(int userID) {
		String cancel = "delete from appointment where cusID= ?";
		try {
			PreparedStatement ps1 = conn.prepareStatement(cancel);
			ps1.setInt(1, userID);
			ps1.executeUpdate();
			//System.out.println("My id is: "+id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static boolean editApp(int userID, String month, String day, String time) {
		set_Check();
		set_update();
		String cancel = "UPDATE appointment SET month = ?, day = ?, time = ? WHERE cusID = ?";
		try {
			PreparedStatement ps1 = conn.prepareStatement(cancel);
			ps1.setString(1, month);
			ps1.setString(2, day);
			ps1.setString(3, time);
			ps1.setInt(4, userID);
			ps1.executeUpdate();
			//System.out.println("My id is: "+id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	public static Map getApp(int cusID) {
		Map map = new HashMap();
		String getPerson = "select * from appointment where cusID = ?";
		try {
			PreparedStatement ps1 = conn.prepareStatement(getPerson);
			ps1.setInt(1, cusID);
			ResultSet rs1 = ps1.executeQuery();
			rs1.next();
			String ss = rs1.getString("month")+" "+rs1.getString("day")+"th, "+rs1.getString("time");
			map.put("AppTime", ss);
			map.put("month", rs1.getString("month"));
			map.put("day", rs1.getString("day"));
			map.put("time", rs1.getString("time"));
			map.put("service", rs1.getString("service"));
			map.put("comment", rs1.getString("comment"));
			//System.out.println("My id is: "+id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}
	public static void removeAllCustomers() {
		set_Check();
		set_update();
		String removeAllCustomers = "delete from customer;";
		try {
			PreparedStatement ps = conn.prepareStatement(removeAllCustomers);
			int rs = ps.executeUpdate();;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static boolean detectUser(String username, String password) {
		String query = "select password from customer where userName =?";
		if(username == null || username == "" || password == null || password == "") {
			return false;
		}
		try {
			
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ResultSet rs1 = ps.executeQuery();
			rs1.next();
			System.out.println();
			String pass = null;
			if(rs1.getString("passWord") != null || rs1.getString("passWord") != "") {
				pass = rs1.getString("passWord");
			}
			System.out.println(pass);
			if(password.equals(pass)) {
				return true;
			}else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return false;
		}
	}
	public static void removeAllDog() {
		set_Check();
		set_update();
		String removeAllCustomers = "delete from dog;";
		try {
			PreparedStatement ps = conn.prepareStatement(removeAllCustomers);
			int rs = ps.executeUpdate();;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static boolean addPerson(String userName, String passWord, String firstName, String lastName, String address, String phone, String minorPhone) {
		set_Check();
		set_update();
		if(userName == null || userName == "" || passWord == null || passWord == "") {
			return false;
		}
		String addPerson = "INSERT INTO customer (userName,passWord,firstName,lastName,address,phone,minorPhone) values(?,?,?,?,?,?,?);";
		try {
			PreparedStatement ps = conn.prepareStatement(addPerson);
			ps.setString(1, userName);
			ps.setString(2, passWord);
			ps.setString(3, firstName);
			ps.setString(4, lastName);
			ps.setString(5, address);
			ps.setString(6, phone);
			ps.setString(7, minorPhone);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	public static void editPerson(int userID, String firstName, String lastName, String address, String phone, String minorPhone, String petName, String breed, String dateOfbirth) {
		set_Check();
		set_update();
		String editPerson = "update customer set firstName =?, lastName = ?, address = ?, Phone = ?, minorPhone = ? where id = ?";
		String editDog = "update dog set petName = ?, breed = ?, dateOfbirth = ? where cusID = ?";
		try {
			PreparedStatement ps1 = conn.prepareStatement(editPerson);
			ps1.setString(1, firstName);
			ps1.setString(2, lastName);
			ps1.setString(3, address);
			ps1.setString(4, phone);
			ps1.setString(5, minorPhone);
			ps1.setInt(6, userID);
			ps1.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			try {
				PreparedStatement ps2 = conn.prepareStatement(editDog);
				ps2.setString(1, petName);
				ps2.setString(2, breed);
				ps2.setString(3, dateOfbirth);
				ps2.setInt(4, userID);
				ps2.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	public static void addDog(String userName, String petName, String breed, String dateOfbirth) {
		set_Check();
		set_update();
		String getPerson_ip = "select * from customer where userName =?";
		Integer id = 0;
		try {
			PreparedStatement ps1 = conn.prepareStatement(getPerson_ip);
			ps1.setString(1, userName);
			ResultSet rs1 = ps1.executeQuery();
			rs1.next();
			id = rs1.getInt("id");
			//System.out.println("My id is: "+id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String addDog = "INSERT INTO dog (cusID, petName, breed, dateOfbirth) values(?,?,?,?);";
		try {
			PreparedStatement ps = conn.prepareStatement(addDog);
			ps.setInt(1, id);
			ps.setString(2, petName);
			ps.setString(3, breed);
			ps.setString(4, dateOfbirth);
			int rs = ps.executeUpdate();;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void set_Check(){
		//conn = SQL_Connection.getConnection();
		String setCheck = "SET FOREIGN_KEY_CHECKS =? ";
		try {
			PreparedStatement ps1 = conn.prepareStatement(setCheck);
			ps1.setInt(1, 0);
			ResultSet rs1 = ps1.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void set_update(){
		String setUpdate = "SET SQL_SAFE_UPDATES = ?";
		try {
			PreparedStatement ps2 = conn.prepareStatement(setUpdate);
			ps2.setInt(1, 0);
			ResultSet rs2 = ps2.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void connection() throws ClassNotFoundException, SQLException{
		info = new SQL_Connection();
		conn = info.getConnection();
	}
	public static Map getPerson(String username) {
		Map map = new HashMap();
		String getPerson = "select * from customer where userName = ?";
		try {
			PreparedStatement ps1 = conn.prepareStatement(getPerson);
			ps1.setString(1, username);
			ResultSet rs1 = ps1.executeQuery();
			rs1.next();
			map.put("firstName", rs1.getString("firstName"));
			map.put("lastName", rs1.getString("lastName"));
			map.put("address", rs1.getString("address"));
			map.put("phone", rs1.getString("phone"));
			map.put("minorPhone", rs1.getString("minorPhone"));
			map.put("userName", rs1.getString("userName"));
			map.put("passWord", rs1.getString("passWord"));
			map.put("cusID", rs1.getInt("id"));
			//System.out.println("My id is: "+id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}
	public static Map getDog(int cusID) {
		Map map = new HashMap();
		String getDog = "select * from dog where cusID = ?";
		try {
			PreparedStatement ps1 = conn.prepareStatement(getDog);
			ps1.setInt(1, (int) cusID);
			ResultSet rs1 = ps1.executeQuery();
			rs1.next();
			map.put("petName", rs1.getString("petName"));
			map.put("breed", rs1.getString("breed"));
			map.put("birth", rs1.getString("dateOfbirth"));
			//System.out.println("My id is: "+id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		connection();
//		set_Check();
//		set_update();
//		String getPerson = "select * from dog;";
//		try {
//			ps = conn.prepareStatement(getPerson);
//			rs = ps.executeQuery();
//			while(rs.next()){
//				String name = rs.getString("petName")+" "+rs.getString("dateOfbirth");
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		//addPerson("kail6","123456","kai","liu","dada","3131","");
//		addDog("kail6","andy","none","11111111");
		//System.out.println(detectUser("kai","kai"));
		
	}

}
