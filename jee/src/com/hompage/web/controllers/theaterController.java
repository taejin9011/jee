package com.hompage.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.serviceimpls.HelloServiceImpl;
import com.homepage.web.services.HelloService;

/**
* Servlet implementation class theaterController
*/
@WebServlet("/theater.do")
public class theaterController extends HttpServlet {
     private static final long serialVersionUID = 1L;
      
     /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          if(request.getServletPath().equalsIgnoreCase("/theater.do")){
          goTheater(request, response);
          }else{
               System.out.println("페이지 없음");
          }
     }
    
    
     private void goTheater(HttpServletRequest request,
               HttpServletResponse response) throws ServletException, IOException {
         
          String[] property = {"age","theater","seat","title","date","time","price","poster","nowFilm"};
          for(int i=0 ; i<property.length; i++){
               String value = request.getParameter(property[i]);
               request.setAttribute(property[i], value);
          }         

          RequestDispatcher dispatcher = request.getRequestDispatcher("/views/theater/inputPage.jsp");  // 절대경로
          dispatcher.forward(request, response);
     }
}