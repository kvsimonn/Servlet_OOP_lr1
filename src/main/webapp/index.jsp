<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Изображения</title>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body >
<h2 >Выберите тему и номер изображения:</h2>
<form action="MyServlet" method="get">
    <label for="theme">Тема:</label>
    <select name="theme" id="theme">
        <option value="cars">Автомобили</option>
        <option value="nature">Природа</option>
        <option value="pets">Домашние животные</option>
    </select><br><br>

    <label for="imgNum">Номер изображения (1-4):</label>
    <input type="number" name="imgNum" id="imgNum" min="1" max="4"><br><br>

    <input type="submit" value="Показать изображение">
</form>
</body>
</html>
