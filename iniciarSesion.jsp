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
    String contraseña = request.getParameter("contraseña");
    contraseña = contraseña.toLowerCase();
    
    
  
Map<String,String>Login = new HashMap<String,String>();
Login.put("luis","prog");
Login.put("usuario", "usuario");
Login.put("profesor", "profesor");

public class encrip tar {
public static String getMD5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger number = new BigInteger(1, messageDigest);
            String hashtext = number.toString(16);

            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
%>
