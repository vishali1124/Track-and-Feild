/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package judges;
import dbconnection.DBConnection;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Pradeepika
 */
public class InvitationHandler {
    private ArrayList<String> judgeEmailList = null;
    
    public ArrayList<String> getJudgeEmails() {
        try {
            judgeEmailList = new ArrayList<String>();
            DBConnection dbcon = DBConnection.getConnectionInstance();
            System.out.println(dbcon);
            Connection con = dbcon.getDBConnection();
            Statement st = con.createStatement();
            
            String query = "SELECT email FROM judges";
            ResultSet emailsResults = st.executeQuery(query);
            System.out.println(emailsResults);
            while (emailsResults.next()) {
                judgeEmailList.add(emailsResults.getString("email"));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(InvitationHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally {
            return judgeEmailList;
        }
    }
    
    public ResultSet getInvitationDetails() {
        DBConnection dbcon = DBConnection.getConnectionInstance();
        Connection con = dbcon.getDBConnection();
        Statement st = con.createStatement();
    }
}
