
<%@page import="Points.FacultyPoints"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="External/fontawesome/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="External/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="External/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <title>Points Sheet Of Faculties</title>
        
        <style>
            table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    
            
        </style>
    </head>
    
    <%!
            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            Integer eid;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                qry="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='A' AND gender='male'";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            
          
        %>
        
        
        
        
        
         <%!
            Connection conn1;
            Statement stat1;
            ResultSet result1;
            String qry1;
            
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat1= conn1.createStatement();
                qry1="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='B' AND gender='male'";
                result1=stat1.executeQuery(qry1);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
         <%!
            Connection conn2;
            Statement stat2;
            ResultSet result2;
            String qry2;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat2= conn2.createStatement();
                qry2="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='C' AND gender='male'";
                result2=stat2.executeQuery(qry2);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
         <%!
            Connection conn3;
            Statement stat3;
            ResultSet result3;
            String qry3;
            
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat3= conn3.createStatement();
                qry3="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='D' AND gender='male'";
                result3=stat3.executeQuery(qry3);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        
         <%!
            Connection conn4;
            Statement stat4;
            ResultSet result4;
            String qry4;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat4= conn4.createStatement();
                qry4="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='E' AND gender='male'";
                result4=stat4.executeQuery(qry4);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        
         <%!
            Connection conn5;
            Statement stat5;
            ResultSet result5;
            String qry5;
         %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn5 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat5= conn5.createStatement();
                qry5="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='F' AND gender='male'";
                result5=stat5.executeQuery(qry5); 
                
                
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            
            
           %>
        
        
         <%!
            Connection conn6;
            Statement stat6;
            ResultSet result6;
            String qry6;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn6 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat6= conn6.createStatement();
                qry6="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='G' AND gender='male'";
                result6=stat6.executeQuery(qry6);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
         <%!
            Connection conn7;
            Statement stat7;
            ResultSet result7;
            String qry7;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn7 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat7= conn7.createStatement();
                qry7="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='H' AND gender='male'";
                result7=stat7.executeQuery(qry7);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
         <%!
            Connection conn8;
            Statement stat8;
            ResultSet result8;
            String qry8;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn8 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat8= conn8.createStatement();
                qry8="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='I' AND gender='male'";
                result8=stat8.executeQuery(qry8);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
         <%!
            Connection conn9;
            Statement stat9;
            ResultSet result9;
            String qry9;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn9 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat9= conn9.createStatement();
                qry9="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='J' AND gender='male'";
                result9=stat9.executeQuery(qry9);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
         <%!
            Connection conn10;
            Statement stat10;
            ResultSet result10;
            String qry10;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn10 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat10= conn10.createStatement();
                qry10="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='K' AND gender='male'";
                result10=stat10.executeQuery(qry10);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
         
        <%!
            Connection con;
            Statement sta;
            ResultSet resul;
            String qryy;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                sta= con.createStatement();
                qryy="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='A' AND gender='female'";
                resul=sta.executeQuery(qryy);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            
            
             
        %>
         
        
        
         <%!
            Connection con1;
            Statement sta1;
            ResultSet resul1;
            String qryy1;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                sta1= con1.createStatement();
                qryy1="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='B' AND gender='female'";
                resul1=sta1.executeQuery(qryy1);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
         
        <%!
            Connection con2;
            Statement sta2;
            ResultSet resul2;
            String qryy2;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                sta2= con2.createStatement();
                qryy2="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='C' AND gender='female'";
                resul2=sta2.executeQuery(qryy2);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        <%!
            Connection con3;
            Statement sta3;
            ResultSet resul3;
            String qryy3;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                sta3= con3.createStatement();
                qryy3="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='D' AND gender='female'";
                resul3=sta3.executeQuery(qryy3);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        <%!
            Connection con4;
            Statement sta4;
            ResultSet resul4;
            String qryy4;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                sta4= con4.createStatement();
                qryy4="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='E' AND gender='female'";
                resul4=sta4.executeQuery(qryy4);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        <%!
            Connection con5;
            Statement sta5;
            ResultSet resul5;
            String qryy5;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con5 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                sta5= con5.createStatement();
                qryy5="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='F' AND gender='female'";
                resul5=sta5.executeQuery(qryy5);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            
        %>
        
        <%!
            Connection con6;
            Statement sta6;
            ResultSet resul6;
            String qryy6;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con6 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                sta6= con6.createStatement();
                qryy6="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='G' AND gender='female'";
                resul6=sta6.executeQuery(qryy6);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        <%!
            Connection con7;
            Statement sta7;
            ResultSet resul7;
            String qryy7;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con7 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                sta7= con7.createStatement();
                qryy7="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='H' AND gender='female'";
                resul7=sta7.executeQuery(qryy7);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        <%!
            Connection con8;
            Statement sta8;
            ResultSet resul8;
            String qryy8;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con8 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                sta8= con8.createStatement();
                qryy8="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='I' AND gender='female'";
                resul8=sta8.executeQuery(qryy8);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        <%!
            Connection con9;
            Statement sta9;
            ResultSet resul9;
            String qryy9;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con9 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                sta9= con9.createStatement();
                qryy9="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='J' AND gender='female'";
                resul9=sta9.executeQuery(qryy9);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        <%!
            Connection con10;
            Statement sta10;
            ResultSet resul10;
            String qryy10;
          
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con10 = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                sta10= con10.createStatement();
                qryy10="SELECT eid,COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='K' AND gender='female'";
                resul10=sta10.executeQuery(qryy10);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
        
        
               
        
        
        <%String url= "jdbc:mysql://localhost/";

    String username="root";
    String password="";
    String database="university";
    
    Connection connection=null;
    Statement statement=null;
    ResultSet resultSet=null;
    
    connection=DriverManager.getConnection(url+database,username,password);
    statement=connection.createStatement();
    
    
    
    
    
    
    String sqAl="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='A' AND gender='male'";
    ResultSet rsA1=statement.executeQuery(sqAl);
    String CountRowA1="";
    
    while(rsA1.next()){
        CountRowA1=rsA1.getString(1);
        }
    int MaleFacultyPointsA=Integer.parseInt(CountRowA1);  

    
    String sqA2="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='A' AND gender='female'";
    ResultSet rsA2=statement.executeQuery(sqA2);
    String CountRowA2="";
                                                                                        
    while(rsA2.next()){
        CountRowA2=rsA2.getString(1);       //As CountRow1 is a string we need to convert it to an integer to pass it through 
                                        

    }
    int FemaleFacultyPointsA=Integer.parseInt(CountRowA2); 
 
    
    int totalPointsA = FacultyPoints.CalculateFacultyPointsA(MaleFacultyPointsA,FemaleFacultyPointsA);
   
    
    
    
    
    
    
    
        String sqBl="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='B' AND gender='male'";
    ResultSet rsB1=statement.executeQuery(sqBl);
    String CountRowB1="";
    
    while(rsB1.next()){
        CountRowB1=rsB1.getString(1);
       }
    int MaleFacultyPointsB=Integer.parseInt(CountRowB1);  

    
    String sqB2="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='B' AND gender='female'";
    ResultSet rsB2=statement.executeQuery(sqB2);
    String CountRowB2="";
                                                                                        
    while(rsB2.next()){
        CountRowB2=rsB2.getString(1);       //As CountRow1 is a string we need to convert it to an integer to pass it through 
                                        

    }
    int FemaleFacultyPointsB=Integer.parseInt(CountRowB2); 
 
    
    int totalPointsB = FacultyPoints.CalculateFacultyPointsB(MaleFacultyPointsB,FemaleFacultyPointsB);
   
    
   
    
    
    
    
    
    
    
    
            String sqCl="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='C' AND gender='male'";
    ResultSet rsC1=statement.executeQuery(sqCl);
    String CountRowC1="";
    
    while(rsC1.next()){
        CountRowC1=rsC1.getString(1);
        }
    int MaleFacultyPointsC=Integer.parseInt(CountRowC1);  

    
    String sqC2="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='C' AND gender='female'";
    ResultSet rsC2=statement.executeQuery(sqC2);
    String CountRowC2="";
                                                                                        
    while(rsC2.next()){
        CountRowC2=rsC2.getString(1);       //As CountRow1 is a string we need to convert it to an integer to pass it through 
                                        

    }
    int FemaleFacultyPointsC=Integer.parseInt(CountRowC2); 
 
    
    int totalPointsC = FacultyPoints.CalculateFacultyPointsC(MaleFacultyPointsC,FemaleFacultyPointsC);
   

    
    String sqDl="SELECT SUM(`points`) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='D' AND gender='male'";
    ResultSet rsD1=statement.executeQuery(sqDl);
    String CountRowD1="";
    
    while(rsD1.next()){
        CountRowD1=rsD1.getString(1);
        }
    int MaleFacultyPointsD=Integer.parseInt(CountRowD1);  

    
    String sqD2="SELECT SUM(`points`) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='D' AND gender='female'";
    ResultSet rsD2=statement.executeQuery(sqD2);
    String CountRowD2="";
                                                                                        
    while(rsD2.next()){
        CountRowD2=rsD2.getString(1);       //As CountRow1 is a string we need to convert it to an integer to pass it through 
                                        

}
    int FemaleFacultyPointsD=Integer.parseInt(CountRowD2); 
 
    
    int totalPointsD = FacultyPoints.CalculateFacultyPointsD(MaleFacultyPointsD,FemaleFacultyPointsD);
   
    
    
    
    
    
           String sqEl="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='E' AND gender='male'";
    ResultSet rsE1=statement.executeQuery(sqEl);
   String CountRowE1="";
    
    while(rsE1.next()){
        CountRowE1=rsE1.getString(1);
        }
    int MaleFacultyPointsE=Integer.parseInt(CountRowE1);  

    
    String sqE2="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='E' AND gender='female'";
    ResultSet rsE2=statement.executeQuery(sqE2);
    String CountRowE2="";
                                                                                        
    while(rsE2.next()){
        CountRowE2=rsE2.getString(1);       //As CountRow1 is a string we need to convert it to an integer to pass it through 
                                        

    }
    int FemaleFacultyPointsE=Integer.parseInt(CountRowE2); 
 
    
    int totalPointsE = FacultyPoints.CalculateFacultyPointsE(MaleFacultyPointsE,FemaleFacultyPointsE);
   
    
    
    String sqFl="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='F' AND gender='male'";
    ResultSet rsF1=statement.executeQuery(sqFl);
    String CountRowF1="";
    
    while(rsF1.next()){
        CountRowF1=rsF1.getString(1);
        }
    int MaleFacultyPointsF=Integer.parseInt(CountRowF1);  

    
    String sqF2="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='F' AND gender='female'";
    ResultSet rsF2=statement.executeQuery(sqF2);
    String CountRowF2="";
                                                                                        
    while(rsF2.next()){
        CountRowF2=rsF2.getString(1);        
                                        

    }
    int FemaleFacultyPointsF=Integer.parseInt(CountRowF2); 
 
    
    int totalPointsF = FacultyPoints.CalculateFacultyPointsF(MaleFacultyPointsF,FemaleFacultyPointsF);
   
   
    
     String sqGl="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='G' AND gender='male'";
    ResultSet rsG1=statement.executeQuery(sqGl);
    String CountRowG1="";
    
    while(rsG1.next()){
        CountRowG1=rsG1.getString(1);
        }
    int MaleFacultyPointsG=Integer.parseInt(CountRowG1);  

    
    String sqG2="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='G' AND gender='female'";
    ResultSet rsG2=statement.executeQuery(sqG2);
    String CountRowG2="";
                                                                                        
    while(rsG2.next()){
        CountRowG2=rsG2.getString(1);        
                                        

}
    int FemaleFacultyPointsG=Integer.parseInt(CountRowG2); 
 
    
    int totalPointsG = FacultyPoints.CalculateFacultyPointsG(MaleFacultyPointsG,FemaleFacultyPointsG);
   
        
      String sqHl="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='H' AND gender='male'";
    ResultSet rsH1=statement.executeQuery(sqHl);
    String CountRowH1="";
    
    while(rsH1.next()){
        CountRowH1=rsH1.getString(1);
        }
    int MaleFacultyPointsH=Integer.parseInt(CountRowH1);  

    
    String sqH2="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='H' AND gender='female'";
    ResultSet rsH2=statement.executeQuery(sqH2);
    String CountRowH2="";
                                                                                        
    while(rsH2.next()){
        CountRowH2=rsH2.getString(1);        
                                        

}
    int FemaleFacultyPointsH=Integer.parseInt(CountRowH2); 
 
    
    int totalPointsH = FacultyPoints.CalculateFacultyPointsH(MaleFacultyPointsH,FemaleFacultyPointsH);
      
  
    
    
     String sqIl="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='I' AND gender='male'";
    ResultSet rsI1=statement.executeQuery(sqIl);
    String CountRowI1="";
    
    while(rsI1.next()){
        CountRowI1=rsI1.getString(1);
        }
    int MaleFacultyPointsI=Integer.parseInt(CountRowI1);  

    
    
    String sqI2="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='I' AND gender='female'";
    ResultSet rsI2=statement.executeQuery(sqI2);
    String CountRowI2="";
                                                                                        
    while(rsI2.next()){
        CountRowI2=rsI2.getString(1);        
                                        

}
    int FemaleFacultyPointsI=Integer.parseInt(CountRowI2); 
 
    
    int totalPointsI = FacultyPoints.CalculateFacultyPointsI(MaleFacultyPointsI,FemaleFacultyPointsI);
    
    
    
    
    






        
        
        
    
        
    
   
    
    
    
    
    
    
    String sqJl="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='J' AND gender='male'";
    ResultSet rsJ1=statement.executeQuery(sqJl);
    String CountRowJ1="";
    
    while(rsJ1.next()){
        CountRowJ1=rsJ1.getString(1);
        }
    int MaleFacultyPointsJ=Integer.parseInt(CountRowJ1);  

    
    
    String sqJ2="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='J' AND gender='female'";
    ResultSet rsJ2=statement.executeQuery(sqJ2);
    String CountRowJ2="";
                                                                                        
    while(rsJ2.next()){
        CountRowJ2=rsJ2.getString(1);        
                                        

}
    int FemaleFacultyPointsJ=Integer.parseInt(CountRowJ2); 
 
    
    int totalPointsJ = FacultyPoints.CalculateFacultyPointsJ(MaleFacultyPointsJ,FemaleFacultyPointsJ);
   
        
        
    
    String sqKl="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='K' AND gender='male'";
    ResultSet rsK1=statement.executeQuery(sqKl);
    String CountRowK1="";
    
    while(rsK1.next()){
        CountRowK1=rsK1.getString(1);
        }
    int MaleFacultyPointsK=Integer.parseInt(CountRowK1);  

    
    
    String sqK2="SELECT COALESCE(SUM(`points`),0) AS POINTS FROM placesaf WHERE type='Annual' AND faculty='K' AND gender='female'";
    ResultSet rsK2=statement.executeQuery(sqK2);
    String CountRowK2="";
                                                                                        
    while(rsK2.next()){
        CountRowK2=rsK2.getString(1);        
                                        

}
    int FemaleFacultyPointsK=Integer.parseInt(CountRowK2); 
 
    
    int totalPointsK = FacultyPoints.CalculateFacultyPointsK(MaleFacultyPointsK,FemaleFacultyPointsK);
   
        
        
   %>                                          
        
        
        
        

        
        
 <body>
      
                      
        
       <header>
                <img src="pictures/mainHeader.png" width="100%" height="20%">
        </header>
                <img src="pictures/points.png" width="100%" height="20%">
            
            <br><br>

        
        <table style="width:100%;align:center">
            <tr>
            <th rowspan="2">
               
            </th>
            
           
                <th rowspan="">
                    Faculty Of Art </th>
                
                <th  rowspan="">
                    Faculty Of Science </th>
                <th rowspan="">
                    Faculty Of Management Studies& Commerce</th>
                
                <th rowspan="">
                    Faculty Of Medicine</th>
                
                <th rowspan="">
                    Faculty Of Business Studies </th>
                
                 <th rowspan="">
                     Faculty Of Applied Science</th>
                 <th rowspan="">
                    Faculty Of Agriculture</th>
                 <th rowspan="">
                    Faculty Of Engineering</th>
                 
                 <th rowspan="">
                    Faculty Of Siddha Medicine</th>
                 <th rowspan="">
                    Allied Health Science </th>
                 <th rowspan="">
                    Faculty Of Technology</th>
            </tr>
            
            <tr>
                
                <td align="center">A</td>
                <td align="center">B</td>
                <td align="center">C</td>
                <td align="center">D</td>
                <td align="center">E</td>
                <td align="center">F</td>
                <td align="center">G</td>
                <td align="center">H</td>
                <td align="center">I</td>
                <td align="center">J</td>
                <td align="center">K</td>
                
            </tr>
            
            <tr>
                <td>MEN</td>
                
                <td align='center'>
                        <%
                    while (result.next()){
                        eid=result.getInt("eid");
                         %>
                
                    <%=result.getString("POINTS")%>
                     <%
                           }
                    %> 
                </td>      
                <td align='center'> <%
                    while (result1.next()){
                        eid=result1.getInt("eid");
                         %>
                
                    <%=result1.getString("POINTS")%>
                     <%
                           }
                    %> </td>
                <td align='center'> <%
                    while (result2.next()){
                        eid=result2.getInt("eid");
                         %>
                
                    <%=result2.getString("POINTS")%>
                     <%
                           }
                    %> </td>
                 <td align='center'> <%
                    while (result3.next()){
                        eid=result3.getInt("eid");
                         %>
                
                    <%=result3.getString("POINTS")%>
                     <%
                           }
                    %> </td>
                <td align='center'> <%
                    while (result4.next()){
                        eid=result4.getInt("eid");
                         %>
                
                    <%=result4.getString("POINTS")%>
                     <%
                           }
                    %> </td>
                <td align='center'> <%
                    while (result5.next()){
                        eid=result5.getInt("eid");
                         %>
                
                    <%=result5.getString("POINTS")%>
                     <%
                           }
                    %> </td>
                <td align='center'> <%
                    while (result6.next()){
                        eid=result6.getInt("eid");
                         %>
                
                    <%=result6.getString("POINTS")%>
                     <%
                           }
                    %> </td>
                <td align='center'> <%
                    while (result7.next()){
                        eid=result7.getInt("eid");
                         %>
                
                    <%=result7.getString("POINTS")%>
                     <%
                           }
                    %> </td>
                <td align='center'> <%
                    while (result8.next()){
                        eid=result8.getInt("eid");
                         %>
                
                    <%=result8.getString("POINTS")%>
                     <%
                           }
                    %> </td>
                <td align='center'> <%
                    while (result9.next()){
                        eid=result9.getInt("eid");
                         %>
                
                    <%=result9.getString("POINTS")%>
                     <%
                           }
                    %> </td>
                <td align='center'> <%
                    while (result10.next()){
                        eid=result10.getInt("eid");
                         %>
                
                    <%=result10.getString("POINTS")%>
                     <%
                           }
                    %> </td>



            </tr>
            
            <tr>
                <td>WOMEN</td>
                 <td align='center'> <%
                    while (resul.next()){
                        eid=resul.getInt("eid");
                         %>
                
                    <%=resul.getString("POINTS")%>
                     <%
                           }
                    %> </td>
                <td align='center'><%
                    while (resul1.next()){
                        eid=resul1.getInt("eid");
                         %>
                
                    <%=resul1.getString("POINTS")%>
                     <%
                           }
                    %></td>
                <td align='center'><%
                    while (resul2.next()){
                        eid=resul2.getInt("eid");
                         %>
                
                    <%=resul2.getString("POINTS")%>
                     <%
                           }
                    %></td>
                <td align='center'><%
                    while (resul3.next()){
                        eid=resul3.getInt("eid");
                         %>
                
                    <%=resul3.getString("POINTS")%>
                     <%
                           }
                    %></td>
                <td align='center'><%
                    while (resul4.next()){
                        eid=resul4.getInt("eid");
                         %>
                
                    <%=resul4.getString("POINTS")%>
                     <%
                           }
                    %></td>
                <td align='center'><%
                    while (resul5.next()){
                        eid=resul5.getInt("eid");
                         %>
                
                    <%=resul5.getString("POINTS")%>
                     <%
                           }
                    %></td>
                <td align='center'><%
                    while (resul6.next()){
                        eid=resul6.getInt("eid");
                         %>
                
                    <%=resul6.getString("POINTS")%>
                     <%
                           }
                    %></td>
                <td align='center'><%
                    while (resul7.next()){
                        eid=resul7.getInt("eid");
                         %>
                
                    <%=resul7.getString("POINTS")%>
                     <%
                           }
                    %></td>
                <td align='center'><%
                    while (resul8.next()){
                        eid=resul8.getInt("eid");
                         %>
                
                    <%=resul8.getString("POINTS")%>
                     <%
                           }
                    %></td>
                <td align='center'><%
                    while (resul9.next()){
                        eid=resul9.getInt("eid");
                         %>
                
                    <%=resul9.getString("POINTS")%>
                     <%
                           }
                    %></td>
                <td align='center'><%
                    while (resul10.next()){
                        eid=resul10.getInt("eid");
                         %>
                
                    <%=resul10.getString("POINTS")%>
                     <%
                           }
                    %></td>



            </tr>
            
            
             <tr>
                <td align='center'>TOTAL</td>
                <td align='center'><% out.print(totalPointsA); %></td>
                <td align='center'><% out.print(totalPointsB); %></td>
                <td align='center'><% out.print(totalPointsC); %></td>
                <td align='center'><% out.print(totalPointsD); %></td>
                <td align='center'><% out.print(totalPointsE); %></td>
                <td align='center'><% out.print(totalPointsF); %></td>
                <td align='center'><% out.print(totalPointsG); %></td>
                <td align='center'><% out.print(totalPointsH); %></td>
                <td align='center'><% out.print(totalPointsI); %></td>
                <td align='center'><% out.print(totalPointsJ); %></td>
                <td align='center'><% out.print(totalPointsK); %></td>

            </tr>
            
           
       </table>
                
                
                
       
    </body>
</html>
