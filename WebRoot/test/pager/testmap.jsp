<%@ page contentType="text/html; charset=GBK" language="java" import="test.*,java.util.*"%>
<%@ taglib uri="/WEB-INF/pager-taglib.tld" prefix="pg"%>

<%
	//����map<String,PO>����
	TestBean bean = null;
	Map<String,TestBean> mapbeans = new HashMap<String,TestBean>();
	bean = new TestBean();
	bean.setId("uuid");
	bean.setName("���");
	mapbeans.put(bean.getId(),bean);
	
	bean = new TestBean();
	bean.setId("uuid1");
	bean.setName("���1");
	mapbeans.put(bean.getId(),bean);
	bean = new TestBean();
	bean.setId("uuid2");
	bean.setName("���2");
	mapbeans.put(bean.getId(),bean);
	request.setAttribute("mapbeans",mapbeans);
	
	Map<String,String> mapstrings = new HashMap<String,String>();
	mapstrings.put("id1","���1");
	mapstrings.put("id2","���2");
	mapstrings.put("id3","���3");
	mapstrings.put("id4","���4");
	request.setAttribute("mapstrings",mapstrings);
%>
<!-- 
	������list��ǩ��ֱ��ִ�����ݿ⣬��ȡ�б���Ϣʵ��
	statement:���ݿ��ѯ���
	dbname:��ѯ����Ӧ���ݿ����ƣ���poolman.xml�ļ��н�������
-->
<html>
<head>
<title>���Ի�ȡmap��Ϣʵ��</title>
</head>
<body>
	<table>
	    <h3>map<String,po>������Ϣ��������</h3>
		<pg:map requestKey="mapbeans">
		
			<tr class="cms_data_tr">
				<td>
					mapkey:<pg:mapkey/>
				</td> 
				<td>
					id:<pg:cell colName="id" />
				</td> 
				<td>
					name:<pg:cell colName="name" />
				</td> 
			</tr>
		</pg:map>
		
		
	</table>
	
	<table>
	    <h3>map<String,String>�ַ�����Ϣ��������</h3>
		<pg:map requestKey="mapstrings">
		
			<tr class="cms_data_tr">
				<td>
					mapkey:<pg:mapkey/>
				</td> 
				<td>
					value:<pg:cell/>
				</td> 
				
			</tr>
		</pg:map>
		
		
	</table>
	
	
</body>
</html>
