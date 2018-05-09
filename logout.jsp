<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%
//    @page import="reptiles.encriptar" %>

<%
    session.setAttribute("usuario", null);
    session.invalidate();
//    out.print(session.getAttribute("usuario"));
    response.sendRedirect("login.jsp");
%>
