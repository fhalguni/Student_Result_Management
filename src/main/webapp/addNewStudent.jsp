<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String Rollnum=request.getParameter("rollnum");
String name=request.getParameter("name");
String fatherName=request.getParameter("father");
String gender=request.getParameter("gender");

try {
    Connection con = ConnectionProvider.getCon();

    if (con != null) {
        Statement st = con.createStatement();
        st.executeUpdate("insert into student values('" + course + "','" + branch + "','" + Rollnum + "','" + name + "','" + fatherName + "','" + gender + "')");
        response.sendRedirect("adminHome.jsp");
    } else {
        // Handle the case when the connection is null
        out.print("Error: Unable to establish a connection to the database.");
    }

} catch (SQLException e) {
    // Handle SQL exceptions
    out.print("SQL Exception: " + e.getMessage());
} catch (Exception e) {
    // Handle other exceptions
    out.print("Exception: " + e.getMessage());
}
%>