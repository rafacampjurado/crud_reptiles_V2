<%-- 
    Document   : test
    Created on : 07-may-2018, 18:13:09
    Author     : Rafa
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
Map<Integer, String> map = new HashMap<Integer, String>();
map.put(1, "Casillas");		map.put(15, "Ramos");
map.put(3, "Pique");		map.put(5, "Puyol");
map.put(11, "Capdevila");	map.put(14, "Xabi Alonso");
map.put(16, "Busquets");	map.put(8, "Xavi Hernandez");
map.put(18, "Pedrito");		map.put(6, "Iniesta");
map.put(7, "Villa");

// Imprimimos el Map con un Iterador
Iterator it = map.keySet().iterator();
for (int i = 0; i < 18; i++) {
          out.println("<p>Clave: " + i + " -> Valor: " + map.get(i));
    }
 ArrayList<String> lugar = new ArrayList();
                                  lugar.add("Málaga");
                                  lugar.add("Sevilla");
                                  lugar.add("Granada");
                                  lugar.add("Huelva");
                                  lugar.add("Cadiz");
                                  lugar.add("Almeria");
                                  lugar.add("Jaen");
                                  lugar.add("Barcelona");
                                  lugar.add("Madrid");
                                  lugar.add("Valencia");
                                  lugar.add("Extremadura");
                                  lugar.add("Pais Vasco");
                                  lugar.add("Galicia");
                                  lugar.add("Asturias");
                                  lugar.add("Castilla La Mancha");
                                  lugar.add("Castilla Leon");
                                  lugar.add("Murcia");
                                  lugar.add("La Rioja");
                                  lugar.add("Salamanca");
                                  lugar.add("Valladolid");
                  
out.println(lugar);




            %>
    </body>
</html>