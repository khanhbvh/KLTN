<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!-- upload -->
<div class="upload">
	<!-- container -->
	<div class="container">
		<div class="upload-grids">
			<div class="upload-right">
			<form method="POST" action="upload/uploadFile" enctype="multipart/form-data">
				<div class="upload-file">
					<div class="services-icon">
						<span class="glyphicon glyphicon-open" aria-hidden="true"></span>
					</div>
					
						<input type="file" name="file"><br /> 
						
					<!-- </form> -->
					<!-- <input type="file" value="Choose file.."> -->
				</div>
				<div class="upload-info">
					<h5>Select files to upload</h5>
					<span>or</span>
					<p>Drag and drop files</p>
				</div>
				<input type="submit" value="Upload"> Press here to upload the file!
				</form>
			</div>
			<div class="upload-right-bottom-grids">
				<div class="col-md-4 upload-right-bottom-left">
					<h4>Help and Suggestions</h4>
					<div class="upload-right-top-list">
						<ul>
							<li><a href="#">Lorem ipsum dolor sit amet</a></li>
							<li><a href="#">Fusce egestas tincidunt massa</a></li>
							<li><a href="#">Pellentesque vehicula quis tellus</a></li>
							<li><a href="#">Etiam gravida feugiat tortor eget
									eleifend</a></li>
							<li><a href="#">Etiam iaculis facilisis metus a viverra</a></li>
							<li><a href="#">Fusce sed enim non orci molestie</a></li>
							<li><a href="#">Lorem ipsum dolor sit amet</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 upload-right-bottom-left">
					<h4>Import videos</h4>
					<div class="upload-right-top-list">
						<ul>
							<li><a href="#">Lorem ipsum dolor sit amet</a></li>
							<li><a href="#">Fusce egestas tincidunt massa</a></li>
							<li><a href="#">Pellentesque vehicula quis tellus</a></li>
							<li><a href="#">Etiam gravida feugiat tortor eget
									eleifend</a></li>
							<li><a href="#">Etiam iaculis facilisis metus a viverra</a></li>
							<li><a href="#">Fusce sed enim non orci molestie</a></li>
							<li><a href="#">Lorem ipsum dolor sit amet</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 upload-right-bottom-left">
					<h4>Live streaming</h4>
					<div class="upload-right-top-list">
						<ul>
							<li><a href="#">Lorem ipsum dolor sit amet</a></li>
							<li><a href="#">Fusce egestas tincidunt massa</a></li>
							<li><a href="#">Pellentesque vehicula quis tellus</a></li>
							<li><a href="#">Etiam gravida feugiat tortor eget
									eleifend</a></li>
							<li><a href="#">Etiam iaculis facilisis metus a viverra</a></li>
							<li><a href="#">Fusce sed enim non orci molestie</a></li>
							<li><a href="#">Lorem ipsum dolor sit amet</a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //container -->
</div>

<!-- footer decorator -->
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>