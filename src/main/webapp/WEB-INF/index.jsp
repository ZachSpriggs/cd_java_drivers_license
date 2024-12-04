<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>   
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Create a person</title>
</head>
<body>

<div class="container">
        <nav class='navbar navbar-light bg-dark text-white'>
            <a class='navbar brand text-white' href="/">Dashboard</a>
            <a class='navbar brand text-white' href="/license">Create License</a>
            <h3>Create a person</h3>
        </nav>
         <form:form action="/person" method="POST" modelAttribute = "person">
            <div class="row">
                <div class="col-4">
                    <p>
  					<form:label path = "firstName">First Name:</form:label>
  					<form:errors path = "firstName"/>
  					<form:input path = "firstName" type = "text"/>
  					</p>
                    <p>
  					<form:label path = "lastName">Last Name:</form:label>
  					<form:errors path = "lastName"/>
  					<form:input path = "lastName" type = "text"/>
  					</p>
                </div>
            </div>
            <div class='row'>
                <input type="hidden" name="_method">
                <button class='btn btn-outline-success ml-3 mt-3'>Add</button>
            </div>
        </form:form>
    </div>

</body>
</html>