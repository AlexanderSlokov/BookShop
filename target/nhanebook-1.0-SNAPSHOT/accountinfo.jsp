
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
</head>


<body>
<nav class="bg-color-3 d-flex justify-around p-1">
    <ul class="list-style-none d-flex align-center justify-center">
        <li>
            <a href="homepage.jsp" class="image-highlight">
                <img src="./assets/images/book.svg" alt="bookshop-logo">
                <span class="color-white font-style-3 font-size-md pl-1">BOOKSHOP</span>
            </a>
        </li>
        <li class="pl-2 d-none visible-in-md">
            <a href="homepage.jsp">
                <img src="./assets/images/home-run.svg" alt="home-logo" class="navbar-icon">
                <span class="color-1 font-style-1 font-size-sm pl-1 white-highlight">HOME</span>
            </a>
        </li>
        <li class="pl-2 d-none visible-in-md">
            <a href="collection.jsp">
                <img src="./assets/images/bookshelf.svg" alt="collection-logo" class="navbar-icon">
                <span class="color-2 font-style-1 font-size-sm pl-1 white-highlight">COLLECTIONS</span>
            </a>
        </li>
        <li class="pl-2">
            <a href="ShoppingCart">
                <img src="./assets/images/supermarket.svg" alt="cart-logo" class="navbar-icon">
                <span class="color-2 font-style-1 font-size-sm pl-1 white-highlight d-none visible-in-md">SHOPPING LIST</span>
            </a>
        </li>
        <li class="pl-2">
            <button type="button"
                    class="d-none stock-btn default-btn font-size-sm font-style-2 bg-color-1">
                <a href="admin-author.jsp" class="image-highlight">ADMIN</a>
            </button>
        </li>
    </ul>

    <ul class="list-style-none d-flex justify-around align-center user-info">
        <li class="d-none visible-in-lg">
            <a href="#" class="image-highlight">
                <img src="./assets/images/mail.svg" alt="mail-icon" class="navbar-icon">
                <span
                        class="d-inline-block bg-color-1 mail-notification font-size-sm font-style-2 color-white">12</span>
            </a>
        </li>
        <li class="d-none visible-in-lg">
            <a href="BooksTableInput.jsp">
                <span class="color-white font-style-3 font-size-sm pl-1 gray-highlight">User Name</span>
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

<div class="account-infos">
    <p>Account ID : <i>${account.user_id}</i></p><br>
    <p>Username : <i>${account.username}</i></p><br>
    <p>First Name : <i>${account.firstName}</i></p><br>
    <p>Last Name : <i>${account.lastName}</i></p><br>
    <p>Email : <i>${account.email}</i></p><br>

    <a href="update_account.jsp">Update infos?</a>

</div>

</body>
</html>