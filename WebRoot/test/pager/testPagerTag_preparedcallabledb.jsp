<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*,java.util.List" errorPage=""%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>
<!-- 
	callableutil��ǩʵ�����ݿ⺯���ʹ洢���̲���
	statement:�洢���̻��ߺ���
	dbname:������洢���̻��ߺ�����Ӧ�����ݿ����ƣ���poolman.xml�ļ��н�������

	
-->
<%
	String object_id = "1";
	
	String created = "2010-03-12 12:43:54";
	
	String sql = "update sqltest set created=#[created] where object_id=#[object_id]";
 %>
<html>
<head>
<title>������dbutil��ǩ��ֱ��ִ�����ݿ�update����</title>
</head>
<body>
	<table>
			<pg:batchutil dbname="bspf" type="prepared">
				<pg:statement sql="<%=sql %>" pretoken="#\\[" endtoken="\\]">
			    <pg:batch>
						<pg:sqlparam name="object_id" value="<%=object_id %>" type="int" />				
						<pg:sqlparam name="created" value="<%=created %>" type="timestamp" />	
					</pg:batch>
					<pg:batch>
						<pg:sqlparam name="object_id" value="<%=object_id %>" type="int" />				
						<pg:sqlparam name="created" value="<%=created %>" type="timestamp" />	
					</pg:batch>
				</pg:statement>
				<pg:statement sql="<%=sql1 %>" pretoken="#\\[" endtoken="\\]">
						<pg:sqlparam name="object_id" value="<%=object_id %>" type="int" />				
						<pg:sqlparam name="created" value="<%=created %>" type="timestamp" />	
				</pg:statement>
			</pg:batchutil>
	</table>
</body>
</html>
