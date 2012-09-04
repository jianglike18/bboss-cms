<%@ include file="../include/global1.jsp"%>
<%@ include file="../base/scripts/panes.jsp"%>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>
<%@ taglib uri="/WEB-INF/struts-nested.tld" prefix="nested"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-template.tld" prefix="template"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/dictionary.tld" prefix="dict"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*,com.frameworkset.platform.sysmgrcore.entity.*,com.frameworkset.platform.sysmgrcore.web.struts.form.*"%>
<%@ page import="com.frameworkset.platform.sysmgrcore.manager.SecurityDatabase"%>
<%@ page import="com.frameworkset.platform.sysmgrcore.manager.UserManager"%>
<%@ page import="com.frameworkset.platform.sysmgrcore.manager.OrgManager"%>
<%@ page import="com.frameworkset.util.StringUtil"%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>

<%String path = request.getParameter("path");

			%>
<html>
	<head>
		<script language="JavaScript" src="common.js" type="text/javascript"></script>
		<script language="javascript" src="../scripts/selectTime.js"></script>
		<SCRIPT language="JavaScript" SRC="validateForm.js"></SCRIPT>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>userInfo4</title>
		<%@ include file="/include/css.jsp"%>
		<link rel="stylesheet" type="text/css" href="../css/contentpage.css">
		<link rel="stylesheet" type="text/css" href="../css/tab.winclassic.css">
		<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.style2 {
	font-size: medium;
	font-weight: bold;
}
-->
        </style>
	</head>

	<script language="JavaScript">
	var path = "<%=path%>";
	function goBack(){	
		if(path == "allSchedular")
			document.location.href="../schedularmanage/allSchedular.jsp";
		else if(path == "arrangeSDList")	
			document.location.href="../schedularmanage/arrangeSDList.jsp";
		else if(path == "refuseArrangeSDList")	
			document.location.href="../schedularmanage/refuseArrangeSDList.jsp";
		else if(path == "auditingSDList")	
			document.location.href="../schedularmanage/auditingSDList.jsp";
		else if(path == "noPassList")
			document.location.href="../schedularmanage/noPassList.jsp";
		else if(path == "history")
			document.location.href="../schedularmanage/historySchedular.jsp";
		else if(path == "query")
			document.location.href="../schedularmanage/querySchedular.jsp";
		else if(path == "latest")
			document.location.href="../schedularmanage/latestSchedular.jsp";
		else if(path == "success")
			document.location.href="../schedularmanage/successfulSchedular.jsp";
		else if(path == "overtime")
			document.location.href="../schedularmanage/overTimeSchedular.jsp";
		else if(path == "departmentSchedularList")
			document.location.href="../schedularmanage/departmentSchedularList.jsp";
		
		else document.location.href="../schedularmanage/daySchedularList.jsp";
	}
	
</script>

	<body class="info" scrolling="no">

		<form name="schedularForm" method="post" action="">
			<p align="center" class="detailtitle">
				<br>
				<span class="style2">查看日程</span>
			</p>
			<pg:beaninfo requestKey="schedular">
				<table width="100%" height="25" border="0" cellpadding="0" cellspacing="2" class="thin">
					
					<tr>
						<td height="25" class="detailtitle" width="25%">
							<strong> 主题</strong>
						</td>
						<td height="25" width="25%">
							<input type="text" name="topic" readonly="true" value="<pg:cell colName="topic"  defaultValue=""/>">
						</td>

						<td height="25" class="detailtitle" width="25%">
							<strong> 地点</strong>
						</td>
						<td height="25" width="25%">
							<input type="text" name="place" readonly="true" value="<pg:cell colName="place"  defaultValue=""/>">
						</td>
						
					</tr>
					<tr>
						<td height="25" class="detailtitle" width="25%">
							<strong> 开始时间</strong>
						</td>
						<td height="25" width="25%">
							<input type="text" name="beginTime" readonly="true" value="<pg:cell colName="beginTime"  defaultValue=""/>">
						</td>

						<td height="25" class="detailtitle" width="25%">
							<strong> 结束时间</strong>
						</td>
						<td height="25" width="25%">
							<input type="text" name="endTime" readonly="true" value="<pg:cell colName="endTime"  defaultValue=""/>">
						</td>
						
					</tr>
					<tr>
						<td height="25" class="detailtitle" width="25%">
							<strong> 重要性</strong>
						</td>
						<td height="25" width="25%">
							<pg:equal colName="essentiality" value="0">
						<input type="text" name="type" readonly="true" value="重要">
					</pg:equal>
							<pg:equal colName="essentiality" value="1">
						<input type="text" name="type" readonly="true" value="一般">
					</pg:equal>
							<pg:equal colName="essentiality" value="2">
						<input type="text" name="type" readonly="true" value="不重要">
					</pg:equal>
						</td>
						<td height="25" class="detailtitle" width="25%">
							<strong> 是否空闲</strong>
						</td>
						<td height="25" width="25%">
							<pg:equal colName="isLeisure" value="0">
						<input type="text" name="type" readonly="true" value="忙">
					</pg:equal>
							<pg:equal colName="isLeisure" value="1">
						<input type="text" name="type" readonly="true" value="空闲">
					</pg:equal>
						</td>
						
					</tr>
					<tr>
						<td height="25" class="detailtitle" width="25%">
							<strong> 是否公事</strong>
						</td>
						<td height="25" width="25%">
							<pg:equal colName="isPublicAffair" value="0">
						<input type="text" name="type" readonly="true" value="公事">
					</pg:equal>
							<pg:equal colName="isPublicAffair" value="1">
						<input type="text" name="type" readonly="true" value="私事">
					</pg:equal>
						</td>
						<td height="25" class="detailtitle" width="25%">
							<strong> 是否公开</strong>
						</td>
						<td height="25" width="25%">
							<pg:equal colName="isOpen" value="0">
						<input type="text" name="type" readonly="true" value="保密">
					</pg:equal>
							<pg:equal colName="isOpen" value="1">
						<input type="text" name="type" readonly="true" value="公开">
					</pg:equal>
						</td>
						
					</tr>
					<tr>
						<td height="25" class="detailtitle" width="25%">
							<strong> 日程描述</strong>
						</td>
						<td height="25" width="25%">
							<TEXTAREA cols="30" rows="6" align="left" readonly="true"><pg:cell colName="content" defaultValue="" /></TEXTAREA>
						</td>
						
					</tr>
				</table>
			</pg:beaninfo>
		</form>
		<hr width="98%">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<INPUT type="button" class="input" value="返回" onclick="goBack()">
				</td>
			</tr>
		</table>
	</body>
	<%@include file="../sysMsg.jsp" %>
</html>

