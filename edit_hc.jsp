<%-- 
    Document   : edit_hc
    Created on : Dec 4, 2021, 7:26:48 PM
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
       <vaccination:update table="health_centres" 
                            newvalue1='<%= request.getParameter("name") %>'
                            newvalue2='<%= request.getParameter("district") %>'
                            newvalue3='<%= request.getParameter("region") %>'
                            newvalue4='<%= request.getParameter("vaccines_received") %>'
                            newvalue5='<%= request.getParameter("available_vaccines") %>'
                            where='<%= request.getParameter("id") %>' 
        />
    </body>
</html>
