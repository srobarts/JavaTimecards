package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DatabaseBean;

/**
 * Servlet implementation class timecardController
 */
@WebServlet("/timecardController")
public class TimecardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DatabaseBean db;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimecardController() {
        super();
    }
    
    /**
	 * servletInit() retrieves database information from web.xml and connects to database
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		String url;
		String driver;
		String username;
		String password;
		
		db = new DatabaseBean();
		
		config = getServletConfig();
		driver = config.getInitParameter("driver");
		url = config.getInitParameter("url");
		username = config.getInitParameter("username");
		password = config.getInitParameter("password");
		
		//connect to database
		db.connect(url, username, password, driver);	
		
	}
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/WEB-INF/jsp-user/start.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
		
		String requestedAction = request.getParameter("action");
		System.out.println("requestedAction: " + requestedAction);
		if(requestedAction.equals("enter_timecard")) {
			url = "/WEB-INF/jsp-user/enter_timecard.jsp";
			dispatcher = getServletContext().getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(requestedAction.equals("check_staff")) {
			url = "/WEB-INF/jsp-manager/check_staff.jsp";
			dispatcher = getServletContext().getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(requestedAction.equals("admin_timecard")) {
			url = "/WEB-INF/jsp-admin/admin_timecard.jsp";
			dispatcher = getServletContext().getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else {
			//do nuttin for now
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}



}
