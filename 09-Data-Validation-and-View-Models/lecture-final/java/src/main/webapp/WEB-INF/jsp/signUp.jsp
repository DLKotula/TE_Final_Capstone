<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Awesome Mailing List</title>
		<style>
			.error {
				color:red;
			}
		</style>
	</head>
	<body>

		<c:url var="mailingListSubmitUrl" value="/signUp"/>
		<form:form method="POST" action="${mailingListSubmitUrl}" modelAttribute="signUp">
<<<<<<< HEAD:module-3/09-Data-Validation-and-View-Models/lecture-student/java/src/main/webapp/WEB-INF/jsp/signUp.jsp
<%--			the modelAttribute binds the modelMap entity to this form --%>
			
=======

>>>>>>> 5dadec0d4cdc076d3bdd3d25ac63f0b455637f5c:module-3/09-Data-Validation-and-View-Models/lecture-final/java/src/main/webapp/WEB-INF/jsp/signUp.jsp
			<div>
				<label for="name">Name</label>
				<form:input path="name"/><br>
				<form:errors path="name" cssClass="error"/>
			</div>
			<div>
				<label for="email">Email Address</label>
				<form:input path="email"/>
				<form:errors path="email" cssClass="error"/>
			</div>
			<div>
				<label for="phone">Phone Number (XXX)XXX-XXXX</label>
				<form:input path="phone"/>
				<form:errors path="phone" cssClass="error"/>
			</div>
			<div>
				<label for="age">Age</label>
				<form:input path="age"/>
				<form:errors path="age" cssClass="error"/>
			</div>
			<div>
				<input type="submit" value="Sign Me Up!"/>
			</div>
		</form:form>
	</body>
</html>
