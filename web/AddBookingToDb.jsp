

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>You have successfully booked</h1>
        
             
           <%
           String fullName = request.getParameter("name");
           
           String email = request.getParameter("email");
           
           String date = request.getParameter("date");
           
           String time = request.getParameter("time");
           
           String healthCentreId = request.getParameter("healthCentre");
           
           %>
           
           
           
           <%@taglib  prefix="insert" uri="/WEB-INF/tlds/healthCentres_tag" %>
           
           <insert:BookingHandler table="bookings" values="<%= fullName +','+email+','+date+','+time+','+healthCentreId%>" />
         
           <<h2>THANK YOU!</h2>>
    </body>
</html>

