<%-- 
    Document   : inserting_health_center
    Created on : Dec 4, 2021, 4:01:31 PM
    Author     : OKWARISIIMA MARIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="WEB-INF/tlds/Mytld.tld" prefix="vaccination" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <vaccination.insert
            table="health_centres" 
            value1='<%= request.getParameter("name") %>'
            value2='<%= request.getParameter("district") %>'
            value3='<%= request.getParameter("region") %>'
            value4='<%= request.getParameter("vaccines_received") %>'
            value5='<%= request.getParameter("available_vaccines") %>'
        />
        
       
    </body>
</html>
