package com.app;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


//+----+--------------+--------------+-------------+
//| id | username     | password     | role        |
//+----+--------------+--------------+-------------+
//|  1 | attendee1    | attendee1    | attendee    |
//|  2 | participant1 | participant1 | participant |
//|  3 | organizer1   | organizer1   | organizer   |
//+----+--------------+--------------+-------------+


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/tourney_db";
            String user = "root";
            String pass = "password"; // Ensure this is the correct password
            Connection conn = DriverManager.getConnection(url, user, pass);
            Statement st = conn.createStatement();
            String query = "SELECT * FROM users WHERE username = '" + username + "' AND password = '" + password + "' AND role = '" + role + "'";
            ResultSet rs = st.executeQuery(query);

            if (rs.next()) {
                // Redirect users based on their role
                switch (role) {
                    case "attendee":
                        response.sendRedirect("attendee_login.jsp");
                        break;
                    case "organizer":
                        response.sendRedirect("organizer_login.jsp");
                        break;
                    case "participant":
                        response.sendRedirect("participant_login.jsp");
                        break;
                    case "admin":
                    	response.sendRedirect("admin_login.jsp");
                    	break;
                    default:
                        out.print("<h1>Login Failed!</h1>");
                        out.print("<p>Invalid role.</p>");
                }
            } else {
                // Display error message on login.jsp
                request.setAttribute("error", "Invalid username, password, or role.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

            rs.close();
            st.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            out.print("<h1>Login Failed!</h1>");
            out.print("<p>ClassNotFoundException: " + e.getMessage() + "</p>");
            e.printStackTrace();
        } catch (SQLException e) {
            out.print("<h1>Login Failed!</h1>");
            out.print("<p>SQLException: " + e.getMessage() + "</p>");
            e.printStackTrace();
        } catch (Exception e) {
            out.print("<h1>Login Failed!</h1>");
            out.print("<p>Exception: " + e.getMessage() + "</p>");
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
