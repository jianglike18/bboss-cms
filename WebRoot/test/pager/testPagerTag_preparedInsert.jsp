<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*,java.util.List" errorPage=""%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>
<!-- 
	dbutil��ǩʵ��insert����
	statement:���ݿ�insert���
	dbname:insert����Ӧ���ݿ����ƣ���poolman.xml�ļ��н�������

-->
<%
	String object_id = "1";
	String owner = "duoduo";
	String object_name = "table_insert";
	String created = "2010-03-12 16:52:10";
	String last_ddl_time = "2010-03-12 16:52:11";
	
	String sql = "insert into sqltest(object_id,owner,object_name,created,last_ddl_time) values(#[object_id],#[owner],#[object_name],#[created],#[last_ddl_time])";
 %>
<html>
<head>
<title>������dbutil��ǩ��ֱ��ִ�����ݿ�������</title>
</head>
<body>
	<table>
			<pg:dbutil statement="<%=sql %>" 
		    		  dbname="bspf"
		    		  pretoken="#\\[" endtoken="\\]"
		    		  action="insert">
				<pg:sqlparam name="object_id" value="<%=object_id %>" type="int"/>
				<pg:sqlparam name="owner" value="<%=owner %>" type="string"/>
				<pg:sqlparam name="object_name" value="<%=object_name%>" type="string"/>	
				<pg:sqlparam name="created" value="<%=created%>" type="date"/>		
				<pg:sqlparam name="last_ddl_time" value="<%=last_ddl_time%>" type="timestamp"/>
			</pg:dbutil>
		    
	</table>
</body>
</html>
