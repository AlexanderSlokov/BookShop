<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin author</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/homepage.css">
    <link rel="stylesheet" href="css/table.css">
</head>
<body>
<header>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <nav class="bg-color-3 d-flex justify-around p-1">
        <ul class="list-style-none d-flex align-center justify-center">
            <li>
                <a href="HomePage" class="image-highlight">

                    <span class="color-white font-style-3 font-size-md pl-1">DANDELION FIELD</span>
                </a>
            </li>
            <li class="pl-2 d-none visible-in-md">
                <a href="HomePage">
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
            <li class="pl-2">
                <c:if test = "${sessionScope.account.role == 'admin'}">
                    <button type="button"
                            class="d-none stock-btn default-btn font-size-sm font-style-2 bg-color-1">
                        <a href="AdminDashboard" class="image-highlight">ADMIN</a>
                    </button>
                </c:if>

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
                <a href="Account">
                    <span class="color-white font-style-3 font-size-sm pl-1 gray-highlight user-status">${indexmessage}</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./assets/images/person.svg" alt="user-img" class="image-highlight pl-1">
                </a>
            </li>
            <li class="pl-1">
                <a href="#" class="search-btn default-btn font-size-sm font-style-2 bg-color-1">SEARCH</a>
            </li>
        </ul>
    </nav>
</header>

<main class="d-flex">
    <!--Sidebar-->
    <div class="iq-sidebar">
        <div class="iq-sidebar-head">
            <a href="HomePage" class="image-highlight">

                <span class="color-white font-style-3 font-size-md pl-1">DANDELION FIELD</span>
            </a>
        </div>
        <div class="color-white">
            <div class="scroll-content">
                <nav class="iq-sidebar-menu">
                    <ul class="iq-menu">
                        <c:if test = "${sessionScope.account.role == 'admin'}">
                            <li class="bg-color-4">
                                <a href="#admin" class="bg-color-1 m-left font-style-3 p-1 font-size-lg justify-start"><span class="ripple rippleEffect"></span><i class="ri-admin-line"></i><span>Admin</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="admin" class="bg-color-4 list-style-none m-left-1 font-size-md justify-start" data-parent="#iq-sidebar-toggle">
                                    <li><a href="AdminDashboard"><i class="#"></i>Dashboard</a></li>
                                    <li><a href="AdminAuthors"><i class="#"></i>Author</a></li>
                                    <li><a href="AdminBooks"><i class="#"></i>Books</a></li>
                                </ul>
                            </li>
                        </c:if>
                        <li class="bg-color-4">
                            <a href="#userinfo" class="bg-color-1 m-left font-style-3 p-1 font-size-lg justify-start" data-toggle="collapse" aria-expanded="false"><span class="ripple rippleEffect"></span><i class="las la-user-tie iq-arrow-left"></i><span>User</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                            <ul id="userinfo" class="bg-color-4 list-style-none m-left-1 font-size-md justify-start" data-parent="#iq-sidebar-toggle">
                                <li><a href="Account"><i class="#"></i>User Profile</a></li>
                                <li><a href="#"><i class="#"></i>User Edit</a></li>
                                <li><a href="#"><i class="#"></i>User Add</a></li>
                                <li><a href="#"><i class="#"></i>User List</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <!-- Content Page -->
    <div class="content-page">
        <div>
            <h4 class="font-style-1 font-size-s color-2 p-1 border-bottom-3">Authors Lists</h4>
        </div>
        <div>
            <a href="admin-add-authors.jsp" class="d-none stock-btn default-btn font-size-sm font-style-2 bg-color-1">Add a new author</a>
        </div>
        <div class="">
            <div class="table-wrapper">
                <table class="fl-table">
                    <thead>
                    <tr>
                        <th style="width: 5%;">No</th>
                        <th style="width: 5%;">Profile</th>
                        <th style="width: 20%;">Author Name</th>
                        <th style="width: 60%;">Author Description</th>
                        <th style="width: 10%;">Action</th>
                    </tr>
                    </thead>
                <tbody>
                <c:forEach var="author" items="${authors}">
                <tr>
                    <td>${author.author_id}</td>
                    <td>
                        <img src="images/user/01.jpg" class="img-fluid avatar-50 rounded" alt="author-profile">
                    </td>
                    <td>${author.name}</td>
                    <td>
                        <p class="mb-0">${author.description}</p>
                    </td>
                    <td>
                        <div class="flex align-items-center list-user-action">
                            <a class="bg-color-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit" href="admin-add-category.html"><i class="ri-pencil-line"></i></a>
                            <a class="bg-color-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete" href="#"><i class="ri-delete-bin-line"></i></a>
                        </div>
                    </td>
                </tr>
                </tbody>
                    </c:forEach>
                </table>
            </div>
        </div>

    </div>
