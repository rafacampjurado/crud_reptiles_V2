<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
        Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_reptiles", "root", "");
    Statement s = conexion.createStatement();
    
    int codigoCria = Integer.valueOf(request.getParameter("id"));
    int codigoComprador = Integer.valueOf(request.getParameter("codcompra"));

    String estado = "vendida";


    String  actualizar = ("UPDATE crias SET estado='vendida' where codcria=' "+codigoCria+" ' ");

    
    int insertar = s.executeUpdate("INSERT INTO facturados (codcria,codcomprador) VALUES (' " + codigoCria + " ' , ' " + codigoComprador + " ') ");

    String redireccionar = "listEjemplares.jsp";
    response.sendRedirect(redireccionar);
    conexion.close();

%>
