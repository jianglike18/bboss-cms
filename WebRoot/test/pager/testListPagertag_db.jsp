<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*,java.util.List" errorPage=""%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>
<!-- 
	������list��ǩ��ֱ��ִ�����ݿ⣬��ȡ�б���Ϣʵ��
	statement:���ݿ��ѯ���
	dbname:��ѯ����Ӧ���ݿ����ƣ���poolman.xml�ļ��н�������
-->
<html>
<head>
<title>������listpager��ǩ��ֱ��ִ�����ݿ⣬��ȡ��ҳ�б���Ϣʵ��</title>
</head>
<body>
<form name="com.frameworkset.goform" id="com.frameworkset.goform" method="post"></form>
	<table>
	    
		<pg:list autosort="true" id="testid" statement="select * from tableinfo order by table_id_value desc" 
	    		  dbname="bspf" isList="false" maxPageItems="5" form="com.frameworkset.goform">
			<pg:header>
				<pg:title type="td" width="15%" className="headercolor" title="����" sort="true" colName="table_name"/>
				<pg:title type="td" width="15%" className="headercolor"  sort="true" colName="table_id_name" title="��id��"/>
				<pg:title type="td" width="15%" className="headercolor"  sort="true" colName="table_id_value" title="��idֵ"/>				
			</pg:header>
			<pg:param name="table_name"/>
			<tr class="cms_data_tr" id="<pg:cell colName="table_name" defaultValue=""/>">
				<td> <pg:rowid offset="false" increament="1"/>
					<pg:cell colName="table_name" defaultValue=""/>
				</td> 
				<td>
					<pg:cell colName="table_id_name" defaultValue="" />
				</td>
				<td class="tablecells" align=center height='30' width="5%">
					<pg:cell colName="table_id_value" defaultValue=""/>
				</td>	
			</tr>
		</pg:list>
		<tr><td><pg:rowcount id="testid"/></td><td colspan="2">
		<pg:index custom="true" id="testid"/>
		</td></tr>		
		
	</table>
</body>
</html>
