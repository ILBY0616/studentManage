<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        h1 {
            font: 30px bold 仿宋;
            color: chocolate;
            text-align: center;
        }

        ul {
            display: flex;
            background-color: #dddddd;
            border-top: 3px solid chocolate;
            border-bottom: 3px solid chocolate;
        }

        li {
            flex: 1;
            border: 3px;
            padding: 5px;
            height: 30px;
            list-style: none
        }

        a {
            display: block;
            text-decoration: none;
            color: chocolate;
            width: 100%;
            height: 30px;
            text-align: center;
        }

        li:hover {
            background-color: white;
        }

        a:hover {
            color: #ff7f00;
        }
    </style>
</head>
<body>
<h1>学生成绩管理系统</h1>
<ul>
    <li>
        <a href="index.jsp">录入成绩</a>
    </li>
    <li>
        <a href="#">查询成绩</a>
    </li>
    <li>
        <a href="#">修改成绩</a>
    </li>
    <li>
        <a href="#">删除成绩</a>
    </li>
    <li>
        <a href="#">查看全部成绩</a>
    </li>
</ul>
</body>
</html>