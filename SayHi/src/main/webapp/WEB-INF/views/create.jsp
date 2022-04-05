<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../resources/css/teamA.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>File Upload</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col"></div>
			<div class="col">
				<div class="top">
					<div class="badge bg-title px-5 py-2"><h2 class="mb-0">Create File</h2></div>
				</div>
				<div class="middle">
					<div class="text-center my-3">
						<form method="POST" enctype="multipart/form-data" id="uploadForm"
							action="<%=request.getContextPath()%>/image/createFile"
							onsubmit="return confirm('파일을 업로드 하시겠습니까?');">
							<div class="my-5">
								<p>이미지 파일용</p>
								<input class="form-control" type="file" id="imagefile"
									name="imagefile" accept="image/*" multiple>
							</div>
							<div class="my-5">
								<p>모든 파일용</p>
								<input class="form-control" type="file" id="allfile"
									name="allfile" multiple>
							</div>
							<button class="btn btn-primary">저장</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col"></div>

		</div>
	</div>
	<footer class="text-center py-3">
		<span class="align-middle">@2022 Web Service 양지후, 이지슬</span>
	</footer>
</body>
</html>