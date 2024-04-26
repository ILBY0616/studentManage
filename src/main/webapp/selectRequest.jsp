<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>selectRequest</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        form {
            width: 400px; /* consistent width with the other form */
            padding: 20px;
            background-color: #ddd; /* light grey background */
            border-radius: 10px; /* rounded corners */
            margin: 20px auto; /* margin for auto layout and spacing */
        }
        form h2 {
            text-align: center; /* centering title */
        }
        form p {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px; /* spacing between form rows */
        }
        label {
            flex-grow: 1; /* labels take up remaining space */
        }
        select, input[type="text"], input[type="submit"] {
            width: 100%; /* full width of their parent */
            padding: 8px; /* comfortable padding */
            margin-right: 10px; /* spacing between elements */
        }
        input[type="submit"] {
            background-color: chocolate; /* consistent button color */
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="submit"]:hover {
            background-color: #8b4513; /* darker on hover */
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<form action="selectResponse.jsp" method="post">
    <h2>请输入查询条件</h2>
    <div>
        <label>
            <select name="queryKey">
                <option value="id">学号</option>
                <option value="name">姓名</option>
                <option value="mathScore">数学成绩</option>
                <option value="englishScore">英语成绩</option>
                <option value="programScore">项目成绩</option>
                <option value="databaseScore">数据库成绩</option>
            </select>
        </label>
        <label>
            <input type="text" name="queryValue">
        </label>
        <input type="submit" value="查询">
    </div>
</form>
<%@ include file="footer.jsp" %>
</body>
</html>
