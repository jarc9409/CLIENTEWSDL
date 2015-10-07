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
	String Resultado="";
 
        int a=0;
        int i=0;
        
          for(i=1;i<=Integer.parseInt(request.getParameter("num1"));i++){
              System.out.println(Integer.parseInt(request.getParameter("num1")) +"%"+ i);
              if((Integer.parseInt(request.getParameter("num1")) % i) == 0){
                  System.out.println("Ingreso mod == 0"+Integer.parseInt(request.getParameter("num1")) +"%"+ i);  
                  a=a+1;
              }
          }
          if(a!=2){
              Resultado="No es Primo";
          }else{
              Resultado="Si es primo";
          }
        out.println("El número Ingresado, " + Resultado + " !");
      

    } catch (Exception ex) {
	// TODO handle custom exceptions here
        out.println("Result"+ex.getMessage());
        
    }
    %>
    <%-- end web service invocation --%><hr/>
    </body>
</html>
