<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<footer>
    <jsp:useBean id="now" class="java.util.Date"/>
    <p>&copy; Dans Dandy Site Builder<fmt:formatDate value="${now}" pattern="yyyy"/></p>
</footer>
</div>

</body>
</html>