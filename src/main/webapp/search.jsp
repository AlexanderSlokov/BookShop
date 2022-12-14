<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search results</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/homepage.css">
</head>

<body>
<form action="Search">
<header>
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
                    <span
                            class="color-2 font-style-1 font-size-sm pl-1 white-highlight d-none visible-in-md">PURCHASE
                            LIST</span>
                </a>
            </li>
            <li class="pl-2">
                <c:if test = "${sessionScope.account.role == 'admin'}">
                <button type="button"
                        class="d-none stock-btn default-btn font-size-sm font-style-2 bg-color-1">
                    <a href="BooksTableInput.jsp" class="image-highlight">ADMIN</a>
                </button>
                </c:if>
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
                <a href="#">
                    <span class="color-white font-style-3 font-size-sm pl-1 gray-highlight">User Name</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./assets/images/person.svg" alt="user-img" class="image-highlight pl-1">
                </a>
            </li>


        </ul>
    </nav>
    <section class="hero-section flex-column p-1">
        <h2 class="d-none">This is added to remove validators errors.</h2>
        <div class="mx-auto">
            <h1 class="hero-title font-style-2 color-white">DANDELION FIELD</h1>
            <h4 class="font-style-1 color-white font-size-md py-1">Search for your desired book</h4>
            <div class="hero-form d-flex align-center py-1">
                <select name="genre" class="genre-selector border-0 bg-white border-right flex-grow-1 pointer">
                    <option value="all" class="genre-selector">All genre</option>
                    <option value="Non-Fiction" class="genre-selector">Non Fiction</option>
                    <option value="Fiction" class="genre-selector">Fiction</option>
                    <option value="Academic" class="genre-selector">Academic</option>
                </select>
                <input type="text" value="" placeholder="Search..."
                       class="p-1 border-0 font-style-1 font-size-sm flex-grow-1 pointer" name="key_word">
                <input class="default-btn font-size-sm font-style-2 bg-color-3 ml-1" type="submit" value="SEARCH">
            </div>
        </div>
    </section>
</header>

