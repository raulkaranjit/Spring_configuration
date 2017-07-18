<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Demo Test Spring MVC</title>
	<spring:url value="/resources/core/bootstrap.min.css" var="bootstrapCss"/>

	<link href="${bootstrapCss}" rel="stylesheet" />
</head>
<body>
	<h1>${title}</h1>
	<p>
		<c:if test="${not empty name}">
			Hello ${name}
		</c:if>
		<c:if test="${empty name}">
			Hello and Welcome!
		</c:if>
	</p>
	
	<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />
	<script type="text/javascript" src="${bootstrapJs}"></script>
	
</body>
</html>