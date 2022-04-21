<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="common/header.jspf" %>

<style>
    .error {
        color: red;
    }
</style>

<h2>Login</h2>

<c:url var="registerFormUrl" value="/register"/>
<form:form method="post" action="${registerFormUrl}" modelAttribute="register">

    <div>
        <label for="firstName">First Name</label>
        <form:input path="firstName" placeholder="enter First name"/>
        <form:errors path="firstName" cssClass="error"/>
    </div>
    <div>
        <label for="lastName">Last Name</label>
        <form:input path="lastName" placeholder="enter Last name"/>
        <form:errors path="lastName" cssClass="error"/>
    </div>
    <div>
        <label for="email">Email</label>
        <form:input path="email" placeholder="enter email"/>
        <form:errors path="email" cssClass="error"/>
    </div>
    <div>
        <label for="emailConfirmation">Confirm Email</label>
        <form:input path="emailConfirmation" placeholder="confirm email address"/>
        <form:errors path="emailConfirmation" cssClass="error"/>
    </div>
    <div>
        <label for="password">Password</label>
        <form:input path="password" placeholder="enter email"/>
        <form:errors path="password" cssClass="error"/>
    </div>
    <div>
        <label for="passwordConfirmation">Confirm Password</label>
        <form:input path="passwordConfirmation" placeholder="confirm password"/>
        <form:errors path="passwordConfirmation" cssClass="error"/>
    </div>
    <div>
        <label for="birthDate">Birthday</label>
        <form:input path="birthDate" placeholder="enter birth date"/>
        <form:errors path="birthDate" cssClass="error"/>
    </div>
    <div>
        <label for="numberOfTickets"># of Tickets</label>
        <form:input path="numberOfTickets" placeholder="enter number of tickets"/>
        <form:errors path="numberOfTickets" cssClass="error"/>
    </div>
    <br>
    <button type="submit">Submit</button>


</form:form>
<%@include file="common/footer.jspf" %>