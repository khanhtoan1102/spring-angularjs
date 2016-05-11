<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
</head>
<body>
<script>
	$(document).ready(function(){
		$('#sub').click(function(){
			$.ajax({
				url: "/web/student/all",
				type: "GET",
				success: function(data){
					for(var i=0;i<data.length;i++){
						$('#re').text(data[i].name);
					}
				}
			});
		});
		
		
		$(document).on('click', '#btn', function(){
			$.confirm({
			    title: 'Confirm!',
			    content: 'Simple confirm!',
			    confirm: function(){
			        $.alert('Confirmed!');
			    },
			    cancel: function(){
			        $.alert('Canceled!')
			    }
			});
		});
		
		
		$('#conf').click(function(){
			var url = '/web/home';
			newPopup(url);
		});
		
		
		function newPopup(url) {
			popupWindow = window.open(url,'popUpWindow','height=430,width=750,left=300,top=50,resizable=yes,scrollbars=yes,toolbar=no,menubar=no,location=yes,directories=no,status=no')
		
		}
		
	});
	
</script>
	<form>
		<input type="text" name="
" />
		<input type="text" name="password" />
		<input type="button" value="submit" id="sub" />
	</form>
	<h1 id="re"></h1>
	<input type="button" value="back" id="btn"/>
	<input type="button" value="confrim" id="conf"/>
</body>
</html>