<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
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
<%
    String message;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/studentManage";
        Connection connection = DriverManager.getConnection(url, "root", "123456");
        String sql = "insert into score values(?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = connection.prepareStatement(sql);

        pstmt.setString(1, student.getId());
        pstmt.setString(2, student.getName());
        pstmt.setInt(3, student.getMathScore());
        pstmt.setInt(4, student.getEnglishScore());
        pstmt.setInt(5, student.getProgramScore());
        pstmt.setInt(6, student.getDatabaseScore());

        int row = pstmt.executeUpdate();
        if (row > 0) {
            message = "信息添加成功";
        } else {
            message = "信息添加失败";
        }
        pstmt.close();
        connection.close();
    } catch (Exception e) {
        message = "发生错误：" + e.getMessage();
    }
%>
<div>
    <h2><%= message %></h2>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
