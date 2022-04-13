<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*, com.jspdemo.Student" %>

<%
	List<Student> data = new ArrayList<Student>();
	data.add(new Student("John", "Doe", false));
	data.add(new Student("Max", "William", true));
	data.add(new Student("John", "Wilson", false));
	data.add(new Student("Dexter", "Mathews", true));
	data.add(new Student("Jane", "McDonell", false));
	pageContext.setAttribute("mystudents", data);
%>

       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>RankHolder</th>
		</tr>
		<c:forEach var="student" items="${mystudents}">
			<tr>
				<td>${student.firstName}</td> 
				<td>${student.lastName}</td>				
				<td>
					<c:if test="${student.rankHolder}">
						Receive Award
					</c:if>
					<c:if test="${not student.rankHolder}">
						-
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>