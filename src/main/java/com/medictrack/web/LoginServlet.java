package com.medictrack.web;

// UserDAO and User imports removed; no login/session logic
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
// Session management removed for unrestricted access
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    // No userDAO needed; login logic fully removed

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Login logic removed for unrestricted access
        response.getWriter().println("Login is disabled. You have unrestricted access.");
    }
}
