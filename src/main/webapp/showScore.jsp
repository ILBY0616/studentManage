<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>showScore</title>
    <style>
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse; /* 合并表格边框 */
        }

        th, td {
            padding: 8px; /* 设置单元格内边距 */
            border: 1px solid #ddd; /* 设置单元格边框 */
            text-align: center; /* 设置单元格文本水平居中 */
            vertical-align: top; /* 设置单元格垂直对齐方式为顶部 */
        }

        th {
            background-color: #f2f2f2; /* 设置表头背景颜色 */
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="student" class="studentManage.pojo.Student"/>
<table>
    <caption>学生成绩信息显示</caption>
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>高等数学</th>
        <th>大学英语</th>
        <th>程序设计</th>
        <th>数据库原理</th>
        <th>总成绩</th>
        <th>平均成绩</th>
    </tr>
    <jsp:setProperty name="student" property="*"/>
    <tr>
        <td>
            <jsp:getProperty name="student" property="id"/>
        </td>
        <td>
            <jsp:getProperty name="student" property="name"/>
        </td>
        <td>
            <jsp:getProperty name="student" property="mathScore"/>
        </td>
        <td>
            <jsp:getProperty name="student" property="englishScore"/>
        </td>
        <td>
            <jsp:getProperty name="student" property="programScore"/>
        </td>
        <td>
            <jsp:getProperty name="student" property="databaseScore"/>
        </td>
        <td>
            <jsp:getProperty name="student" property="sumScore"/>
        </td>
        <td>
            <jsp:getProperty name="student" property="averageScore"/>
        </td>
    </tr>
</table>
<%@ include file="footer.jsp" %>
</body>
</html>
