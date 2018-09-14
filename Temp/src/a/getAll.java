package a;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.SQL_Connection;
import b.*;


/**
 * Servlet implementation class getAll
 */
@WebServlet("/getAll")
public class getAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getAll() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SQL_Connection conn = new SQL_Connection();
		Connection info = conn.getConnection();
		String getCus = "select * from customer as cus join dog as d on cus.id = d.cusID join appointment as app on cus.id = app.cusID;";
		
		List<Customer> cus = new ArrayList<Customer>();
		
		try {
			PreparedStatement st = info.prepareStatement(getCus);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				Customer cust = new Customer();
				String time = rs.getString("month")+" "+rs.getString("day")+"th, "+rs.getString("time");
				cust.setFirstName(rs.getString("firstName"));
				cust.setLastName(rs.getString("lastName"));
				cust.setAppTime(time);
				cust.setDogName(rs.getString("petName"));
				cust.setService(rs.getString("service"));
				cust.setDogBirth(rs.getString("dateOfbirth"));
				cust.setDogBreed(rs.getString("breed"));
				cust.setComment(rs.getString("comment"));
				cus.add(cust);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		request.setAttribute("cusInfo", cus);
		request.getRequestDispatcher("groomer.jsp").forward(request, response);
	}

}
