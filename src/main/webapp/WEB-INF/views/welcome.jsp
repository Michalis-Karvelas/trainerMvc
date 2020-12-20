<%-- 
    Document   : welcome
    Created on : Dec 20, 2020, 8:52:56 PM
    Author     : Mixal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body>
        <h1>Welcome dude! Welcome to - ${projectName}</h1>
        <p id="method">It came with method: ${method}</p>
        <h3 id="message">${message}</h3>
        <form method="POST" action="${action}">
            <input name="${username}" />
            <input name="${password}" type="password" />
            <button type="submit">Login</button>
        </form>
        <div id="msg">${msg}</div>
    </body>
</html>
