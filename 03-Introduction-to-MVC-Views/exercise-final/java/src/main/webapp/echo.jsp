<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="common/header.jsp">
    <c:param name="title" value="Echo"></c:param>
</c:import>

<nav id="page-options">
    <ul>
        <c:set var="routeCount" value="10"/>
        <c:set var="routeWord" value="Echo"/>
        <c:url var="echoRoute" value="echo.jsp">
            <c:param value="${ routeCount }" name="count"/>
            <c:param value="${ routeWord }" name="word"/>
        </c:url>
        <li>
            <a href="<c:out value="${ echoRoute }" />">${ routeWord } ${ routeCount }</a>
        </li>

        <c:set var="routeCount" value="20"/>
        <c:set var="routeWord" value="Hello!"/>
        <c:url var="echoRoute" value="echo.jsp">
            <c:param value="${ routeCount }" name="count"/>
            <c:param value="${ routeWord }" name="word"/>
        </c:url>
        <li>
            <a href="<c:out value="${ echoRoute }" />">${ routeWord } ${ routeCount }</a>
        </li>

        <c:set var="routeCount" value="50"/>
        <c:set var="routeWord" value="Goodbye!"/>
        <c:url var="echoRoute" value="echo.jsp">
            <c:param value="${ routeCount }" name="count"/>
            <c:param value="${ routeWord }" name="word"/>
        </c:url>
        <li>
            <a href="<c:out value="${ echoRoute }" />">${ routeWord } ${ routeCount }</a>
        </li>
    </ul>
</nav>

<<<<<<< HEAD:module-3/03-Introduction-to-MVC-Views/exercise-student/java/src/main/webapp/echo.jsp
<ul id="word">
    <c:set var="fontSize" value="${ param.count }"/>
    <c:set var="name" value="${ param.word }"/>
    <c:set var="one" value="1"/>
    <c:forEach begin="0" end="${ fontSize }" var="wordCount">
        <c:choose>
            <c:when test="${ wordCount > 0}">

                <li style="font-size: ${ fontSize }px;">${ name }</li>

                <c:set var="fontSize" value="${ fontSize - one }"/>

            </c:when>
        </c:choose>
    </c:forEach>
=======
<ul>
	<c:set var="word" value="${ param.word }"/>
	<c:set var="font_start" value="${ param.count }"/>
	<c:forEach begin="0" end="${ font_start }" var="font_size">
		<li style="font-size:${ font_start - font_size }px">${ word }</li>
	</c:forEach>
>>>>>>> 5dadec0d4cdc076d3bdd3d25ac63f0b455637f5c:module-3/03-Introduction-to-MVC-Views/exercise-final/java/src/main/webapp/echo.jsp
</ul>

<c:import url="common/footer.jsp"></c:import>