

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.db.connection.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
                <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
    </head>
    <%  String name = (String)session.getAttribute("name"); %>
  <!-- Sidebar -->
<div class="w3-sidebar w3-light-grey w3-bar-block" style="width:25%">
  <h3 class="w3-bar-item"><%=name %></h3>
   <a href="systemadminstrator.jsp" class="w3-bar-item w3-button">Dashboard</a>

  <a href="RegisterAdministratorForm.jsp" class="w3-bar-item w3-button">Register Health Administrator</a>
  
       <a href="ShowHealthCenter.jsp" class="w3-bar-item w3-button">Updates Health Center Information</a>
    <a href="RegisterHealthCenterForm.jsp" class="w3-bar-item w3-button">Registers Health Centers</a>
     <!--<a href="SendEmail.jsp" class="w3-bar-item w3-button">Send Email</a>-->
  
  <a href="RegisterVaccineServlet" class="w3-bar-item w3-button">Register Vaccines</a>
  <a href="ShowVaccines.jsp" class="w3-bar-item w3-button">Distribute Vaccines</a>
     <a href="ShowPatients.jsp" class="w3-bar-item w3-button">Generate Reports</a>
       
              <a href="ShowVaccines.jsp" class="w3-bar-item w3-button">Vaccine Status</a>
  
     


</div>

<!-- Page Content -->
<div style="margin-left:25%">
    <style>
        .header{
            display: flex;
            align-items: center;
            justify-content: space-between
        }
        
    </style>

<div class="w3-container w3-teal">
  <div class="header">
        <h1>
        <%   


out.print("Welcome "+name);  
  
 
  

  
%>  

    
    <h3 style="cursor:pointer; text-decoration: none;">
        <a href="/NadCourseWork">logout</a>
    </h3>
    
        
    </div>
</div>



</div>
    </body>
</html>