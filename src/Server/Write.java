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
 * Servlet implementation class Write
 */
@WebServlet("/Write")
public class Write extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Write() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		register x=new register();
		request.setCharacterEncoding("UTF-8");
		blog article=new blog();		
		article.setUsername(x.USERNAME);
		article.setTitle(request.getParameter("title"));
		article.setContent(request.getParameter("content"));
//		System.out.println(request.getParameter("content"));
		SimpleDateFormat tempDate=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String datetime=tempDate.format(new java.util.Date());
		article.setBlog_date(datetime);
		//System.out.println(article.getBlog_date());
		write_blog T=new write_blog();
		int row=T.addblog(article);
		if(row>0) {
			response.sendRedirect("write_blog_success.jsp");			
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
