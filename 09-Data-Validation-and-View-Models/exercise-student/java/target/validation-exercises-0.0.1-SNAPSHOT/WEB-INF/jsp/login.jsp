<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="common/header.jspf" %>

<style>
    .error {
        color:red;
    }
</style>

<h2>Login</h2>

<c:url var="loginFormUrl" value="/login"/>
<form:form method="post" action="${loginFormUrl}" modelAttribute="login">

    <div>
        <label for="email">Email</label>
        <form:input path="email" placeholder ="enter email"/>
        <form:errors path="email" cssClass="error"/>
    </div>
    <div>
        <label for="password">Password</label>
        <form:input path="password" placeholder ="enter password"/>
        <form:errors path="password" cssClass="error"/>
    </div>
    <br>
    <button type="submit">Submit</button>

</form:form>

<%@include file="common/footer.jspf" %>