</main>

<footer class="bg-white border">
    <section class="d-flex flex-wrap justify-around footer-links-container mx-auto">
        <h1 class="d-none">This is hidden</h1>
        <div class="p-1">
            <div class="d-flex justify-center align-center">

                <span class="color-2 font-style-3 font-size-md pl-1">DANDELION FIELD</span>
            </div>
            <p class="font-style-2 color-2 font-size-sm py-half">
                 Dandelion field, as the name suggested, warm kindled your heart with books. <br>
                Here you can find a huge collection of all genres. Set an adventure through our<br>
                field, find your preferred books and enjoy.</p>
        </div>

        <div class="flex-grow-1 p-1">
            <p class="font-style-2 color-1 font-size-s  border-bottom-2">Categories</p>
            <ul class="list-style-none py-half">
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Non Fiction</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Fiction</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Academic</li>
            </ul>
        </div>

        <div class="flex-grow-1 p-1">
            <p class="font-style-2 color-1 font-size-s  border-bottom-2">Navigation</p>
            <ul class="list-style-none py-half">
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half"><a href="index.jsp" class="d-block">Home</a></li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Sign In</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Sign Up</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Terms & Conditions</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">FAQ</li>
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half">Help</li>
            </ul>
        </div>
        <div class="flex-grow-1 d-flex flex-column p-1 location-info">
            <ul class="list-style-none">
                <li class="font-style-3 color-1 font-size-s py-half">COUNTRY<span
                        class="font-style-2 color-3 font-size-sm border px-half ml-half pointer">United
                            States</span></li>
                <li class="font-style-3 color-1 font-size-s  py-half">LANGUAGE<span
                        class="font-style-2 color-3 font-size-sm border px-half ml-half pointer">English</span></li>
                <li class="font-style-3 color-1 font-size-s  py-half">CURRENCY<span
                        class="font-style-2 color-3 font-size-sm border px-half ml-half pointer">US Dollar</span>
                </li>
            </ul>
        </div>
    </section>
    <section class="border">
        <h1 class="d-none">This is hidden</h1>
        <div class="copyright-section p-1 mx-auto d-flex justify-between align-center">
            <p class="font-size-sm font-style-1 color-2">Copyright&copy; 2020 bookshop.com. All rights reserved</p>
            <ul class="list-style-none d-flex">
                <li><img src="./assets/images/twitter.svg" alt="twitter-logo"
                         class="d-block category-heading-icons pointer ml-half"></li>
                <li><img src="./assets/images/google.svg" alt="google-logo"
                         class="d-block category-heading-icons pointer ml-half"></li>
                <li><img src="./assets/images/facebook.svg" alt="facebook-logo"
                         class="d-block category-heading-icons pointer ml-half"></li>
                <li><img src="./assets/images/linkedin.svg" alt="linkedin-logo"
                         class="d-block category-heading-icons pointer ml-half"></li>
            </ul>
        </div>
    </section>
</footer>

</body>
</html>
