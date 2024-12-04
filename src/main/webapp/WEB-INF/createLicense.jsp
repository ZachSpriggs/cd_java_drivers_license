<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>   
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Create a license</title>
</head>
<body>

<div class="container">
        <nav class='navbar navbar-light bg-dark text-white'>
            <a class='navbar brand text-white' href="/">Dashboard</a>
            <h3>Create a license</h3>
        </nav>
        
        <form:form action="/createLicense" method="POST" modelAttribute = "license">
            <div class="row">
                <div class="col-4">
                	<form:label path = "person">Person:</form:label>
                	<form:errors path = "person"/>
                	<form:select path = "person">
                    	<c:forEach items = "${people}" var = "person">
                    		<form:option value = "${person.id}"><c:out value = "${person.firstName}"/> <c:out value = "${person.lastName}"/>
                    		</form:option>
                    	</c:forEach>
                    </form:select>
                    <p>
  					<form:label path = "state">State:</form:label>
  					<form:errors path = "state"/>
  					<form:input path = "state" type = "text"/>
  					</p>
                    <p>
  					<form:label path = "expirationDate">Expiration Date:</form:label>
  					<form:errors path = "expirationDate"/>
  					<form:input path = "expirationDate" type = "date"/>
  					</p>
                </div>
            </div>
            <div class='row'>
                <button class='btn btn-outline-success ml-3 mt-3'>Add</button>
            </div>
        </form:form>
        
    </div>

</body>
</html>