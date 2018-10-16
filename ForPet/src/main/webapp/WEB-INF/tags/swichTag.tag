<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="level" type="java.lang.Integer"%>
<%@ attribute name="title" required="true"%>
<%
String a = null;
String b = null;
	if(level == null)	{
	} else if(level == 1)	{
		a = "Title <input type='text' name='title' class='form-control' readonly='readonly'";
		b = ">";
	}
%>
<%= a %>
${ title }
<%= b %>