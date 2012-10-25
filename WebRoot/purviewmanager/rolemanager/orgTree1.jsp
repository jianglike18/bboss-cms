<%
/*
 * <p>Title: 角色隶属机构树页面</p>
 * <p>Description: 角色隶属机构树页面</p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: chinacreator</p>
 * @Date 2008-3-25
 * @author liangbing.tao
 * @version 1.0
 */
 %>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg" %>
<%@ include file="/common/jsp/csscontextmenu-lhgdialog.jsp"%>
<%@ taglib uri="/WEB-INF/treetag.tld" prefix="tree" %>
<%@ page import="com.frameworkset.platform.security.AccessControl"%>

<%@ page import="org.frameworkset.web.servlet.support.RequestContextUtils"%>

<%
	AccessControl control = AccessControl.getInstance();
	control.checkManagerAccess(request,response);
	
	
	String roleId = request.getParameter("roleId");
	String href="roleconferorg_ajax.jsp?roleId=" + roleId;
	
%>
<%
	String msg = RequestContextUtils.getI18nMessage("sany.pdp.organization.tree.name", request);
%>
<html>
	<head>    
	  <title>属性容器</title>
	 </head>
	<body class="contentbodymargin" >
		<div id="contentborder">
			<form name="OrgJobForm" action="" method="post" >
				<table class="table" width="100%" border="0" cellpadding="0" cellspacing="1"> 
				  <tr class="tr" >
				     <td  class="td">
						    <tree:tree tree="role_org_tree"
						    	           node="role_org_tree.node"
						    	           imageFolder="../images/tree_images/"
						    	           collapse="true"
						    			   includeRootNode="true"
						    			   href="<%=href%>"
						    			   target="orgList"
						    			   mode="static-dynamic"
						    			   >                         
						                   <tree:param name="uid"/>
						                   <tree:param name="roleId"/>
						
						    			   <tree:treedata treetype="com.frameworkset.platform.sysmgrcore.purviewmanager.menu.RoleOrgTree"
						    	                   scope="request"
						    	                   rootid="0"  
						    	                   rootName="<%=msg %>"
						    	                   expandLevel="1"
						    	                   showRootHref="true"
						    	                   needObserver="false"
						    	                   refreshNode="false"
						    	                   />
						    	</tree:tree>
					</td>				  
				  </tr>  
				</table>
			</form>
		</div>
</body>
</html>

