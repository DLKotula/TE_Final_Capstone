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
    <c:set var="one" value="0"/>
    <c:set var="two" value="1"/>
<%--    <c:set var="addedNumber" value="1"/>--%>
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
</ul>

<c:import url="common/footer.jsp"></c:import>