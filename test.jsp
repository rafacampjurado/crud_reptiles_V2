<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
            int id = Integer.valueOf(request.getParameter("id"));
     Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_reptiles", "root", "");
    Statement s = conexion.createStatement();
    ResultSet select = s.executeQuery("SELECT nombre,sexo,fase,especie,fechana,codgecko  FROM geckos WHERE codgecko=' "+id+" ' ");
    
        String nombre = "";
        String codigo = "";
    String sexo= "";
    String fase = "";
    String especie = "";
    String fechana = "";
    while(select.next()) {
     nombre = (select.getString("nombre"));
     codigo = select.getString("codgecko");
     sexo = (select.getString("sexo"));
     fase = (select.getString("fase"));
     especie = (select.getString("especie"));
     fechana = (select.getString("fechana"));
    }
    out.print(nombre +" "+" "+ codigo +" "+ sexo +" "+ fase +" "+ especie+" "+ fechana);

%>
