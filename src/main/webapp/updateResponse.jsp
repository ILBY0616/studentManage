<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>updateResponse</title>
    <style>
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            border: 1px solid #ddd;
            text-align: center;
            vertical-align: top;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="student" class="studentManage.pojo.Student"/>
<table>
    <caption>学生成绩信息修改</caption>
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
<%
    String message;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/studentManage";
        Connection connection = DriverManager.getConnection(url, "root", "123456");
        String sql = "update score set name=?, mathScore=?, englishScore=?, programScore=?, databaseScore=? where id=?";
        System.out.println(sql);
        PreparedStatement pstmt = connection.prepareStatement(sql);
        pstmt.setString(1, student.getName());
        pstmt.setInt(2, student.getMathScore());
        pstmt.setInt(3, student.getEnglishScore());
        pstmt.setInt(4, student.getProgramScore());
        pstmt.setInt(5, student.getDatabaseScore());
        pstmt.setString(6, student.getId());
        int row = pstmt.executeUpdate();
        if (row > 0) {
            message = "信息修改成功";
        } else {
            message = "信息修改失败";
        }
        pstmt.close();
        connection.close();
    } catch (Exception e) {
        message = "发生错误：" + e.getMessage();
    }
%>
<div>
    <h2><%= message %>
    </h2>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>