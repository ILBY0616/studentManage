<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .inputDiv {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 10px;
        }

        table {
            width: 100%;
            border-spacing: 0;
            border-collapse: collapse;
        }

        caption {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .left {
            color: chocolate;
            width: 30%;
            height: 50px;
            margin-bottom: 10px;
        }

        .right {
            width: 70%;
            height: 50px;
            margin-bottom: 10px;
        }

        .right > label {
            width: 100%; /* 设置按钮宽度 */
            height: 60%;
        }

        .right > label > input {
            width: 100%; /* 设置按钮宽度 */
            height: 60%;
        }

        input[type="submit"] {
            width: 100%; /* 设置按钮宽度 */
            padding: 10px; /* 设置按钮内边距 */
            background-color: chocolate; /* 设置按钮背景颜色 */
            color: #fff; /* 设置按钮文字颜色 */
            border: none; /* 去除按钮边框 */
            cursor: pointer; /* 设置鼠标样式为手型 */
            border-radius: 5px; /* 设置按钮边框圆角 */
        }

        input[type="submit"]:hover {
            background-color: #8b4513; /* 设置按钮鼠标悬停时的背景颜色 */
        }

    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="inputDiv">
    <form action="showScore.jsp" method="post">
        <table>
            <caption>学生成绩信息录入</caption>
            <tr>
                <td class="left">学号:</td>
                <td class="right">
                    <label>
                        <input type="text" name="id" autofocus>
                    </label>
                </td>
            </tr>
            <tr>
                <td class="left">姓名:</td>
                <td class="right">
                    <label>
                        <input type="text" name="name">
                    </label>
                </td>
            </tr>
            <tr>
                <td class="left">数学成绩:</td>
                <td class="right">
                    <label>
                        <input type="text" name="mathScore">
                    </label>
                </td>
            </tr>
            <tr>
                <td class="left">英语成绩:</td>
                <td class="right">
                    <label>
                        <input type="text" name="englishScore">
                    </label>
                </td>
            </tr>
            <tr>
                <td class="left">程序设计成绩:</td>
                <td class="right">
                    <label>
                        <input type="text" name="programScore">
                    </label>
                </td>
            </tr>
            <tr>
                <td class="left">数据库成绩:</td>
                <td class="right">
                    <label>
                        <input type="text" name="databaseScore">
                    </label>
                </td>
            </tr>
            <tr>
                <td colspan=2 id="smline">
                    <input id="button" type="submit" value="提交">
                </td>
            </tr>
        </table>
    </form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
