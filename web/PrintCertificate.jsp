

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Certificate of Vaccination</title>
        <style>
            .center{
                display: grid;
                place-items: center;
            }
            .table{
                display: flex;
                align-items: center;
                justify-content: space-around;
                border-bottom:1px solid #000;
                width: 90%;
                margin-left: 5%;
                margin-right: 10%;

            }
            .mynewimage{
                object-fit: contain;
                width:200px;
                height: 150px;
            }
          
        </style>
    </head>
    <body>
        <%@ taglib uri="/WEB-INF/tlds/GetCovidInfo" prefix="Print" %>
        <%
            String id = request.getParameter("name");

        %>
        <div style="display:grid;place-items:center ">
            <div class="container" style="text-align:center; border: 5px solid #787878; width: 50%;background-color:#99ccff">
            <div class="center">
                <h1>Vaccination Certificate</h1>
            </div>
            
                <div style="display:grid;place-items:center">
                    <br><br>
                    <span style="font-size:25px"><i>This is a proof that <b style="color:black" > <%=id%> </b> was vaccinated against
                            COVID-19 </i></span>
                    <br><br>
                </div>
            <Print:printCertificate table="patients" values="<%= id%>"></Print:printCertificate>
            <div style="display:grid;place-items: center; padding: 20px;">
                                     

            </div>
        </div>
        
            
        </div>
        

    </body>
</html>
