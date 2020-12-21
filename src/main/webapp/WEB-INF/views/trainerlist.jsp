<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainers' List Page</title>
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
                    <h1>Below is the list of all the trainers that are on our database</h1>
                    <h3 class="padd">You can update or delete any trainer just by clicking on the edit and delete option</h3>
                    <p>If you press delete the Trainer's data will be deleted and you will be redirected to the home page</p>
                </div>
                <div id="head2">
                    <p></p>
                    <p> </p>
                </div> 
                <div id="extraforms">
                    <table class="center">
                        <tr>
                            <td class="tablepad">ID</td><td class="tablepad">FIRST NAME</td><td class="tablepad">LAST NAME</td><td class="tablepad">SUBJECT</td><td></td>
                        </tr>
                        <c:forEach items="${trainers}" var="trainer">
                            <tr >
                                <td class="tablepad2">${trainer.id}</a></td>
                                <td class="tablepad2">${trainer.firstName}</td>
                                <td class="tablepad2">${trainer.lastName}</td>
                                <td class="tablepad2">${trainer.subject}</td>
                                <td><a href="<c:url value='${editurl}/${trainer.id}' />"><button type="button" class="but">EDIT</button></a></td>
                                <td><a href="<c:url value='${deleteurl}/${trainer.id}' />"><button type="button" class="but">DELETE</button></a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div> 
            </main>
            <footer>
                <p>&copy; 2020-2021 Trainer Crud Project All Rights Reserved</p>
            </footer>
        </div>
    </body>
</html>
