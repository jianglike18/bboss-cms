<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*,java.util.List" errorPage=""%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>
<!-- 
	������list��ǩ��ֱ��ִ�����ݿ⣬��ȡ�б���Ϣʵ��
	statement:���ݿ��ѯ���
	dbname:��ѯ����Ӧ���ݿ����ƣ���poolman.xml�ļ��н�������
-->
<html>
<head>
<title>������detail��ǩ��ֱ��ִ�����ݿ⣬��ȡ�б���Ϣʵ��</title>
</head>
<body>
	<table>
	    
		<pg:beaninfo statement="select * from tableinfo where lower(table_name)='td_sm_user' order by table_id_value desc" 
	    		  dbname="bspf">
		
			<tr class="cms_data_tr" id="<pg:cell colName="table_name" defaultValue=""/>">
				<td>
					<pg:cell colName="table_name" defaultValue=""/>
				</td> 
				<td>
					<pg:cell colName="table_id_name" defaultValue="" />
				</td>
				<td class="tablecells" align=center height='30' width="5%">
					<pg:cell colName="table_id_value" defaultValue=""/>
				</td>	
			</tr>
		</pg:beaninfo>
		
		<!-- pg:rowcount/-->
	</table>
</body>
</html>
