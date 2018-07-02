<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- .auth -->
<main class="auth auth-floated"> <!-- form -->
<div class="container" align="center" style="text-align: center;">
	<div align="center" class="col-md-6 col-md-offset-3"
		style="border: 1px solid #999999; margin-top: 100px; width: 60%; height: 50%; min-width: 250px; max-width: 400px;">

		<form action="/login" method="post" class="form-horizontal">
			<div class="mb-4">

				<h1 class="h3">Sign In</h1>
				<br /> <br />
				<c:if test="${param.error ne null}">
					<div style="color: red">Invalid credentials.</div>
				</c:if>
			</div>

			<!-- .form-group -->
			<div class="form-group mb-4">
				<label class="d-block text-left" for="username">Username</label> <input
					type="text" id="username" name="username"
					class="form-control form-control-lg" required="" autofocus="">
			</div>
			<!-- /.form-group -->
			<!-- .form-group -->
			<div class="form-group mb-4">
				<label class="d-block text-left" for="pwd">Password</label> <input
					type="password" id="pwd" name="password"
					class="form-control form-control-lg" required="">
			</div>
			<!-- /.form-group -->
			<!-- .form-group -->
			<div class="form-group mb-4">
				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
					In</button>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</div>
			<!-- /.form-group -->
			<!-- .form-group -->
			<div class="form-group text-center">
				<div class="custom-control custom-control-inline custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="remember-me"> <label class="custom-control-label"
						for="remember-me">Keep me sign in</label>
				</div>
			</div>
			<!-- /.form-group -->
			<!-- recovery links -->
			<p class="py-3">
				<a href="auth-recovery-username.html" class="link">Forgot
					Username?</a> <span class="mx-2">.</span> <a
					href="auth-recovery-password.html" class="link">Forgot
					Password?</a>
			</p>
			<!-- /recovery links -->
			<!-- copyright -->

		</form>

	</div>
</div>
</main>