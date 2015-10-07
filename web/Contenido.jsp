<%-- 
    Document   : Contenido
    Created on : 18-ago-2015, 21:09:05
    Author     : ESTACION
--%>

<%@page import="ws.ObjectFactory"%>
<%@page import="ws.SaberNumeroPrimo"%>
<%@page import="ws.OperaSuma"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <%
        //SaberNumeroPrimo obj= new SaberNumeroPrimo();
  
    try {
	ws.WsIntegracion_Service service = new ws.WsIntegracion_Service();
	ws.WsIntegracion port = service.getWsIntegracionPort();

	java.lang.String result = port.saberNumeroPrimo(request.getParameter("num1"));
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
        out.println("Result"+ex.getMessage());
        
    }
    %>
    <%-- end web service invocation --%><hr/>
    </body>
</html>
