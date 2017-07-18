<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

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
	
</body>
</html>