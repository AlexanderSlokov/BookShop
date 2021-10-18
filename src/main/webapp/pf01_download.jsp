<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="css/music_download.css" type="text/css"/>
</head>
<body>

<h1>Downloads</h1>

<h2>Paddlefoot - The First CD</h2>
    
<table>
<tr>
    <th>Song title</th>
    <th>Audio Format</th>
</tr>
<tr>
    <td>64 Corvair</td>
    <td><a href="DownloadFileSupportServlet?filename=corvair.mp3&amp;directory=/sound/pf01/">MP3</a></td>
</tr>
<tr>
    <td>Whiskey Before Breakfast</td>
    <td><a href="DownloadFileSupportServlet?filename=whiskey.mp3&amp;directory=/sound/pf01/">MP3</a></td>
</tr>
</table>

<p><a href="?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=viewCookies">View all cookies</a></p>

</body>
</html>