<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*,java.util.List" errorPage=""%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>

<%
	String contextpath = request.getContextPath();
	out.println("contextpath:"+contextpath);
%>
<!-- 
	������list��ǩ��ֱ��ִ�����ݿ⣬��ȡ�б���Ϣʵ��
	statement:���ݿ��ѯ���
	dbname:��ѯ����Ӧ���ݿ����ƣ���poolman.xml�ļ��н�������
-->
<html>
<head>
<title>������list��ǩ��ֱ��ִ�����ݿ⣬��ȡ�б���Ϣʵ��</title>
</head>
<body>
	<table>
	    
		<pg:beaninfo statement="select content from td_cms_document where document_id=3110" 
	    		  dbname="bspf">
		
			<tr class="cms_data_tr">
				<td>
					<pg:cell colName="content" defaultValue="qqq"/>
				</td> 
				
			</tr>
		</pg:beaninfo>
		
		<!-- pg:rowcount/-->
	</table>
</body>
</html>
