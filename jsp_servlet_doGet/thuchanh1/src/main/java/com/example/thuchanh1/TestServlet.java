package com.example.thuchanh1;

import com.example.thuchanh1.model.User;
import com.example.thuchanh1.model.UserDB;

import java.io.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test")
public class TestServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "/index.jsp";
        String action = req.getParameter("action");
        if (action == null) {
            action = "join";
        }

        if (action.equals("join")) {
            url = "/index/jsp";
        } else if (action.equals("add")) {
            String firstName = req.getParameter("firstName");
            String lastName = req.getParameter("lastName");
            String email = req.getParameter("email");
            User user = new User(firstName, lastName, email);
            String message;
            if (firstName == null || lastName == null || email == null || firstName.isEmpty() || lastName.isEmpty() || email.isEmpty())  {
                message = "Please fill out all three text boxes";
                url = "/index.jsp";
            } else {
                message = "";
                url = "/thanks.jsp";
                UserDB.insert(user);
            }
            req.setAttribute("user", user);
            req.setAttribute("message", message);
        }
        getServletContext().getRequestDispatcher(url).forward(req, resp);
    }
}