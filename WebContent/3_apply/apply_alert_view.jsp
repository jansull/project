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
	<input type="hidden" name="a_no" value="${a_no}">
	<input type="hidden" name="nos" value="${nos}">
	<input type="hidden" name="header_check" value="${header_check}">
	<input type="hidden" name="password" value="${password}">
	<input type="hidden" name="title" value="${title}">
	<input type="hidden" name="program_index" value="${program_index}">
	<input type="hidden" name="program_name" value="${program_name}">
	<input type="hidden" name="apply_date" value="${apply_date}">
	<input type="hidden" name="kid_count" value="${kid_count}">
	<input type="hidden" name="teen_kid_count" value="${teen_kid_count}">
	<input type="hidden" name="elementary_count" value="${elementary_count}">
	<input type="hidden" name="adult_count" value="${adult_count}">
	<input type="hidden" name="write_name" value="${write_name}">
	<input type="hidden" name="agency_name" value="${agency_name}">
	<input type="hidden" name="tell_1" value="${tell_1}">
	<input type="hidden" name="tell_2" value="${tell_2}">
	<input type="hidden" name="tell_3" value="${tell_3}">
	<input type="hidden" name="email" value="${email}">
	<input type="hidden" name="reserve_check" value="${reserve_check}">
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