<main class="filter-search-container d-flex mx-auto">
    <!-- Search Filter -->
    <aside class="filter-container d-none visible-in-lg border p-2 flex-grow-1">
        <!--
        <div class="py-1">
            <input id="hardcopy" type="checkbox" name="hardcopy" value="hardcopy">
            <label for="hardcopy" class="font-style-1 font-size-s color-2 pl-1">hardcopy</label><br>
            <input id="softcopy" type="checkbox" name="softcopy" value="softcopy">
            <label for="softcopy" class="font-style-1 font-size-s color-2 pl-1">softcopy</label><br>
        </div>
        <p class="font-style-2 font-size-md color-3 py-half border-bottom-2">Type</p>
        <div class="py-1">
            <input id="paperback" type="checkbox" name="paperback" value="paperback">
            <label for="paperback" class="font-style-1 font-size-s color-2 pl-1">paperback</label><br>
            <input id="hardback" type="checkbox" name="hardback" value="hardback">
            <label for="hardback" class="font-style-1 font-size-s color-2 pl-1">hardback</label><br>
            <input id="kindle" type="checkbox" name="kindle" value="kindle">
            <label for="kindle" class="font-style-1 font-size-s color-2 pl-1">kindle</label><br>
            <input id="economy" type="checkbox" name="economy" value="economy">
            <label for="economy" class="font-style-1 font-size-s color-2 pl-1">economy</label>
        </div>
        <p class="font-style-2 font-size-md color-3 py-half border-bottom-2">Publications</p>
        <div class="py-1">
            <input id="Penguin" type="checkbox" name="Penguin" value="Penguin">
            <label for="Penguin" class="font-style-1 font-size-s color-2 pl-1">Penguin</label><br>
            <input id="FingerprintClassics" type="checkbox" name="Fingerprint! Classics" value="Fingerprint! Classics">
            <label for="FingerprintClassics" class="font-style-1 font-size-s color-2 pl-1">Fingerprint!
                Classics</label><br>
            <input id="MacmillanPublishers" type="checkbox" name="Macmillan Publishers" value="Macmillan Publishers">
            <label for="MacmillanPublishers" class="font-style-1 font-size-s color-2 pl-1">Macmillan
                Publishers</label><br>
            <input id="McGraw-HillEducation" type="checkbox" name="McGraw-Hill Education" value="McGraw-Hill Education">
            <label for="McGraw-HillEducation" class="font-style-1 font-size-s color-2 pl-1">McGraw-Hill
                Education</label>
        </div>
        -->
        <p class="font-style-2 font-size-md color-3 py-half border-bottom-2">Price Range</p>
        <div class="py-1">
            <input id="$0-$10" type="checkbox" name="p010" value="0-10">
            <label for="$0-$10" class="font-style-1 font-size-s color-2 pl-1">$0 - $10</label><br>
            <input id="$10-$20" type="checkbox" name="p1020" value="10-20">
            <label for="$10-$20" class="font-style-1 font-size-s color-2 pl-1">$10 - $20</label><br>
            <input id="$20-$30" type="checkbox" name="p2030" value="20-30">
            <label for="$20-$30" class="font-style-1 font-size-s color-2 pl-1">$20 - $30</label><br>
            <input id="$30+" type="checkbox" name="p30" value="30+">
            <label for="$30+" class="font-style-1 font-size-s color-2 pl-1">$30+</label>
        </div>
    </aside>
    <!-- Search Results -->
    <section class="border">
        <!--
        <h3 class="font-style-1 font-size-s color-2 p-1 border-bottom-3">119 search results for 'life' Search at
            'philosophy' at
            Category 'fiction'</h3>
        -->
        <section class="p-1 d-flex flex-column">
            <h2 class="d-none">This is hidden</h2>
            <c:forEach var="book" items="${book_items}">
                <article class="d-flex p-1">
                    <img src="data:image/jpg;base64,${book.base64Image}" alt="siddhartha" class="d-block search-images">
                    <div class="ml-1 d-flex flex-column">
                        <h4 class="font-style-2 font-size-md color-1 pointer black-highlight">${book.title}
                            <span class="font-style-1 font-size-md color-2 black-highlight"> by ${book.author}</span>
                        </h4>
                        <p class="font-size-md font-style-2 color-3 gray-highlight pointer">Genre: ${book.genre}</p>
                        <p class="font-style-1 font-size-s color-3 py-1 d-none visible-in-sm gray-highlight pointer">
                                ${book.description}</p>
                        <p class="font-size-md font-style-2 color-3 gray-highlight pointer">Rating: ${book.rating}</p>
                        <div class="d-flex flex-column purchase-details-container">
                            <a href="AddCart?book_id=${book.book_id}"
                               class="default-btn font-size-md font-style-2 bg-color-1 mr-half my-half">$${book.cost}</a>
                            <!--<a href="Detail?book_id=${book.book_id}" class="default-btn font-size-sm font-style-2 bg-color-1 mr-half my-half"><img
                                    src="./assets/images/supermarket-white.svg" alt="cart-logo-2"><span
                                    class="pl-1">Purchase Details</span></a>-->
                        </div>
                    </div>
                </article>
            </c:forEach>

            <!--
            <article class="d-flex justify-between p-1">
                <img src="assets/images/fiction-img-4.jpg" alt="siddhartha" class="d-block search-images">
                <div class="ml-1 d-flex flex-column justify-around">
                    <h4 class="font-style-2 font-size-md color-1 pointer black-highlight">The Alchemist: A Novel
                        <span class="font-style-1 font-size-md color-2 black-highlight">by Paulo Coelho, Alan R.
                                Clarke
                                (Translator)</span>
                    </h4>
                    <p class="font-style-1 font-size-s color-3 py-1 d-none visible-in-sm gray-highlight pointer">
                        Paulo Coelho's enchanting novel has inspired a devoted following around the world. This
                        story, dazzling in its powerful simplicity and soul-stirring wisdom, is about an Andalusian
                        shepherd boy named Santiago who travels from his homeland in Spain to the Egyptian desert
                    </p>
                    <p class="font-size-md font-style-2 color-3 gray-highlight pointer">Rating: 3.87/5</p>
                    <div class="d-flex flex-column purchase-details-container">
                        <a href="#"
                           class="default-btn font-size-md font-style-2 bg-color-1 mr-half my-half">$16.93</a>
                        <a href="#" class="default-btn font-size-sm font-style-2 bg-color-1 mr-half my-half"><img
                                src="./assets/images/supermarket-white.svg" alt="cart-logo-2"><span
                                class="pl-1">Purchase
                                    Details</span></a>
                    </div>
                </div>
            </article>

            <article class="d-flex justify-between p-1">
                <img src="assets/images/siddhartha.jpg" alt="siddhartha" class="d-block search-images">
                <div class="ml-1 d-flex flex-column justify-around">
                    <h4 class="font-style-2 font-size-md color-1 pointer black-highlight">Siddhartha: A Novel
                        <span class="font-style-1 font-size-md color-2 black-highlight">by Hermann Hesse, Hilda
                                Rosner
                                (Translator)</span>
                    </h4>
                    <p class="font-style-1 font-size-s color-3 py-1 d-none visible-in-sm gray-highlight pointer">
                        Herman Hesse's classic novel
                        has delighted, inspired, and influenced generations of readers,
                        writers, and thinkers. In this story of a wealthy Indian Brahmin who casts off a life of
                        privilege to seek spiritual fulfillment.</p>
                    <p class="font-size-md font-style-2 color-3 gray-highlight pointer">Rating: 4/5</p>
                    <div class="d-flex flex-column purchase-details-container">
                        <a href="#"
                           class="default-btn font-size-md font-style-2 bg-color-1 mr-half my-half">$5.49</a>
                        <a href="#" class="default-btn font-size-sm font-style-2 bg-color-1 mr-half my-half"><img
                                src="./assets/images/supermarket-white.svg" alt="cart-logo-2"><span
                                class="pl-1">Purchase
                                    Details</span></a>
                    </div>
                </div>
            </article>

            <article class="d-flex justify-between p-1">
                <img src="assets/images/fiction-img-3.jpg" alt="siddhartha" class="d-block search-images">
                <div class="ml-1  d-flex flex-column justify-around">
                    <h4 class="font-style-2 font-size-md color-1 pointer black-highlight">1984: A Novel
                        <span class="font-style-1 font-size-md color-2 black-highlight">by George Orwell, Peter
                                Hobley
                                Davison (Foreword)</span>
                    </h4>
                    <p class="font-style-1 font-size-s color-3 py-1 d-none visible-in-sm gray-highlight pointer">
                        Among the seminal texts of the 20th century, Nineteen Eighty-Four is a rare work that grows
                        more haunting as its futuristic purgatory becomes more real. Published in 1949, the book
                        offers political satirist George Orwell's nightmarish vision of a totalitarian</p>
                    <p class="font-size-md font-style-2 color-3 gray-highlight pointer">Rating: 4.18/5</p>
                    <div class="d-flex flex-column purchase-details-container">
                        <a href="#"
                           class="default-btn font-size-md font-style-2 bg-color-1 mr-half my-half">$19.99</a>
                        <a href="#" class="default-btn font-size-sm font-style-2 bg-color-1 mr-half my-half"><img
                                src="./assets/images/supermarket-white.svg" alt="cart-logo-2"><span
                                class="pl-1">Purchase
                                    Details</span></a>
                    </div>
                </div>
            </article>

            <article class="d-flex justify-between p-1">
                <img src="assets/images/non-fiction-img-1.jpg" alt="siddhartha" class="d-block search-images">
                <div class="ml-1  d-flex flex-column justify-around">
                    <h4 class="font-style-2 font-size-md color-1 pointer black-highlight">"Surely You're Joking, Mr.
                        Feynman!": Adventures of a Curious Character
                        <span class="font-style-1 font-size-md color-2 black-highlight">by Richard P. Feynman</span>
                    </h4>
                    <p class="font-style-1 font-size-s color-3 py-1 d-none visible-in-sm gray-highlight pointer">
                        A New York Times bestseller?the outrageous exploits of one of this century's greatest
                        scientific minds and a legendary American original.</p>
                    <p class="font-size-md font-style-2 color-3 gray-highlight pointer">Rating: 4.6/5</p>
                    <div class="d-flex flex-column purchase-details-container">
                        <a href="#"
                           class="default-btn font-size-md font-style-2 bg-color-1 mr-half my-half">$10.89</a>
                        <a href="#" class="default-btn font-size-sm font-style-2 bg-color-1 mr-half my-half"><img
                                src="./assets/images/supermarket-white.svg" alt="cart-logo-2"><span
                                class="pl-1">Purchase
                                    Details</span></a>
                    </div>
                </div>
            </article>

            <ul class="list-style-none d-flex my-1">
                <li class="border bg-color-1 p-1 color-white font-style-1 font-size-sm gray-highlight pointer">1</li>
                <li class="border p-1 color-3 font-style-1 font-size-sm ml-half gray-highlight pointer">2</li>
                <li class="border p-1 color-3 font-style-1 font-size-sm ml-half gray-highlight pointer">3</li>
                <li class="border p-1 color-3 font-style-1 font-size-sm ml-half gray-highlight pointer">4</li>
                <li class="p-1 color-3 font-style-1 font-size-sm ml-half gray-highlight pointer">....</li>
                <li class="border p-1 color-3 font-style-1 font-size-sm ml-half gray-highlight pointer">7</li>
            </ul>
            -->
        </section>
    </section>

</main>
</form>
<footer class="bg-white border">
    <section class="d-flex flex-wrap justify-around footer-links-container mx-auto">
        <h1 class="d-none">This is hidden</h1>
        <div class="p-1">
            <div class="d-flex justify-center align-center">
                <img src="./assets/images/book-gray.svg" alt="bookshop-logo">
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
                <li class="font-style-2 color-2 font-size-sm underline pointer py-half"><a href="index.html" class="d-block">Home</a></li>
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
            <p class="font-size-sm font-style-1 color-2">Copyright&copy; 2020 bookshop.com. All rights reserved.
                Created by Ershadul Hakim Rayhan. Design idea by Mohammed Awad.</p>
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