<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>showAllScore</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        table {
            margin: 50px auto;
        }
        th, td {
            border: 1px solid #ddd; /* 单元格边框 */
            padding: 8px; /* 单元格内边距 */
            text-align: center; /* 文本居中 */
        }
        th {
            background-color: #f2f2f2; /* 表头背景色 */
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<jsp:useBean id="student" class="studentManage.pojo.Student"/>
<h2>全部成绩</h2>
<table>
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>高等数学</th>
        <th>大学英语</th>
        <th>程序设计原理</th>
        <th>数据库原理</th>
        <th>总成绩</th>
        <th>平均成绩</th>
    </tr>
    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/studentManage";
            Connection connection = DriverManager.getConnection(url, "root", "123456");
            Statement statement = connection.createStatement();
            String sql = "select * from score";
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                student.setId(rs.getString("id"));
                student.setName(rs.getString("name"));
                student.setMathScore(rs.getInt("mathScore"));
                student.setEnglishScore(rs.getInt("englishScore"));
                student.setProgramScore(rs.getInt("programScore"));
                student.setDatabaseScore(rs.getInt("databaseScore"));
    %>
    <tr>
        <td><%= student.getId() %></td>
        <td><%= student.getName() %></td>
        <td><%= student.getMathScore() %></td>
        <td><%= student.getEnglishScore() %></td>
        <td><%= student.getProgramScore() %></td>
        <td><%= student.getDatabaseScore() %></td>
        <td><%= student.getSumScore() %></td>
        <td><%= String.format("%.2f", student.getAverageScore()) %></td>
    </tr>
    <%
            }
            rs.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    %>
</table>
<%@ include file="footer.jsp" %>
</body>
</html>
