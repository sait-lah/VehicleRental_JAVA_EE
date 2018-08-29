package com.campusnumerique.vehiclerental.servlet.car;

import java.io.IOException;

import java.sql.SQLException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.campusnumerique.vehiclerental.dao.CarDAO;
import com.campusnumerique.vehiclerental.entity.Car;

/**
 * Servlet implementation class CarServlet
 */

public class CarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CarDAO carDAO = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CarServlet() throws ClassNotFoundException {
		super();
		carDAO = new CarDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		
		RequestDispatcher rd = request.getServletContext().getNamedDispatcher("cars");
				try {
					List<Car> cars = carDAO.findAll();
					request.setAttribute("cars", cars);
					response.setStatus(HttpServletResponse.SC_OK);
					rd.forward(request, response) ;
				
					
				} catch (SQLException | ServletException | IOException e) {
					response.setStatus(HttpServletResponse.SC_NOT_ACCEPTABLE);
					e.printStackTrace();
				}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}