<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="All Actors List"/>

<%@include file="common/header.jspf" %>
<!-- Form goes here -->
<c:url var="formAction" value="/search"/>
<form class="form-inline" method="GET" action="${formAction}">
    <div class="form-group">
        <label for="search"></label>
        <input type="text" name="search" id="search" placeholder="Search">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
</form>

<table class="table">
    <tr>
        <th>Name</th>
    </tr>
    <c:forEach items="${actors}" var="actor">
        <tr>
            <td>
                    ${actor.firstName}
                    ${actor.lastName}
            </td>

            <!-- What do we print here for each actor? -->
        </tr>
    </c:forEach>
</table>
<%@include file="common/footer.jspf" %>