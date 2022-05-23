<%@page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%

    String url = "jdbc:mysql://127.0.0.1:3306/diplomdb?useUnicode=true&serverTimezone=UTC";
    String user = "diplom";
    String password = "diplom";

    try {

        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection con = DriverManager.getConnection(url, user, password);

        PreparedStatement st = con.prepareStatement("select * from specialities ");

        ResultSet rs = st.executeQuery();

        ResultSetMetaData rsmd = rs.getMetaData();

        if (rs.next()) {

%>
<jsp:include page="SpecialitiesPresent.jsp"/>

<%

    out.print("<center><h1>Result:</h1></center>");

    out.print("<table width=25% border=1>");

    out.print("<tr>");

    out.print("<td>" + rsmd.getColumnName(1) + "</td>");

    out.print("<td>" + rs.getInt(1) + "</td></tr>");

    out.print("<tr><td>" + rsmd.getColumnName(2) + "</td>");

    out.print("<td>" + rs.getString(2) + "</td></tr>");

    out.print("<tr><td>" + rsmd.getColumnName(3) + "</td>");

    out.print("<td>" + rs.getString(3) + "</td></tr>");

    out.print("<tr><td>" + rsmd.getColumnName(4) + "</td>");

    out.print("<td>" + rs.getString(4) + "</td></tr>");

    out.println("</table>");

} else
{

    out.println("These none....");

%>

<jsp:include page="SpecialitiesPresent.jsp"/>

<%}

} catch (Exception ex) {

    System.out.println(ex);

}

%>
</body>
</html>
