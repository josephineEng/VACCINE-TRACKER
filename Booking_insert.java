package org.health.booking;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.JspFragment;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sky IT
 */
public class Booking_insert extends SimpleTagSupport {

    private String name;
    private String date;
    private String center;
    private String vaccine;
    
    
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        try {
            JspWriter w = getJspContext().getOut();
            
            try {Class.forName("com.mysql.jdbc.Driver");
//              out.println("Connected to driver");
             
             try {Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/health", "root","");
//               out.println("<br/>Connected to DB");
                
                Statement st = c.createStatement();
                
                st.executeUpdate("insert into booking set name='"+name+"', date='"+date+"',healthcenter='"+center+"',vaccine='"+vaccine+"');
                out.print("Successfully placed your appointment");
                
                
                }catch (SQLException ex) {
                    Logger.getLogger(booking.class.getName()).log(Level.SEVERE, null, ex);
                }
            }catch (ClassNotFoundException ex){
            Logger.getLogger(booking.class.getName()).log(Level.SEVERE, null, ex);
        }       
            
    /**
     *
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    
    public void setCenter(String center) {
        this.center = center;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setVaccine(String vaccine) {
        this.vaccine = vaccine;
    }
            

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
            
        } catch (java.io.IOException ex) {
            throw new JspException("Error in booking tag", ex);
        } 
    }

    
    
}
