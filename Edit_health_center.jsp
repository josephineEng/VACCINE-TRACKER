<%-- 
    Document   : Edit_health_centre
    Created on : Dec 4, 2021, 6:22:25 PM
    Author     : OKWARISIIMA MARIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE HEALTH CENTER</title>
    </head>
    <body>
        <div>
           <form action="edit_hc.jsp" method="post">
               <td><input type ="text" name="id" value='<%= request.getParameter("Id") %>' hidden>
        <table>
            <tr>
                <td><font color="black">name: </font></td>
                <td><input type ="text" name="name" value='<%= request.getParameter("name") %>'></td>
            </tr>
             <tr>
                 <td><font color="black">district: </font></td> 
                 <td><input type ="text" name="district" value='<%= request.getParameter("district") %>'></td>
            </tr>
             <tr>
                 <td><font color="black"> region: </font></td> 
                 <td><input type ="text" name="region" value='<%= request.getParameter("region") %>'></td>
            </tr>
             <tr>
                 <tr>
                 <td><font color="black"> vaccine_received: </font></td> 
                 <td><input type ="text" name="vaccine_available" value='<%= request.getParameter("vaccine_received") %>'></td>
            </tr>
             <tr>
                 <td><font color="black">available_vaccines: </font></td> 
                 <td><input type ="text" name="available_vaccines" value='<%= request.getParameter("available_vaccines") %>'></td>
            </tr>
            <tr>

                <td><p id="submission"><input type="submit" value="submit"></p></td>
               
        </tr>
              
        </table>
        </form>
                   
            
            
            
            
            
            
            
        </div> 
        
        
        
        
        
        
        
        
    </body>
</html>
