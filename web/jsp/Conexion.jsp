<%-- 
    Document   : Conexion
    Created on : 11-06-2019, 1:47:36
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        Connection conn = null;
    try {
    Class.forName("oracle.jdbc.OracleDriver");
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "proyecto", "1234");
    out.println("Conexion establecida!");
    }
    catch (Exception ex)
    {
    out.println("Exception: " + ex.getMessage() + "");

    }
    %>
    </body>
</html>
