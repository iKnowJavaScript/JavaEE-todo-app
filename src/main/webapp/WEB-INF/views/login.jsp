<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>

	<div class="container">
		<h2 class="top-heading">Welcome to my first Servlet</h2>
		<h4>
			The current date is
			<%=date%></h4>

		<h5>Enter your credential to Login</h5>
		<form action="/login.do" method="POST">
			<p style="color: red">${errorMessage}</p>
			<span class="input-span"> Name : <input type="text"
				name="name" /></span> <span class="input-span">Password : <input
				type="password" name="password" /></span> <input type="submit"
				value="Login" />
		</form>

	</div>

	<footer class="footer">
		<div class="container">
			<p>footer content</p>
		</div>
	<%@ include file="../common/footer.jspf" %>
