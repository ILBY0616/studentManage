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
            background-color: #f0f0f0; /* 设置页面背景颜色 */
            font-family: Arial, sans-serif; /* 设置字体 */
            width: 400px; /* 设置表单宽度 */
            margin: 50px auto; /* 居中显示 */
            padding: 20px; /* 设置内边距 */
            background-color: #ddd; /* 设置背景颜色 */
            border-radius: 10px; /* 设置边框圆角 */
        }

        table {
            width: 100%; /* 设置表格宽度 */
            border-spacing: 0; /* 消除单元格之间的间距 */
            border-collapse: collapse; /* 合并单元格边框 */
        }

        caption {
            font-size: 20px; /* 设置标题字体大小 */
            margin-bottom: 10px; /* 设置标题与表格之间的距离 */
        }

        .left {
            color: chocolate; /* 设置文字颜色 */
            width: 30%; /* 设置单元格宽度 */
            height: 50px;
            margin-bottom: 10px; /* 设置输入框之间的距离 */
        }

        .right {
            width: 70%; /* 输入框宽度减去一定的内边距 */
            height: 50px;
            margin-bottom: 10px; /* 设置输入框之间的距离 */
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
