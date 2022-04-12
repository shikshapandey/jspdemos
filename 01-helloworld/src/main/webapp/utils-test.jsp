<%@ page import="com.jspdemo.*" %>
<html>
	<jsp:include page="myheader.html" />
	<body>
		<h3>Testing the utils: <%= HelperUtils.UpperCaseIt("Jsp demo is cool") %></h3>
		<jsp:include page="myFooter.jsp" />
	</body>
</html>