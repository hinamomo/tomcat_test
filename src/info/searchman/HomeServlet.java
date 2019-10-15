package info.searchman;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.getWriter().append("Served at: ").append(request.getContextPath());
		 PrintWriter out = response.getWriter();
		 out.println("Hello Servlet");
		

		 
		int num1;
		int num2;
		int num3;
		
        //リクエストデータの取得
        if(null == request.getParameter("num1") || "".equals(request.getParameter("num1"))) {
            num1 = 10;
        }else {
            num1 = Integer.parseInt(request.getParameter("num1"));
        }
        
        //リクエストデータの取得
        if(null == request.getParameter("num2") || "".equals(request.getParameter("num2"))) {
            num2 = 10;
        }else {
            num2 = Integer.parseInt(request.getParameter("num2"));
        }
        
        //リクエストデータの取得
        if(null == request.getParameter("num3") || "".equals(request.getParameter("num3"))) {
            num1 = 10;
        }else {
            num1 = Integer.parseInt(request.getParameter("num3"));
        }
        
        //100倍にする。
        // num1 = num1 * 100;

        //リクエストオブジェクトへの設定
        request.setAttribute("num", num1);

		
		//JSPへのフォワード処理
        RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
        rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
