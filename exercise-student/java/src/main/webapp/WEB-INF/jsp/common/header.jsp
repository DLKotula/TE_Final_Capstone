<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">

        <div class="navbar-collapse collapse">
            <div class="nav navbar-nav">
                <p><a href="<c:url value="/greeting"/>">Greetings page</a></p>
                <p><a href="<c:url value="/inputForm"/>">Want to submit a review?</a></p>

            </div>
        </div>
    </div>
</div>
