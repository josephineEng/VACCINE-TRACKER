
package org.health.vaccine;

import com.mysql.cj.protocol.Resultset;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.JspFragment;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class StatusHandler extends SimpleTagSupport {

    private String Quantity;

   
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
             try{
            Class.forName("com.mysql.cj.jdbc.Driver");
           // Driver started successfully
             try{
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccines","root","");
               
                Statement st = conn.createStatement();
                
                String Sum = "select sum(Amount) from inventory";
                
               
               ResultSet rs = st.executeQuery(Sum);
               rs.next();
               
               int totalInventory = rs.getInt(1);
               out.println("Total Inventory:"+ totalInventory);
               
               out.println("</br>");
               out.println("</br>");
                
               ResultSet ret = st.executeQuery("select distinct *from inventory");
               out.println("<table>");
          
               while(ret.next()){
                   String Type = ret.getString("VaccineType");
                   String status = ret.getString("status");
                   String Quantity = ret.getString("Amount");
                   out.println("<tr><td>"+Type+"</td>"+"<td> </td>"+"<td> </td>"+"<td>"+status+"</td>"+"<td> </td>"+"<td> </td>"+"<td>"+Quantity+"</td></tr>");
//                
                 
               }
               out.println("</table>");
               
                
                  }catch(SQLException e){
                    out.println("<br>There is an error:: "+ e.getMessage());
                }
              }catch(ClassNotFoundException e){          
                out.println("<br><br>loading the driver has result to an error:: "+e.getMessage());
            }

            
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

     
        } catch (java.io.IOException ex) {
            throw new JspException("Error in DistributeVaccines tag", ex);
        }
    }

    public void setQuantity(String Quantity) {
        this.Quantity = Quantity;
    }
    
}
