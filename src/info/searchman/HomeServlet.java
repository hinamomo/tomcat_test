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
		
		 System.out.println("GETメソッドで呼び出されました");
		 
		String item1 = "";
		String item2 = "";
		String item3 = "";
		String[] items = new String[3];
		
        //リクエストデータの取得
		item1 = request.getParameter("num1");
		item2 = request.getParameter("num2");
		item3 = request.getParameter("num3");
		
		System.out.println("item1="+item1);
		System.out.println("item2="+item2);
		System.out.println("item3="+item3);
        
        items[0] = itemJudge(item1);
        items[1] = itemJudge(item2);        
        items[2] = itemJudge(item3);
        
        System.out.println("items[0]="+items[0]);
		System.out.println("items[1]="+items[1]);
		System.out.println("items[2]="+items[2]);
		
        //リクエストオブジェクトへの設定
        request.setAttribute("items", items);

		
		//JSPへのフォワード処理
        RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
        rd.forward(request, response);
		
	}

	private String itemJudge(String item) {
	    String item_room = "";
	    
	    switch(item) {
	    case "item_1.png" :
	    	item_room = "item_room_1.png";
	    	break;
	    case "item_2.png" :
	    	item_room = "item_room_2.png";
	    	break;
	    case "item_3.png" :
	    	item_room = "item_room_3.png";
	    	break;
	    case "item_4.png" :
	    	item_room = "item_room_4.png";
	    	break;
	    case "item_5.png" :
	    	item_room = "item_room_5.png";
	    	break;
	    	default :
	    	item_room = "item_room_6.png";
	    	break;
	    }
	    
	    return item_room;
		
	}
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
