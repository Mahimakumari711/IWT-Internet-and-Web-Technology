<%@ page import="java.sql.*" %>
<%@ include file="navbar.jsp" %>

<%
String idParam = request.getParameter("id");
if(idParam == null){
    idParam = "1";
}

int id = Integer.parseInt(idParam);

try{
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/college_db",
        "root",
        "Kumarimahima711@"
    );

    PreparedStatement ps = con.prepareStatement(
        "SELECT * FROM student WHERE id=?"
    );
    ps.setInt(1,id);

    ResultSet rs = ps.executeQuery();

    if(rs.next()){
%>

<h2>Student Details</h2>

ID: <%= rs.getInt("id") %><br><br>
Name: <%= rs.getString("name") %><br><br>
Email: <%= rs.getString("email") %><br><br>
Course: <%= rs.getString("course") %><br><br>
Age: <%= rs.getInt("age") %><br><br>
CGPA: <%= rs.getFloat("cgpa") %><br><br>

<%
    } else {
        out.println("<p style='color:red;'>No student found!</p>");
    }

    rs.close();
    ps.close();
    con.close();

} catch(Exception e){
    out.println("<p style='color:red;'>Error: " + e + "</p>");
}
%>
