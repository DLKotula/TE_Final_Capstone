

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="insertBox">
    <h3>Explore The Solar System</h3>
    <p>Use these state of the art web applications to learn more about
        the solar system!</p>
    <ul>
        <li><a href="#">How much would you weigh on Jupiter?</a></li>
        <li><a href="#">How long would it take to drive to Neptune?</a></li>
        <li><a href="#">How old are you in Mercury years?</a></li>
    </ul>

    <h3>Solar System Talk</h3>
    <c:url var="forumHref" value="/forum" />
    <p>Join a conversation with your fellow Solar System residents
        on the <a href="${forumHref}">Solar System Geek Forum</a>!</p>
</div>
