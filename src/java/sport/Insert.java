package sport;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author User
 */
public class Insert {

    double totalIncome,balance;
    double totalExpenses;
    String grading;
    double all;
    Connection connection = null;
    Statement statement = null;
    PreparedStatement preparedStatement;

    // String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost/";
    String database = "track&field";
    String userid = "root";
    String password = "";

    public void add(double incomeT) {

        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            // con = DriverManager.getConnection(url, username, password);
            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            statement = connection.createStatement();
            String query = "insert into meet(totalIncome ) values (?)";

            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setDouble(1, incomeT);

            preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addExpenses(double expenses) {

        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            // con = DriverManager.getConnection(url, username, password);
            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            statement = connection.createStatement();
            String q1 = "Update meet set totalExpenses =? where meetid=1";

            preparedStatement = connection.prepareStatement(q1);
            preparedStatement.setDouble(1, expenses);

            preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public double calBalance() {

        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            // con = DriverManager.getConnection(url, username, password);
            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            statement = connection.createStatement();
            String sql1 = "select * FROM meet where meetid=1";

            ResultSet rs1 = statement.executeQuery(sql1);

            while (rs1.next()) {

                totalIncome = Double.parseDouble(rs1.getString("totalIncome"));
                totalExpenses = Double.parseDouble(rs1.getString("totalExpenses"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return (totalIncome - totalExpenses);
    }

    public void addBalance(double balance) {

        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            // con = DriverManager.getConnection(url, username, password);
            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            statement = connection.createStatement();
            String q1 = "Update meet set balance =? where meetid=1";

            preparedStatement = connection.prepareStatement(q1);
            preparedStatement.setDouble(1, balance);

            preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void addNetBalance(double balance) {

        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            // con = DriverManager.getConnection(url, username, password);
            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            statement = connection.createStatement();
            String q1 = "Update meet set netBalance =? where meetid=1";

            preparedStatement = connection.prepareStatement(q1);
            preparedStatement.setDouble(1, balance);

            preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public double getBalance(){
         try {
            try {
                Class.forName("com.mysql.jdbc.Driver");

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            // con = DriverManager.getConnection(url, username, password);
            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            statement = connection.createStatement();
             String sql1 = "select * FROM meet where meetid=1" ;

            ResultSet rs1 = statement.executeQuery(sql1);

            while (rs1.next()) {

                balance = Double.parseDouble(rs1.getString("balance"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return balance;


    }
    

    public double calAllowances(String id, double balance) {

        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            // con = DriverManager.getConnection(url, username, password);
            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            statement = connection.createStatement();
            String sql1 = "select * FROM grading where userid='" + id + "'";

            ResultSet rs1 = statement.executeQuery(sql1);

            while (rs1.next()) {

                grading = rs1.getString("grading");

            }

            if (grading.equalsIgnoreCase("A")) {

                all = balance * 0.1;

            } else if (grading.equalsIgnoreCase("B")) {

                all = balance * 0.05;

            } else if (grading.equalsIgnoreCase("C")) {

                all = balance * 0.02;

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return all;

    }

    public void addAllowances(String id, double all) {

        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            // con = DriverManager.getConnection(url, username, password);
            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
            statement = connection.createStatement();
            String q1 = "Update grading set  allowance =? where userid='" + id + "'";

            preparedStatement = connection.prepareStatement(q1);
            preparedStatement.setDouble(1, all);

            preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public double calNetBalance(double balance, double all) {
        return balance - all;

    }

}
