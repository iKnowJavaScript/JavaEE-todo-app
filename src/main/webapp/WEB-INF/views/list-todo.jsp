<%@ include file="../common/header.jspf" %>

	<nav role="navigation" class="navbar navbar-default">

		<div class="">
			<a href="/" class="navbar-brand">Brand</a>
		</div>

		<div class="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="/list-todo.do">Todos</a></li>
				<li><a href="http://www.quickapp.com">Quick App</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/logout.do">Logout</a></li>
			</ul>
		</div>

	</nav>

	<div class="container">
		<h2 class="top-heading">Welcome ${username}</h2>


		<table class="table table-striped">
			<caption>Your Todos are</caption>
			<thead>
				<th>Description</th>
				<th>Category</th>
				<th>Actions</th>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo" varStatus="loop">
					<tr>
						<td>${todo.name}</td>
						<td>${todo.category}</td>
						<td>&nbsp;&nbsp;<a class="btn btn-danger badge badge-danger"
							href="/delete-todo.do?todoId=${loop.index}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<form method="POST" action="/add-todo.do">
		<h4>Add New Action Item:</h4>
		<fieldset class="form-group">
			<label>Description</label> <input name="todo" type="text"
				class="form-control" /> <BR />
		</fieldset>
		<fieldset class="form-group">
			<label>Category</label> <input name="category" type="text"
				class="form-control" /> <BR />
		</fieldset>
		<input name="add" type="submit" class="btn btn-success" value="Submit" />
	</form>

	</div>

	<%@ include file="../common/footer.jspf" %>