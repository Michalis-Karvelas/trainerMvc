<%-- 
    Document   : updatetrainer
    Created on : Dec 20, 2020, 8:53:49 PM
    Author     : Mixal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Trainer Page</title>
        <link rel="stylesheet" href="/css/style.css" />
        <script src="/js/script.js"></script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1 class="error">Trainer - ${projectName}</h1>
        <!--<button onclick="myAlert()">MyButton</button>-->
        <f:form method="POST" action="saveupdate" modelAttribute="trainer">
            <f:input type="hidden" path="id" id="id"/>
            First Name:<f:input path="firstName" /><f:errors path="firstName" cssClass="error"></f:errors><br>
            Last Name:<f:input path="lastName" /><br>
            Subject:<f:input path="subject" /><br>
            <f:button name="btnUpdTrainer">Update Trainer</f:button>
            <div class="error">${error}</div>
        </f:form>
    </body>
</html>
