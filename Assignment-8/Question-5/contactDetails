<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>

<main>
    <h2>Thank You! Your Message Has Been Received</h2>
    
    <div class="submitted-data">
        <h3>Submitted Details:</h3>
        <p><strong>Name:</strong> <%= request.getParameter("name") %></p>
        <p><strong>Email:</strong> <%= request.getParameter("email") %></p>
        <p><strong>Phone:</strong> <%= request.getParameter("phone") != null ? request.getParameter("phone") : "Not provided" %></p>
        <p><strong>Subject:</strong> <%= request.getParameter("subject") %></p>
        <p><strong>Message:</strong><br><%= request.getParameter("message") != null ? request.getParameter("message").replace("\n", "<br>") : "No message" %></p>
    </div>
    
    <a href="contact.jsp" class="back-btn">← Send Another Message</a>
    <a href="home.jsp" class="back-btn">← Back to Home</a>
</main>

<%@ include file="footer.jsp" %>
