<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainer Page</title>
        <link rel="stylesheet" href="/trainerMvc/css/style.css" />
    </head>
    <body>
        <div>   
            <nav id="navbar">
                <ul><li id="logo">Trainer Project</li>
                    <li class="right"><a href="http://localhost:8080/trainerMvc/trainer/new"><b>Add New</b></a></li>
                    <li class="right"><a class="active" href="http://localhost:8080/trainerMvc/trainer/list"><b>Trainers</b></a></li>
                    <li class="right"><a href="http://localhost:8080/trainerMvc/"><b>Home</b></a></li>
                </ul>
            </nav>
            <main id="mainforms">
                <div class="keno1" id="head">
                    <h1>Below you can see the trainer with the id you put on the url</h1>
                </div>
                <div id="head2">
                    <p></p>
                    <p></p>
                </div> 
                <div id="extraforms">
                    <f:form method="POST" action="new" modelAttribute="trainer">
                        <f:input type="hidden" path="id" id="id"/>
                        <p class="firstp">First name*<br/></p><f:input class="inputs" id="fnt" path="firstName" /><br>
                        <p class="otherp">Last name*<br/></p><f:input class="inputs" id="lnt" path="lastName" /><br>
                        <p class="otherp">Subject*<br/></p><f:input class="inputs" id="st" path="subject" /><br>
                    </f:form>       
                </div> 
            </main>
            <footer>
                <p>&copy; 2020-2021 Trainer Crud Project All Rights Reserved</p>
            </footer>
        </div>
    </body>
</html>
