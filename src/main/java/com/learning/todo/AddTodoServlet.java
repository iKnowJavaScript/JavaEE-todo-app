package com.learning.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learning.todo.TodoService;

@WebServlet(urlPatterns = "/add-todo.do")
public class AddTodoServlet extends HttpServlet {

	private TodoService todoService = new TodoService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String todo = request.getParameter("todo");
		String category = request.getParameter("category");

		if (!todo.isEmpty()) {
			todoService.addTodo(new Todo(todo, category));
		}
		request.setAttribute("todos", todoService.retrieveTodos());
		response.sendRedirect("/list-todo.do");
	}

}
