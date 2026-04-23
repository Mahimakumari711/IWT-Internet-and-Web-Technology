<%@ page import="java.sql.*" %>

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
        "DELETE FROM student WHERE id=?"
    );
    ps.setInt(1,id);

    int result = ps.executeUpdate();

    if(result > 0){
        response.sendRedirect("displayStudents.jsp");
    } else {
        out.println("<p style='color:red;'>Student not found!</p>");
    }

    ps.close();
    con.close();

}catch(Exception e){
    out.println("<p style='color:red;'>Error: " + e + "</p>");
}
%>
