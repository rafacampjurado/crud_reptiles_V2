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
    String estado = "vendida";
//    String nombreComprador = String.valueOf(session.getAttribute("usuario"));
    String nombreComprador = "luis";

    String  codigoComprador = "";
//        ResultSet selectNomb = s.executeQuery("SELECT nombre FROM comprador WHERE nombre='  " +nombreComprador+ " ' " );
        ResultSet selectNomb = s.executeQuery("SELECT primerApellido  FROM comprador WHERE nombre=' luis ' " );
      
        while (selectNomb.next()) {
       codigoComprador = selectNomb.getString("primerApellido");
//        out.print("a");
    }
        out.print(codigoComprador);

//        codigoComprador = Integer.parseInt(codigoComprador);

//    String  actualizar = ("UPDATE crias SET estado='vendida' where codcria=' "+codigoCria+" ' ");
//    s.execute(actualizar);
    

  
    
//    int insertar = s.executeUpdate("INSERT INTO facturados (codcria,codcomprador) VALUES (' " + codigoCria + " ' , ' " + codigoComprador + " ') ");

//    String redireccionar = "listEjemplares.jsp";
//    response.sendRedirect(redireccionar);
    conexion.close();

%>
