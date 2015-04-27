<%-- 
    Document   : DeleteSR
    Created on : 26 avr. 2015, 19:25:32
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service Registery</title>
    </head>
    <body>
        <h1>Delete a Service Registery</h1>
        <form action="DeleteSR" method="post">
            <table>
                <tr>
                    <th>S ID</th><td><input type="text" name="s_id" /></td>
                </tr>
                <!--
                <tr>
                    <th>Name</th><td><input type="text" name="sc_name"/></td>
                </tr>
                -->
            </table>
            <br/>
            <button type="submit">Delete this SR</button>
        </form>
    </body>
</html>
