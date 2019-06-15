<%-- 
    Document   : client
    Created on : 11-06-2019, 1:57:04
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>

<%@page import="net.sf.jasperreports.engine.*" %>
<%@page import="net.sf.jasperreports.view.JasperViewer" %>

<%@page import="javax.servlet.ServletResponse" %>
<%@include file="Conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REPORTES</title>
    </head>
    <body>
        <%
        File reportClient = new File (application.getRealPath("reportes/cliente.jasper"));
        
        Map<String, Object> parameter = new HashMap<String,Object>();
        
        byte[] bytes = JasperRunManager.runReportToPdf(reportClient.getPath(), parameter, conn);
        
        response.setContentType("application/pdf");
        response.setContentLength(bytes.length);
        ServletOutputStream outputstream = response.getOutputStream();
        outputstream.write(bytes,0,bytes.length);
        
        outputstream.flush();
        outputstream.close();
        %>
    </body>
</html>