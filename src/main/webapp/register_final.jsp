<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookshop</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/homepage.css">
    <link rel="stylesheet" href="css/loginNew.css">
</head>
<body>
<nav class="bg-color-3 d-flex justify-around p-1">
    <ul class="list-style-none d-flex align-center justify-center">
        <li>
            <a href="HomePage" class="image-highlight">

                <span class="color-white font-style-3 font-size-md pl-1">DANDELION FIELD</span>
            </a>
        </li>
        <li class="pl-2 d-none visible-in-md">
            <a href="HomePage.jsp">
                <img src="./assets/images/home-run.svg" alt="home-logo" class="navbar-icon">
                <span class="color-1 font-style-1 font-size-sm pl-1 white-highlight">HOME</span>
            </a>
        </li>
        <li class="pl-2">
            <a href="ShoppingCart">
                <img src="./assets/images/supermarket.svg" alt="cart-logo" class="navbar-icon">
                <span class="color-2 font-style-1 font-size-sm pl-1 white-highlight d-none visible-in-md">SHOPPING LIST</span>
            </a>
        </li>
    </ul>

    <ul class="list-style-none d-flex justify-around align-center user-info">
        <!--
        <li class="d-none visible-in-lg">
            <a href="#" class="image-highlight">
                <img src="./assets/images/mail.svg" alt="mail-icon" class="navbar-icon">
                <span
                        class="d-inline-block bg-color-1 mail-notification font-size-sm font-style-2 color-white">12</span>
            </a>
        </li>
        -->
        <li class="d-none visible-in-lg">
            <a href="BooksTableInput.jsp">
                <span class="color-white font-style-3 font-size-sm pl-1 gray-highlight">${indexmessage}</span>
            </a>
        </li>
        <li>
            <a href="#">
                <img src="./assets/images/person.svg" alt="user-img" class="image-highlight pl-1">
            </a>
        </li>
        <li class="pl-1">
            <a href="#" class="search-btn default-btn font-size-sm font-style-2 bg-color-1">Search</a>
        </li>
    </ul>
</nav>
<br>

<!--<form class="Login-form " action="LoginReg" method="post">
    <input type="hidden" name="action" value="register">
    <div class="login-field">
        <p><i>${usernamemessage}</i></p>
        <label>Username:</label>
        <input type="text" name="username" value="${account.username}" required>
    </div>
    <div class="login-field">
        <label>Password:</label>
        <input type="password" name="password" value="${account.password}" required>
    </div>
    <div class="login-field">
        <label>First Name:</label>
        <input type="text" name="firstname" value="${account.firstname}" required>
    </div>
    <div class="login-field">
        <label>Last Name:</label>
        <input type="text" name="lastname" value="${account.lastname}" required>
    </div>
    <div class="login-field">
        <p><i>${emailmessage}</i></p>
        <label>Email:</label>
        <input type="email" name="email" value="${account.email}" required>
    </div>
    <div class="login-field">
        <label>Phone:</label>
        <input type="text" name="phone" value="${account.phone}" required>
    </div>
    <div class="login-field">
        <label>Address:</label>
        <input type="text" name="address" value="${account.address}" required>
    </div>
    <input type="submit" value="Register" class="register-submit">
</form>
-->
<div class="center">
    <h1>Register</h1>
    <form action="LoginReg" method="post">
        <input type="hidden" name="action" value="register">
        <div class="txt_field">
            <p><i>${usernamemessage}</i></p>
            <input type="text" name="username" value="${account.username}" required>
            <span></span>
            <label>Username</label>
        </div>
        <div class="txt_field">
            <input type="password" name="password" value="${account.password}" required>
            <span></span>
            <label>Password</label>
        </div>
        <div class="txt_field">
            <input type="text" name="firstname" value="${account.firstname}" required>
            <span></span>
            <label>First Name</label>
        </div>
        <div class="txt_field">
            <input type="text" name="lastname" value="${account.lastname}" required>
            <span></span>
            <label>Last Name</label>
        </div>
        <div class="txt_field">
            <p><i>${emailmessage}</i></p>
            <input type="email" name="email" value="${account.email}" required>
            <span></span>
            <label>Email</label>
        </div>
        <div class="txt_field">
            <input type="text" name="phone" value="${account.phone}" required>
            <span></span>
            <label>Phone</label>
        </div>
        <div class="txt_field">
            <input type="text" name="address" value="${account.address}" required>
            <span></span>
            <label>Address</label>
        </div>

        <input type="submit" value="Join Now" >
        <div class="signup_link">

        </div>
    </form>
</div>
</body>
</html>
