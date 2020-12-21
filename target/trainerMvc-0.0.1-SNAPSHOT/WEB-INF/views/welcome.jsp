<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        <link rel="stylesheet" href="/trainerMvc/css/style.css" />
    </head>
    <body>
        <div>   
            <nav id="navbar">
                <ul><li id="logo">Trainer Project</li>
                    <li class="right"><a href="http://localhost:8080/trainerMvc/trainer/new"><b>Add New</b></a></li>
                    <li class="right"><a href="http://localhost:8080/trainerMvc/trainer/list"><b>Trainers</b></a></li>
                    <li class="right"><a class="active" href="http://localhost:8080/trainerMvc/"><b>Home</b></a></li>
                </ul>
            </nav>
            <main id="mainforms">
                <div class="keno1" id="head">
                    <h1>Welcome To Trainer Crud Implementation</h1>
                    <h3 class="padd">Below are some instructions/suggestions on how you can navigate and use the project</h3>
                </div>
                <div id="head2">
                    <p></p>
                    <p> </p>
                </div> 
                <div id="extraforms">
                    <h3 class="requestpad">How to navigate through the site</h3>
                    <p class="padd">
                        To see the list of all trainers you can choose the option Trainers from the navigation bar.</br>
                        You can also update and delete the data of the trainers there.</br>
                        To add a new trainer you can choose the option Add New from the navigation bar</br>
                    </p>
                    <p class="padd" >
                        If you want to use the url to implement the CRUD options you can add to the main url
                        (http://localhost:8080/trainerMvc/) the following options:</br>
                        Data of a trainer with a known-existing id: trainer/{id}
                        Create a trainer: trainer/new</br>
                        Edit a trainer's data with a known-existing id: trainer/update/{id}</br>
                        Delete a trainer with a known-existing id: trainer/delete/{id}</br>
                        List of all trainers: trainer/list</br>
                    </p>
                    <p>**Important note: If you try to delete, update, or check the data using the "url method" and you</br>
                        insert a non existing id you will be redirected to an error page. So be cautious
                    </p>
                </div> 
            </main>
            <footer>
                <p>&copy; 2020-2021 Trainer Crud Project All Rights Reserved</p>
            </footer>
        </div>
    </body>
</html>
