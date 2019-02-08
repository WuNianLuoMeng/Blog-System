package Server;
import USER.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LOGIN
 */
@WebServlet("/LOGIN")
public class LOGIN extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LOGIN() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String UserName=request.getParameter("username");
		String PassWord=request.getParameter("password");		
		register user=new register();
		user.setUsername(UserName);
		user.setPassword(PassWord);
		judge_user test=new judge_user();
		boolean flog=test.judge(user);
		if(flog==true) {
			other.username=UserName;
			request.setAttribute("UserName",UserName);
			response.sendRedirect("Main.jsp");
		}
		else {
			other.msg="用户名或密码错误!";
			//request.setAttribute("errormessage","用户名或密码错误!");
			response.sendRedirect("Login.jsp");
		}				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
