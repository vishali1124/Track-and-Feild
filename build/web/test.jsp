<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>

<%
    Connection conn;

    PreparedStatement pstmt;
    ResultSet result = null;
    ResultSet resultOne = null;
    String qry;
    Integer eid;
    Integer rowCount = null;

    Float record = null;
    Statement stat = null;
    String qryOne, qryTwo;
    PreparedStatement pstmt1 = null;
    PreparedStatement ps = null;

    eid = Integer.parseInt(request.getParameter("eid"));
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");

        qry = "INSERT INTO placesaf(eid,ename,type,etype,gender,date,place,sid,sname,faculty,record,unit,points) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        pstmt = conn.prepareStatement(qry);
        pstmt.setString(1, request.getParameter("eid"));
        pstmt.setString(2, request.getParameter("ename"));

        pstmt.setString(3, request.getParameter("type"));
        pstmt.setString(4, request.getParameter("etype"));

        pstmt.setString(5, request.getParameter("gender"));
        pstmt.setString(6, request.getParameter("date"));
        pstmt.setString(7, request.getParameter("place"));
        pstmt.setString(8, request.getParameter("sid"));
        pstmt.setString(9, request.getParameter("sname"));

        pstmt.setString(10, request.getParameter("faculty"));
        pstmt.setString(11, request.getParameter("record"));
        pstmt.setString(12, request.getParameter("unit"));

        pstmt.setString(13, request.getParameter("points"));
        stat = conn.createStatement();

//
//
//
        int recordResult = pstmt.executeUpdate();
//                
//                
        qryOne = "SELECT record from records WHERE ename='" + request.getParameter("ename") + "'";

        result = stat.executeQuery(qryOne);
        while (result.next()) {
            record = result.getFloat("record");
        }

        Float f = new Float("20.75f");
        String newRecord = request.getParameter("record");
        Float newRecordOne = f.parseFloat(newRecord);

        if (recordResult > 0) {

            String qryThree = "SELECT COUNT(sid) AS count from records WHERE ename='" + request.getParameter("ename") + "'";
            resultOne = stat.executeQuery(qryThree);

            while (resultOne.next()) {
                rowCount = resultOne.getInt("count");
            }

            if (rowCount == 0) {

                String qryFour = "INSERT INTO records(type, sid, sname, faculty, ename, record,unit, date) VALUES (?,?,?,?,?,?,?,?)";
                ps = conn.prepareStatement(qryFour);
                ps.setString(1, request.getParameter("type"));
                ps.setString(2, request.getParameter("sid"));
                ps.setString(3, request.getParameter("sname"));
                ps.setString(4, request.getParameter("faculty"));
                ps.setString(5, request.getParameter("ename"));
                ps.setString(6, request.getParameter("record"));
                ps.setString(7, request.getParameter("unit"));

                ps.setString(8, request.getParameter("date"));
                ps.executeUpdate();
                
                
                out.println("New record inserted into records table");
                
            } else {
                
                if (newRecordOne < record) {

                qryTwo = "UPDATE records SET type=?, sid=?, sname=?, faculty=?,record=?, unit=?, date=? WHERE ename='" + request.getParameter("ename") + "'";
                pstmt1 = conn.prepareStatement(qryTwo);
                pstmt1.setString(1, request.getParameter("type"));

                pstmt1.setString(2, request.getParameter("sid"));
                pstmt1.setString(3, request.getParameter("sname"));
                pstmt1.setString(4, request.getParameter("faculty"));

                pstmt1.setFloat(5, newRecordOne);
                pstmt1.setString(6, request.getParameter("unit"));

                pstmt1.setString(7, request.getParameter("date"));

                int janadi = pstmt1.executeUpdate();

                if (janadi > 0) {
//                    out.println("updated into records table");
                    response.sendRedirect("./PlaceTheStudents3.jsp");

                } else {
//                    out.println("not updated into records table");
                   response.sendRedirect("./PlaceTheStudents3.jsp");

                }

            }

            }
//            out.println("inserted into placesaf table");
            response.sendRedirect("./PlaceTheStudents3.jsp");

        } else {
//            out.println("not inserted into placesaf table");
             response.sendRedirect("./PlaceTheStudents3.jsp");

        }
              response.sendRedirect("./PlaceTheStudents3.jsp");

    } catch (ClassNotFoundException cnfe) {
        out.println("Class not found exception" + cnfe.toString());
    } catch (SQLException sqle) {
        out.println("SQL eCXCEPTION " + sqle);
    } catch (Exception ex) {
        out.println(" EXCEPTION " + ex);
    }


%>
