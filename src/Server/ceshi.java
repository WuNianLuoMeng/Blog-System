package Server;

import java.awt.datatransfer.StringSelection;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ceshi
 */
@WebServlet("/ceshi")
public class ceshi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ceshi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
//		String s=request.getParameter("T");
//		System.out.println(request.getRealPath(""));
		
		
		 //�����������Ӧ�ı���ͳһΪUTF-8
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        //�õ��༭��������
        String content = request.getParameter("T");
        //�����Ϊ��
        if(content != null){
            //���������ý�����
        	System.out.println(content);
            request.setAttribute("content",content);
            //ת����content.jsp
            request.getRequestDispatcher("content.jsp").forward(request, response);
        }else{
            response.getWriter().append("����Ϊ��!");
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
