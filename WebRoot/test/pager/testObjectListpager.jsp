<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>
<!-- 
	������ͨ�����ݼ�������ȡ��ҳ�б�����
-->
<html>
<head>
<title>������ͨ�����ݼ�������ȡ��ҳ�б�����</title>
</head>
<body>
	<table>
	    
				<pg:listdata dataInfo="test.pager.TableInfoListData" keyName="TableInfoListData" />
				<!--��ҳ��ʾ��ʼ,��ҳ��ǩ��ʼ��-->
				<pg:pager maxPageItems="15" scope="request" data="TableInfoListData" 
						  isList="false">
					<tr class="cms_report_tr">
						<!--���÷�ҳ��ͷ-->
					<pg:header>									
										
						<td width="2%" align=center style="width:5%">
						<input class="checkbox" 
							type="checkBox" hidefocus=true 
							name="checkBoxAll" 
							onClick="checkAll('checkBoxAll','ID')"> 
						</td>
						<pg:title nowrap="true" width="5%" title="TABLE_NAME"
											sort="false" colName="" className="report_header"/>
						<pg:title nowrap="true" width="5%" title="TABLE_ID_NAME"
											sort="true" colName="TABLE_ID_NAME" className="report_header"/>
						
						<td width="28%">
							TABLE_ID_INCREMENT</td>
						
						<td width="6%">
							TABLE_ID_VALUE						</td>
						<td width="9%">
							TABLE_ID_GENERATOR						</td>
						
						<td width="10%" height='30'>TABLE_ID_TYPE</td>
						<td width="10%" height='30'>TABLE_ID_PREFIX</td>
					</pg:header>									
					</tr>
				<pg:notify>
						<tr  class="labeltable_middle_tr_01">
							<td colspan=100 align='center' height="18px">
								û������
							</td>
						</tr>
				</pg:notify>

					
				<pg:list  autosort="false">
					<tr class="cms_report_tr">
						

						<td width="2%" align=center style="width:5%">
							<input class="checkbox" hideFocus onClick="checkOne('checkBoxAll','ID')" 
							type="checkbox" name="ID" 
							value="<pg:cell colName="TABLE_NAME" defaultValue=""/>">										
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
							<pg:index />					</div>  </td>
					</tr>
					<input id="queryString" name="queryString" value="<pg:querystring/>" type="hidden">
					<tr></tr>
				</pg:pager>
				
	</table>
</body>
</html>
