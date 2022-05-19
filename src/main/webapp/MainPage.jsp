<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Page</title>
    <link rel="stylesheet" href="mainDesign.css">
</head>

<a href="specialities-look">Специальности</a>
</br>
<a href="specialitiesTable.html">Направления</a>
</br>
<tr><td>
    <%
        if (request.getAttribute("usernameLogin") != null && request.getAttribute("passwordLogin")  != null) {
            out.println("<div class=\"w3-panel w3-green w3-display-container w3-card-4 w3-round\">\n" +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-border-grey\">×</span>\n" +
                    "   <h5>Здравствуйте,  '" + request.getAttribute("usernameLogin") + "'!</h5>\n" +
                    "</div>");
        }
    %>
  <%--  <% String username = request.getParameter("username"); %>
    <a>Welcome  <% out.println(username); %> !--%></a></td></tr>
<tr></tr>

<form action="list" method="get">
  <input type="submit" value="Список пользователей" />
</form>
<tr><td></td><td></td><td>
    <a href="${pageContext.request.contextPath}/start"><b>Выйти</b></a></td></tr>
</body>
</html>
