package Server;
import USER.*;
import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class edit_blog
 */
@WebServlet("/edit_blog")
public class edit_blog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public edit_blog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		register x=new register();
		request.setCharacterEncoding("UTF-8");
		blog article=new blog();		
		article.setUsername(x.USERNAME);
		article.setTitle(request.getParameter("title"));
		article.setContent(request.getParameter("content"));
		SimpleDateFormat tempDate=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String datetime=tempDate.format(new java.util.Date());
		article.setBlog_date(datetime);
		EDIT a=new EDIT();
		System.out.println(request.getParameter("Date"));
		int row=a.Edit_Blog(article,new String(request.getParameter("Date").getBytes("ISO-8859-1"),"UTF-8"));
		if(row>0) {
			response.sendRedirect("edit_blog_success.jsp");
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
