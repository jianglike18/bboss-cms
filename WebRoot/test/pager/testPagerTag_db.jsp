<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*,java.util.List" errorPage=""%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>
<!-- 
	������pager��ǩ��ֱ��ִ�����ݿ⣬��ȡ�б�/��ҳ��Ϣʵ��
	statement:���ݿ��ѯ���
	dbname:��ѯ����Ӧ���ݿ����ƣ���poolman.xml�ļ��н�������
-->
<html>
<head>
<title>������list��ǩ��ֱ��ִ�����ݿ⣬��ȡ�б���Ϣʵ��</title>
</head>
<body>
	<table>
	    <pg:pager statement="select * from sqltest where rownum < 10 order by object_name " 
	    		  dbname="portal" isList="false" pager_infoName="pager_info11">
	    		  <%
	    		  System.out.println("pager_info11.getDataSize():" + pager_info11.getDataSize());
	    		  %>
	    		  <tr><td colspan="3"><pg:index/></td></tr>
		<pg:list >
		<%
	    		  System.out.println("pager_info11.getDataSize()2:" + pager_info11.getDataSize());
	    		  %>
			<tr class="cms_data_tr" id="<pg:cell colName="object_name" defaultValue=""/>">
				<td>
					<pg:cell colName="object_name" defaultValue=""/>
				</td> 
				<td>
					<pg:cell colName="object_name" defaultValue="" />
				</td>
				<td class="tablecells" align=center height='30' width="5%">
					<pg:cell colName="object_name" defaultValue=""/>
				</td>	
			</tr>
		</pg:list>
		<tr><td colspan="3"><pg:index /></td></tr>
		<%
	    		  System.out.println("pager_info11.getDataSize()1:" + pager_info11.getDataSize());
	    		  %>
		</pg:pager>
		<!-- pg:rowcount/-->
	</table>
</body>
</html>
