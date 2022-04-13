<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%
	String[] cities = {"Mumbai", "Delhi", "Hyderabad", "Chennai", "Singapore", "Philadelphia"};
	pageContext.setAttribute("mycities", cities);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<c:forEach var="city" items="${mycities}">
			<li>${city}</li>
		</c:forEach>
	</ul>
</body>
</html>