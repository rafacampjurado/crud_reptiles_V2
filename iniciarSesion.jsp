<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%
//    @page import="reptiles.encriptar" %>

<%
    String usuario = request.getParameter("usuario");
   usuario = usuario.toLowerCase();
    String contrase�a = request.getParameter("contrase�a");
    contrase�a = contrase�a.toLowerCase();
    
    
  
Map<String,String>Login = new HashMap<String,String>();
Login.put("luis","prog");
Login.put("antonio", "sistemas");
Login.put("eva", "base");
Login.put("pilar", "lenguaje");

if(Login.containsKey(usuario)) {
    if(Login.get(usuario).equals(contrase�a)) {
        session.setAttribute("usuario", usuario);
        response.sendRedirect("index.jsp");
    }
} else {
     response.sendRedirect("login.jsp");
}

%>
