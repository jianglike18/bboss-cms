<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*,java.util.List" errorPage=""%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>
<!-- 
	������beaninfo��ǩ��ֱ��ִ��Ԥ�����ѯ��������ȡ��ϸ��Ϣʵ��
	statement:���ݿ��ѯ���
	dbname:��ѯ����Ӧ���ݿ����ƣ���poolman.xml�ļ��н�������
-->

<%
	String table_name="td_sm_user";
	String statement="select * from tableinfo where table_name=${table_name} " ;
	
%>
<html>
<head>
<title>������beaninfo��ǩ��ֱ��ִ�����ݿ⣬��ȡ��ҳ�б���Ϣʵ��</title>
</head>
<body>

	<table>
		<pg:sqlparams sqlparamskey="key" pretoken="\\$\\{" endtoken="\\}">
				<pg:sqlparam name="table_name" value="<%=table_name %>" type="string"/>
					
		</pg:sqlparams> 
	   <pg:beaninfo statement="<%=statement %>" 
	    		  dbname="bspf"
	    		   sqlparamskey="key">
		
			<tr class="cms_data_tr" id="<pg:cell colName="table_name" defaultValue=""/>">
				<td>
					table_name:
				</td> 
				<td>
					<pg:cell colName="table_name" defaultValue=""/>
				</td> 
				<td>
					table_id_name��
				</td>
				<td>
					<pg:cell colName="table_id_name" defaultValue="" />
				</td>
				<td class="tablecells" align=center height='30' width="5%">
					table_id_value:
				</td>	
				<td class="tablecells" align=center height='30' width="5%">
					<pg:cell colName="table_id_value" defaultValue=""/>
				</td>	
			</tr>
		</pg:beaninfo>	
		
	</table>
</body>
</html>
