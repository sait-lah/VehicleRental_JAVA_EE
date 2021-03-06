<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <%@ page errorPage="/WEB-INF/pages/error.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/pages/header.jsp">
	<jsp:param name="title" value="Cars List" />
</jsp:include>
<body>

	<jsp:include page="/WEB-INF/pages/nav.jsp" />

	<div class="container" id="content">
		<h2 class="text-center text-primary">Cars List</h2><br/>
			<jsp:include page="/WEB-INF/pages/tableCars.jsp"></jsp:include>
	</div>
	
	
	<jsp:include page="/WEB-INF/pages/footer.jsp"/>
	

</body>
</html>