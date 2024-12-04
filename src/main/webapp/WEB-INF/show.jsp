<%@ page isErrorPage="true" %>   
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Person</title>
</head>
<body>

	<div class = "container">
	<h1><c:out value = "${person.firstName}"/> <c:out value = "${person.lastName}"/></h1>
		<p>License Number: 00000<c:out value = "${person.license.id}"/></p>
		<p>State: <c:out value = "${person.license.state}"/></p>
		<p>Expiration Date: <c:out value = "${person.license.expirationDate}"/></p>
	</div>
	
</body>
</html>