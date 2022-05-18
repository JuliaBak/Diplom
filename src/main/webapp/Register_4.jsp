<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Guru Logged In</title>
</head>
<body>
<table style="with: 50%">
    <tr><td>
        <% String username = request.getParameter("username"); %>
        <a>Welcome  <% out.println(username); %> !</a></td></tr>
    <tr></tr>
</table>
</body>
</html>