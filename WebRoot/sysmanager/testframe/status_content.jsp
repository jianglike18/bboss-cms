<%@ include file="../include/global1.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="../base/scripts/panes.jsp"%>

<head>  
  <title>属性容器</title>
  <%@ include file="/include/css.jsp"%>
  
  <script language="javascript">
    function disableButton(){        
        while(!getPropertiesToolbar().tools1){
            ;
        }
        getPropertiesToolbar().tools1.disabled = true;            
        getPropertiesToolbar().tools2.disabled = true;
        getPropertiesToolbar().tools3.disabled = true;           
    }
    //window.onload=disableButton;
    
  </script>

</head>
<body class="contentbodymargin">
<div id="contentborder">

<table>
  <tr>
    <td>
      状态区
       <%
	String account = request.getParameter("user");
String pass = request.getParameter("password");
%>
    workspace_tent
        当前用户信息：<%= account%>
        当前用户米啊：<%= pass%> 
    </td>
  </tr>
</table>

</div>
</body>
</html>
  
     
 
 


