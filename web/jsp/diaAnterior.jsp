<%-- 
    Document   : actualMont
    Created on : 06-06-2019, 16:06:46
    Author     : andre
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<%@ page import="net.sf.jasperreports.engine.*" %>
<%@ page import="net.sf.jasperreports.view.JasperViewer"%>

<%@ page import="javax.servlet.ServletResponse"%>
<%@ include file="Conexion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        File reportLastday = new File (application.getRealPath("reportes/diaAnterior.jasper"));
        
        Map<String, Object> parameter = new HashMap<String,Object>();
        
        byte[] bytes = JasperRunManager.runReportToPdf(reportLastday.getPath(), parameter, conn);
        
        response.setContentType("application/pdf");
        response.setContentLength(bytes.length);
        ServletOutputStream outputstream = response.getOutputStream();
        outputstream.write(bytes,0,bytes.length);
        
        outputstream.flush();
        outputstream.close();
        %>
    </body>
</html>
