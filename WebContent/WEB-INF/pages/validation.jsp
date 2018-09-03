<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page errorPage="/WEB-INF/pages/error.jsp" %>
<%@ page import="com.campusnumerique.vehiclerental.entity.Car"%>

<fmt:formatDate value="${reservation.dateStart}" var="dateStart" type="date" pattern="MM-dd-yyyy" />
<fmt:formatDate value="${reservation.dateEnd}" var="dateEnd" type="date" pattern="MM-dd-yyyy" />
                            
<!DOCTYPE html>
<html>
	<jsp:include page="/WEB-INF/pages/header.jsp">
		<jsp:param name="title" value="Validation" />
	</jsp:include>
	<body>
		<jsp:include page="/WEB-INF/pages/nav.jsp" />
		
		<div class="container" id="content">
			<h2 class="text-center text-primary">Your reservation is validate</h2><br/>
			<p class="font-weight-bold text-uppercase">Identity</p>
			<div class="row">
				<div class="col-md-6">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">FirstName</div>
				        </div>
						<input type="text" class="form-control" value="${reservation.client.firstName}" style="background-color:white;" disabled>
					</div>
				</div>
				<div class="col-md-6">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">LastName</div>
				        </div>
						<input type="text" class="form-control" value="${reservation.client.lastName}" style="background-color:white;" disabled>
					</div>
				</div>
			</div><br/>
			<p class="font-weight-bold text-uppercase">Vehicle</p>
			<div class="row">
				<div class="col-md-6">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">Brand</div>
				        </div>
						<input type="text" class="form-control" value="${reservation.car.brand}" style="background-color:white;" disabled>
					</div>
				</div>
				<div class="col-md-6">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">Model</div>
				        </div>
						<input type="text" class="form-control" value="${reservation.car.model}" style="background-color:white;" disabled>
					</div>
				</div>
			</div><br/>
			<div class="row">
				<div class="col-md-6">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">Plate Number</div>
				        </div>
						<input type="text" class="form-control" value="${reservation.car.plateNumber}" style="background-color:white;" disabled>
					</div>
				</div>
				<div class="col-md-6">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">Color</div>
				        </div>
						<input type="text" class="form-control" value="${reservation.car.color}" style="background-color:white;" disabled>
					</div>
				</div>
			</div><br/>
			<p class="font-weight-bold text-uppercase">Date</p>
			<div class="row">
				<div class="col-md-4">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">From</div>
				        </div>
						<input type="text" class="form-control" value="${dateStart}" style="background-color:white;" disabled>
					</div>
				</div>
				<div class="col-md-4">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">To</div>
				        </div>
						<input type="text" class="form-control" value="${dateEnd}" style="background-color:white;" disabled>
					</div>
				</div>
				<div class="col-md-4">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">Then</div>
				        </div>
						<input type="text" class="form-control" value="${reservation.dayNumber} day(s)" style="background-color:white;" disabled>
					</div>
				</div>
			</div><br/>
			<p class="font-weight-bold text-uppercase">Kilometer estimate</p>
			<div class="row">
				<div class="col-md-6">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">Km</div>
				        </div>
						<input type="text" class="form-control" value="${reservation.kilometerNumber}" style="background-color:white;" disabled>
					</div>
				</div>
				<div class="col-md-6">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">Additional Km</div>
				        </div>
						<input type="text" class="form-control" value="${reservation.car.kilometerPrice} €" style="background-color:white;" disabled>
					</div>
				</div>
			</div><br/>
		</div>
		<div class="container alert alert-danger" id="content">
			<p class="font-weight-bold text-uppercase">Yours references</p>
			<div class="row">
				<div class="col-md-6">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">Reservation n°</div>
				        </div>
						<input type="text" class="form-control" value="${reservation.reservationNumber}" style="background-color:white;" disabled>
					</div>
				</div>
				<div class="col-md-6">
					<div class="input-group">
				        <div class="input-group-prepend">
				          <div class="input-group-text">Rental Price</div>
				        </div>
						<input type="text" class="form-control" value="${reservation.rentalPrice} €" style="background-color:white;" disabled>
					</div>
				</div>
			</div><br/>
		</div>
	<jsp:include page="/WEB-INF/pages/footer.jsp"/>
	</body>
</html>