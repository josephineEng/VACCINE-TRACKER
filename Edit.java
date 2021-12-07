/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.health.health;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author OKWARISIIMA MARIA
 */
public class Edit extends SimpleTagSupport {

    private String table;
    private String where;
    private String newvalue1;
    private String newvalue2;
    private String newvalue3;
    private String newvalue4;
    private String newvalue5;

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
            
            
            String queryUpdate = "UPDATE " + table + " SET name='"+ newvalue1 + "',district='"+newvalue2+"',region='"+newvalue3+"',vaccines_received="+ newvalue4 + ",available_vaccines="+newvalue5+" WHERE id = " + where;
            PreparedStatement preparedStmt = con.prepareStatement(queryUpdate);
            preparedStmt.execute();       
            
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

    public void setNewvalue1(String newvalue1) {
        this.newvalue1 = newvalue1;
    }

    public void setNewvalue2(String newvalue2) {
        this.newvalue2 = newvalue2;
    }

    public void setNewvalue3(String newvalue3) {
        this.newvalue3 = newvalue3;
    }

    public void setNewvalue4(String newvalue4) {
        this.newvalue4 = newvalue4;
    }
    public void setNewvalue5(String newvalue5) {
        this.newvalue5 = newvalue5;
    }
    
}
