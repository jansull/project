<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<form name="loc">
	<input type="hidden" name="t_gubun">
	<input type="hidden" name="t_no" value="${t_no}">
</form>
<script type="text/javascript">
	alert("${t_msg}");
	//loc.t_gubun.value="view";
	loc.t_gubun.value="${t_gubun}";
	loc.method="post";
	loc.action="${t_url}";
	loc.submit();
</script>
</body>
</html>