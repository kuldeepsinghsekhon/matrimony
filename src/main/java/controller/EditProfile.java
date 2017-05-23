package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DbUtil;

/**
 * Servlet implementation class MessageController
 */
@WebServlet(urlPatterns={"/user/editprofile","/profile"})
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("//WEB-INF//pages//edit_profile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session= request.getSession();
		String user=(String)session.getAttribute("user");
		String first_name=request.getParameter("firstname");
		String last_name=request.getParameter("lastname");
		String	middle_name=request.getParameter("middlename");
		String password=request.getParameter("password");
		String mobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String father_name=request.getParameter("fathername");
		String marital_status=request.getParameter("maritalstatus");
		String country=request.getParameter("country");
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String created_by=request.getParameter("createdby");
		String father_occupation=request.getParameter("fatheroccupation");
		String mother_occupation=request.getParameter("motheroccupation");
		String brothers=request.getParameter("brothers");
			String sisters=request.getParameter("sisters");
			String occupation=request.getParameter("occupation");
			String income=request.getParameter("income");
			String smoking=request.getParameter("smoking");
			String drinking=request.getParameter("drinking");
			String complextion=request.getParameter("complextion");
			String height=request.getParameter("height");
			String weight=request.getParameter("weight");
			String body_type=request.getParameter("bodytype");
			String physical_status=request.getParameter("physicalstatus");
			String blood_group=request.getParameter("bloodgroup");
			String diet=request.getParameter("diet");
			String gann=request.getParameter("gann");
			String birth_sign=request.getParameter("birthsign");
			String manglik=request.getParameter("manglik");
			String birth_place=request.getParameter("birthplace");
			String cast=request.getParameter("cast");
			String sub_cast=request.getParameter("subcast");
			String  religion=request.getParameter("religion");
			String qualification=request.getParameter("qualification");
			String education_detail=request.getParameter("educationdetail");
			String mother_tongue=request.getParameter("mothertongue");
			String aboutme=request.getParameter("aboutme");
			String sql="UPDATE members SET first_name='"+first_name+"',last_name='"+last_name+"',middle_name='"+middle_name+"',password='"+password+"',gender='"+gender
					+"',father_name='"+father_name
					+"',marital_status='"+marital_status
					+"',country='"+country
					+"',state='"+state
					+"',city='"+city
					+"',email='"+email
					+"',address='"+address
					+"',created_by='"+created_by
					+"',father_occupation='"+father_occupation
					+"',mother_occupation='"+mother_occupation
					+"',brothers='"+brothers
					+"',sisters='"+sisters
					+"',occupation='"+occupation
					+"',income='"+income
					+"',smoking='"+smoking
					+"',drinking='"+drinking
					+"',complextion='"+complextion
					+"',height='"+height
					+"',weight='"+weight
					+"',body_type='"+body_type
					+"',physical_status='"+physical_status
					+"',blood_group='"+blood_group
					+"',diet='"+diet
					+"',gann='"+gann
					+"',birth_sign='"+birth_sign
					+"',manglik='"+manglik
					+"',birth_place='"+birth_place
					+"',cast='"+cast
					+"',sub_cast='"+sub_cast
					+"',religion='"+religion
					+"',qualification='"+qualification
					+"',education_detail='"+education_detail
					+"',mother_tongue='"+mother_tongue
					+"',mobile_no='"+mobile
					+"',aboutme='"+aboutme+"' WHERE email='"+user+"'";
			Connection conn=DbUtil.getConnection();
			try {
				Statement stmt=conn.createStatement();
				int i=stmt.executeUpdate(sql);
				if(i>0){
					response.sendRedirect("editprofile");
				}else{
					System.out.println("failed");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
