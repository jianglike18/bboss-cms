<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>
<!-- 
	������ͨ�����ݼ�������ȡ��ҳ�б����ݣ������ṩ��ѯ����
-->
<html>
<head>
<title>������ͨ�����ݼ�������ȡ��ҳ�б����ݣ������ṩ��ѯ����</title>
</head>
<body>
	<table>
				<tr class="cms_report_tr">
						<!--���÷�ҳ��ͷ-->
					<form action="" method="post">
						<td  style="width:20%">�����������</td>
						<td  style="width:5%" colspan="100"><input type="text" name="TABLE_NAME" value="<%=request.getParameter("TABLE_NAME") %>"><input type="submit" name="��ѯ" value="��ѯ"></td>
					</form>
				</tr>
						
	    
				<pg:listdata dataInfo="test.pager.QueryTableList" keyName="QueryTableList" />
				<pg:param name="TABLE_NAME" />
				<!--��ҳ��ʾ��ʼ,��ҳ��ǩ��ʼ��-->
				<pg:pager maxPageItems="15" scope="request" data="QueryTableList" 
						  isList="false">
					<tr class="cms_report_tr">
						<!--���÷�ҳ��ͷ-->

						<td width="2%" align=center style="width:5%">
						<input class="checkbox" 
							type="checkBox" hidefocus=true 
							name="checkBoxAll" 
							onClick="checkAll('checkBoxAll','ID')"> 
						</td>
						<td width="8%">
							TABLE_NAME					</td>
						<td width="8%">
							TABLE_ID_NAME						</td>
						<td width="28%">
							TABLE_ID_INCREMENT</td>
						
						<td width="6%">
							TABLE_ID_VALUE						</td>
						<td width="9%">
							TABLE_ID_GENERATOR						</td>
						
						<td width="10%" height='30'>TABLE_ID_TYPE</td>
						<td width="10%" height='30'>TABLE_ID_PREFIX</td>
					</tr>
				<pg:notify>
						<tr  class="labeltable_middle_tr_01">
							<td colspan=100 align='center' height="18px">
								û������
							</td>
						</tr>
				</pg:notify>

					
				<pg:list>
					<tr class="cms_report_tr">
						

						<td width="2%" align=center style="width:5%">
							<input class="checkbox" hideFocus onClick="checkOne('checkBoxAll','ID')" 
							type="checkbox" name="ID" 
							value="<pg:cell colName="document_id" defaultValue=""/>">										
						</td>
						<td width="8%">
							<pg:cell colName="TABLE_NAME" defaultValue=""/>					</td>
						<td width="8%">
							<pg:cell colName="TABLE_ID_NAME" defaultValue=""/>						</td>
						<td width="28%">
							<pg:cell colName="TABLE_ID_INCREMENT" defaultValue=""/></td>
						
						<td width="6%">
							<pg:cell colName="TABLE_ID_VALUE" defaultValue=""/>						</td>
						<td width="9%">
							<pg:cell colName="TABLE_ID_GENERATOR" defaultValue=""/>						</td>
						
						<td width="10%" height='30'><pg:cell colName="TABLE_ID_TYPE" defaultValue=""/></td>
						<td width="10%" height='30'><pg:cell colName="TABLE_ID_PREFIX" defaultValue=""/></td>
					</tr>
					</pg:list>
					<tr class="labeltable_middle_tr_01">
						<td colspan=11 ><div class="Data_List_Table_Bottom"> 
							��
							<pg:rowcount />
							����¼
							ÿҳ��ʾ15��
							<pg:index />					</div>  </td>
					</tr>
					<input id="queryString" name="queryString" value="<pg:querystring/>" type="hidden">
					<tr></tr>
				</pg:pager>
	
				
	</table>
</body>
</html>
