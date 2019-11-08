<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/16
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="<%=request.getContextPath()%>\jquery-1.12.4.js"></script>

<script>

    function huo() {
        var userName = $("#user").val();
      if(userName===null||userName===""){
          $("#span").html("用户名不能为空").css("color","#ff0000");
      }else {
          $.ajax({
              "url" : "/servlet",
              "type" : "post",
              "data" : "userName="+userName,
              "dataType" : "text",
              "success" :function (result) {
                  if (result=="true"){
                      $("#span").html("注册成功").css("color","#0000ff");
                  }else {
                      $("#span").html("该用户名已存在").css("color","#00ff00");
                  }
              }

          })
      }

    }
</script>
<html>
<head></head>
<body>
<input id="user" type="text" name="userName" onblur="huo()"/>
<span id="span"></span>
</body>
</html>
