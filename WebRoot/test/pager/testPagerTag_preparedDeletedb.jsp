<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*,java.util.List" errorPage=""%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>
<!-- 
	������dbutil��ǩ��ֱ��ִ�����ݿ�ɾ������-Ԥ�������
	statement:���ݿ�delete���
	dbname:��ѯ����Ӧ���ݿ����ƣ���poolman.xml�ļ��н�������
	
-->
<%
	String object_id = "15";
	
	String sql = "delete from sqltest where object_id=#[object_id] ";
 %>
<html>
<head>
<title>������dbutil��ǩ��ֱ��ִ�����ݿ�delete����</title>
</head>
<body>
	<table>
			<pg:dbutil statement="<%=sql %>" 
		    		  dbname="bspf"
		    		  action="delete"
		    		  pretoken="#\\[" endtoken="\\]"
		    		  >
				<pg:sqlparam name="object_id" value="<%=object_id %>" type="int"/>
			</pg:dbutil>
			<%=dbutil_result %>
		    
	</table>
</body>
</html>
