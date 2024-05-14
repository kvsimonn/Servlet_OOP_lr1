<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Просмотр изображения по тематике</title>
</head>
<body>
<h1>Выбор изображения по тематике</h1>

<form action="images" method="get">
    <label for="theme">Выберите тему:</label>
    <select id="theme" name="theme">
        <option value="nature">Природа</option>
        <option value="cars">Автомобили</option>
        <option value="kids">Дети</option>
    </select>

    <label for="num">Выберите номер изображения:</label>
    <input type="text" id="num" name="num">

    <input type="submit" value="Показать изображение">
</form>
</body>
</html>



<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Изображения</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h2>Выберите тему и номер изображения:</h2>--%>
<%--<form method="post">--%>
<%--    <label for="theme">Тема:</label>--%>
<%--    <select name="theme" id="theme">--%>
<%--        <option value="cars">Автомобили</option>--%>
<%--        <option value="nature">Природа</option>--%>
<%--        <option value="pets">Домашние животные</option>--%>
<%--    </select><br><br>--%>

<%--    <label for="imgNum">Номер изображения (1-4):</label>--%>
<%--    <input type="number" name="imgNum" id="imgNum" min="1" max="4"><br><br>--%>

<%--    <input type="submit" value="Показать изображение">--%>
<%--    <img id="imageDisplay" src="" alt="Выбранное изображение">--%>

<%--    <script>--%>
<%--            function updateImage() {--%>
<%--                const theme = document.getElementById("theme").value;--%>
<%--                const imgNum = document.getElementById("imgNum").value;--%>
<%--                const imageDisplay = document.getElementById("imageDisplay");--%>
<%--                imageDisplay.src = "theme?theme=" + theme + "&imgNum=" + imgNum;--%>
<%--            }--%>
<%--        </script>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Изображения</title>--%>
<%--    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--</head>--%>
<%--<body >--%>
<%--<h2 >Выберите тему и номер изображения:</h2>--%>
<%--<form  method="get">--%>
<%--    <label for="theme">Тема:</label>--%>
<%--    <select name="theme" id="theme">--%>
<%--        <option value="cars">Автомобили</option>--%>
<%--        <option value="nature">Природа</option>--%>
<%--        <option value="pets">Домашние животные</option>--%>
<%--    </select><br><br>--%>

<%--    <label for="imgNum">Номер изображения (1-4):</label>--%>
<%--    <input type="number" name="imgNum" id="imgNum" min="1" max="4"><br><br>--%>

<%--    <input type="submit" value="Показать изображение">--%>
<%--    <img id="imageDisplay" src="" alt="Выбранное изображение">--%>


<%--    <script>--%>
<%--        function updateImage() {--%>
<%--            const theme = document.getElementById("theme").value;--%>
<%--            const imgNum = document.getElementById("imgNum").value;--%>
<%--            const imageDisplay = document.getElementById("imageDisplay");--%>
<%--            imageDisplay.src = "theme?theme=" + theme + "&imgNum=" + imgNum;--%>
<%--        }--%>
<%--    </script>--%>

<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
