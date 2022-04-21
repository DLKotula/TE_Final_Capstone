<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="common/header.jsp" %>

<h1>Take a look at what others thought of this Book!</h1>

<c:url var="imgSource" value="/etc/forDummies.png"/>
<img src="${imgSource}" alt="Squirrel Cigar Parties for DUMMIES">

<br>
<br>

<c:forEach var="result" items="${reviews}">

    <div class="posts">
        <h3> ${result.title}</h3>
        <p>by ${result.username}</p>
        <p>${result.dateSubmitted.toLocalDate()}</p>

        <c:forEach begin="1" end="${result.rating}" var="rating">

                <img src="etc/star.png">

        </c:forEach>
<br>
        <p>${result.text}</p>
    </div>

</c:forEach>

<%@include file="common/footer.jsp" %>