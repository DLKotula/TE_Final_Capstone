<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="common/header.jsp">
    <c:param name="title" value="Fibonacci"></c:param>
</c:import>

<nav id="page-options">
    <ul>
        <c:set var="numberOfItems" value="20"/>
        <c:url var="fibonacciRoute" value="fibonacci.jsp">
            <c:param value="${ numberOfItems }" name="max"/>
        </c:url>
        <li>
            <a href="<c:out value="${ fibonacciRoute }" />"><c:out value="${ numberOfItems }"/></a>
        </li>

        <c:set var="numberOfItems" value="50"/>
        <c:url var="fibonacciRoute" value="fibonacci.jsp">
            <c:param value="${ numberOfItems }" name="max"/>
        </c:url>
        <li>
            <a href="<c:out value="${ fibonacciRoute }" />"><c:out value="${ numberOfItems }"/></a>
        </li>

        <c:set var="numberOfItems" value="100"/>
        <c:url var="fibonacciRoute" value="fibonacci.jsp">
            <c:param value="${ numberOfItems }" name="max"/>
        </c:url>
        <li>
            <a href="<c:out value="${ fibonacciRoute }" />"><c:out value="${ numberOfItems }"/></a>
        </li>
    </ul>
</nav>

<ul id="fibonacci">
<<<<<<< HEAD:module-3/03-Introduction-to-MVC-Views/exercise-student/java/src/main/webapp/fibonacci.jsp
    <c:set var="one" value="0"/>
    <c:set var="two" value="1"/>
    <c:set var="addedNumbers" value="${ one + two }"/>
    <c:forEach begin="1" end="${ param.max }" var="number">
        <c:choose>
            <c:when test="${addedNumbers <= number}">
                <li>${addedNumbers}</li>

                <c:set var="one" value="${two}"/>
                <c:set var="two" value="${addedNumbers}"/>
                <c:set var="addedNumbers" value="${one + two}"/>

            </c:when>
        </c:choose>
    </c:forEach>
=======
	<c:set var="fib" value="1" />
	<c:set var="prevFib" value="0" />
	<c:forEach begin="1" end="${ param.max }">
		<c:set var="temp" value="${ fib }" />
		<c:set var="fib" value="${ prevFib + fib }" />
		<c:set var="prevFib" value="${ temp }" />

		<c:if test="${ fib >= 0 && fib <= param.max }">
			<li>${ fib }</li>
		</c:if>
	</c:forEach>
>>>>>>> 5dadec0d4cdc076d3bdd3d25ac63f0b455637f5c:module-3/03-Introduction-to-MVC-Views/exercise-final/java/src/main/webapp/fibonacci.jsp
</ul>

<c:import url="common/footer.jsp"></c:import>