<%-- 
    Document   : index.jsp
    Created on : Nov 30, 2021, 6:36:03 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

   
<!DOCTYPE html>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login </title>
    </head>
    <style>
        .myclass{
            background: "red !important";
            width: "50% ! important";
          
        }
    </style>
    <body style="background-color:silver;
  background-repeat: no-repeat;
  background-size: 100% 100vh;">
        <div style="float:right; padding: 20px; border-radius: 10px;">
            <h1><a href="index.jsp" style="color:red">Home</a></h1>
        </div>
    <div style="display: grid; place-items: center; margin:50px;  ;padding: 20px; border-radius: 10px;">
        <div  style="display: flex;align-items: center; justify-content: center; margin:10px;color: #fff; ">
            <h1 style="align-items: center;">Covid-19 Track Management System   
        </div>
        

        <form action="LoginServlet" style="width: 40%; background-color: white;border: 1px solid whitesmoke; padding: 10px; border-radius: 20px;">
            
            <!--<a href="PatientAdmin">Patient's Dashboard</a>-->
<!--            <a href="SystemAdministratorServlet">System Administrator Servlet</a>
             <a href="HealthAdministrator">Health Administrator Dashboard</a>-->
            
        <div style="display: flex;align-items: center; justify-content: center;">
            <!--<h5 style="align-items: center;">Sign in</h5>-->
            <br/>
        </div>
<div style="display: flex;align-items: center; justify-content: center;">
                <%  
                  boolean bool =  Boolean.parseBoolean(request.getParameter("invalid"));
                  if(!bool){
                      session.removeAttribute("invalid");
                  }
                  else{
                        String invalid = (String)session.getAttribute("invalid"); 
                       

                         out.print("<br/><small style='color:red'>Invalid Credentials</small>");  
                  }

                    
  
%>  
</div>

            <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                <input type="email" class="form-control" name="email">
            </div>

              <div class="m-3">
                <label for="exampleFormControlInput1" class="form-label">Password</label>
                <input type="passsword" class="form-control m-2" name="password">
              </div>

              <div class="m-3 "  style="margin:20px 0;">
                  <button type="submit" class="btn btn-secondary pt-3 m-2 btn-block" style="color:red">Sign in</button>
              </div>

    
        </form>

    </div>
   
</body>

    

    
</html>
