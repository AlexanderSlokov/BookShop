<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="css/exercise.css" type="text/css"/>
</head>
<body>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
       email address below.</p>
    
    <form action="emailListEL" method="post">
        <input type="hidden" name="action" value="add">        
        <label class="pad_top">Email:</label>
        <input type="email" name="email" 
               value="${sessionScope.user.email}"><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" 
               value="${sessionScope.user.firstName}"><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" 
               value="${sessionScope.user.lastName}"><br>        
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>
    <br>
    <form action="index.html">
        <input type="submit"  value="Back To Home Page">
    </form><br>
</body>
</html>