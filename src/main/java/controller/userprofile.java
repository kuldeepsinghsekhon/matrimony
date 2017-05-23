package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DbUtil;


/**
 * Servlet implementation class userprofile
 */
@WebServlet("/user/profile")
public class userprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userprofile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn=DbUtil.getConnection();
		ResultSet rs=null;
		try {
			PreparedStatement stmt=conn.prepareStatement("select * from members where id=3");
			 rs=stmt.executeQuery();
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		request.setAttribute("rs",rs);
		request.getRequestDispatcher("//WEB-INF//pages//view_profile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("profile.jsp").forward(request, response);
	}

}
