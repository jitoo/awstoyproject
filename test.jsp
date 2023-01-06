<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<h1>DB</h2>
<%
        Connection conn=null;
        try{
                String Url="jdbc:mysql://database-1.cxfnuicxgksq.ap-northeast-2.rds.amazonaws.com/toyDB";
                String Id="admin";
                String Pass="test1234";

                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection(Url,Id,Pass);
                out.println("was-db Connection Success!");
        }catch(Exception e) {
                e.printStackTrace();
}
%>

<%@ page contentType="text/html; charset=UTF-8"%>
<html>
    	<head><title>hello world</title></head>
    	<body>
    	<h2>
                time : <%= new java.util.Date()%>
            	<%@ page import="java.net.InetAddress" %><br>
            	<%InetAddress inet= InetAddress.getLocalHost();%>
            	WAS ip : <%=inet.getHostAddress()%>
    	</h2>
 
 
    	</body>
</html>
