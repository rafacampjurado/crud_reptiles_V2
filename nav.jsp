<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="index.jsp" class="site_title"><i class="fa fa-paw"></i> <span>REPTILES</span></a>
        </div>

        <div class="clearfix"></div>


        <br />

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>Barra de navegación</h3>
                                <%
                    String nombre = String.valueOf(session.getAttribute("usuario"));
                    %>
                    <p><h3 style="text-align: left">Usted está logeado<br> como <%  out.print(nombre);  %></h3></p>
                <ul class="nav side-menu">
                    <li><a href="index.jsp"><i class="fa fa-home"></i>Inicio </a></li>
                    <li><a href="listEjemplares.jsp"><i class="fa fa-pencil-square"></i>Lista de ejemplares </a></li>
                    <li><a href="ventaEjemplar.jsp"><i class="fa fa-paypal"></i>Venta de crías</a></li>
                    <li><a href="comprarEjemplar.jsp"><i class="fa fa-credit-card"></i>Comprar ejemplar </a></li>
                    <li><a href="facturas.jsp"><i class="fa fa-file"></i>Facturas </a></li>
                    <li><a href="logout.jsp"><i class="fa fa-gear"></i>Cerrar sesión </a></li>
                    
                </ul>

            </div>


        </div>
        <!-- /sidebar menu -->

        <!-- /menu footer buttons -->

        <!-- /menu footer buttons -->
    </div>
</div>