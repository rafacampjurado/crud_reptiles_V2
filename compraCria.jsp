<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    int codigoCria = Integer.valueOf(request.getParameter("id"));
    String estado = "vendida";
//    String nombreComprador = session.getAttribute("usuario");
String codigoComprador = "";

    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_reptiles", "root", "");
    Statement s = conexion.createStatement();
    PreparedStatement pS = null;

 String actualizar = "UPDATE crias SET estado='vendida' where codcria="+codigoCria+"";
s.execute(actualizar);
ResultSet select = s.executeQuery("SELECT codcomprador FROM comprador WHERE nombre='"+session.getAttribute("usuario")+"'");
while(select.next()) {
      codigoComprador = (select.getString("codcomprador"));
        }
int insertar = s.executeUpdate("INSERT INTO facturados (codcria,codcomprador) VALUES ("+codigoCria+""+codigoComprador+"");
    
 String redireccionar = "listEjemplares.jsp";
 response.sendRedirect(redireccionar);
 conexion.close();
 
%>
