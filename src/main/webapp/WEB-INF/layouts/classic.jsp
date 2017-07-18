<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss"/>
	<spring:url value="/resources/core/css/demo.css" var="demoCss" />
	<spring:url value="/resources/core/css/now-ui-kit.css" var="nowKitCss" />

	<link href="${bootstrapCss}" rel="stylesheet" />
	<link href="${demoCss}" rel="stylesheet" />
	<link href="${nowKitCss}" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<tiles:insertAttribute name="body" />

	<tiles:insertAttribute name="footer" />
</body>

	<spring:url value="/resources/core/js/jquery.3.2.1.min.js" var="jquery" />
	<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />
	<script type="text/javascript" src="${jquery}"></script>
	<script type="text/javascript" src="${bootstrapJs}"></script>
</html>