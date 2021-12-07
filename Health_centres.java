/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.health.health;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author OKWARISIIMA MARIA
 */
public class Health_centres extends SimpleTagSupport {

    private String table;
    private String where;
    private String displayformat;

    /**
     * Called by the container to invoke this tag.The implementation of this
 method is provided by the tag library developer, and handles all tag
 processing, body iteration, etc.
     * @throws jakarta.servlet.jsp.JspException
     * @throws java.io.IOException
     */
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            out.println(ex);
        }
        
        try{
            Connection con = DriverManager.getConnection(
                               "jdbc:mysql://localhost:3306/vaccination",
                               "root",
                               ""
                            );
            
            Statement stmt = con.createStatement();
            ResultSet results = stmt.executeQuery("SELECT * FROM " + table);
            //table to select data from data base
            out.println("<table border=2>"
                    +"<tr>"
                    +"<th>Name</th>"
                   +"<th>District</th>"
                   +"<th>Region</th>"
                    +"<th>Vaccine recieved</th>"
                    +"<th>Available Vaccine</th>"
                    +"<th>Edit</th>"
                    
                    +"</tr>");
           
            
            
            
            while(results.next()){
                //Display value
                out.println("<tr>"
                        +"<td>"+results.getString("name")+"</td>"
                        +"<td>"+results.getString("name")+"</td>"
                        +"<td>"+results.getString("district")+"</td>"
                        +"<td>"+results.getString("region")+"</td>"
                        +"<td>"+results.getString("vaccines_received")+"</td>"
                        +"<td>"+results.getString("available_vaccines")+"</td>"
                        +"<td>"+"<a href='Edit_health_centre.jsp?id="+
                      results.getString("id")+"&name="+
                        results.getString("name")+"&name="
                        +results.getString("district")+"&district="
                        +results.getString("region")+"&region="+
                        results.getString("vaccines_received")+"&available_vaccines="+
                        results.getString("available_vaccines")+"'>edit</a>"+"</td>"
                
                );
               // out.print(results.getString("name"));
                //out.print(results.getString("vaccines_received"));
                //out.print(results.getString("available_vaccines"));
                //out.print("<a href='Edit_health_centre.jsp?id="+
                  //      results.getString("id")+"&name="+
                    //    results.getString("name")+"&location="+
                      //  +"td>"+results.getString("name")+"</td>"+"&vaccines_received="+
                        //results.getString("vaccines_received")+"&available_vaccines="+
                        //results.getString("available_vaccines")+"'>edit</a>");
            }

            
        } catch (SQLException ex) {
            out.println(ex);
        }
        
    }

    public void setTable(String table) {
        this.table = table;
    }

    public void setWhere(String where) {
        this.where = where;
    }

    public void setDisplayformat(String displayformat) {
        this.displayformat = displayformat;
    }
    
}
