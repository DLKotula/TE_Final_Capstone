<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="common/header.jsp" %>


<h1>Hello, Potential Amazing Reviewer"</h1>

<section>
    <c:url var="reviewInputUrl" value="/inputForm"/>
    <form method="POST" action="${reviewInputUrl}">

        <div class="formInputGroup">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required="required"/>
        </div>
        <br>

        <div class="formInputGroup">
            <label for="rating">Rating:</label>
            <input type="number" name="rating" id="rating" required="required"/>
        </div>
        <br>

        <div class="formInputGroup">
            <label for="title">Review Title:</label>
            <input type="text" name="title" id="title" required="required"/>
        </div>
        <br>

        <div class="formInputGroup">
            <label for="text">Review Text:</label>
            <input type="text" name="text" id="text" required="required"/>
        </div>
        <br>
        <button type="submit">Review the Squirrel!</button>

    </form>
</section>

<%@include file="common/footer.jsp" %>
