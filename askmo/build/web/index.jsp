<%-- 
    Document   : index
    Created on : 03.06.2014, 9:13:01
    Author     : admin
--%>
<%@page contentType="text/html" pageEncoding="windows-1251"%>
<!DOCTYPE html>

<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/main.css" />
    <title>�� ���</title>
</head>
<body>	
<div id="main">
    <%@include file="blocks/top.jsp" %>
    <%@include file="blocks/reg.jsp" %>

    <div id="bottomm">
	
        <div id="content">
            <div class="themename">
		<p>������ ������������� �� ���� "���"</p>
            </div>
            <div align="center" class="articles">	
            <table border="0" cellspacing='0' cellpadding='5' width='100%'>
                <tr>
                    <td id='tdaa'>������ ����������� ���������� ���������� ����������� ���������</td>
                    <td id='tdab'>������� �.�.</td>
                    <td id='tdab'>4-84-65</td>
                </tr>
                <tr>
                    <td id='tdba'>������� ���������� ���������� �� ������������ ��������</td>
                    <td id='tdbb'>������������ �.�.</td>
                    <td id='tdbb'>4-98-38</td>
                </tr>
                <tr>
                    <td id='tdba'>������������� ������� ���</td>
                    <td id='tdbb'>�.�.�</td>
                    <td id='tdbb'>4-44-44</td>
                </tr>
                <tr>
                    <td id='tdba'>�������� ���</td>
                    <td id='tdbb'>�.�.�</td>
                    <td id='tdbb'>4-44-44</td>
                </tr>
                <tr>
                    <td id='tdba'>�������� ���</td>
                    <td id='tdbb'>�.�.�</td>
                    <td id='tdbb'>4-44-44</td>
                </tr>
            </table>    
            </div>
	</div>
	
        <%@include file="blocks/right.jsp" %>
					
    </div>
</div>

</body>
</html>
