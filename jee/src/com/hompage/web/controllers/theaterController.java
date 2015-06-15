package com.hompage.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class theaterController
 */

@WebServlet("/theater.do")
public class theaterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String age= request.getParameter("age");
		request.setAttribute("age", age);
  		
		/*나이 : <%=request.getAttribute("age") %> <br />
		상영관 : <%=request.getAttribute("theater") %> <br />
		좌석수 : <%=request.getAttribute("seat") %> <br />
		영화제목 : <%=request.getAttribute("title") %> <br />
		상영날짜 : <%=request.getAttribute("date") %> <br />
		상영시간 :  <%=request.getAttribute("time") %> <br />
		영화가격 :  <%=request.getAttribute("price") %> <br />
		포스터 : <%=request.getAttribute("poster") %> <br />
		현재상영장 : <%=request.getAttribute("nowFilm") %> */
		
  		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/theater/theaterMain.jsp");
  		dispatcher.forward(request, response);
	}
}
