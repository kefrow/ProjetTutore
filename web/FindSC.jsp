<%-- 
    Document   : FindSC
    Created on : 26 avr. 2015, 20:04:10
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service Capability</title>
    </head>
    <body>
        <h1>Find a Service Capability</h1>
        <form action="FindSC" method="post">
            <table>
                <tr>
                    <th>SC Name</th><td><input type="text" name="sc_name" /></td>
                </tr>
            </table>
            <br/>
            <button type="submit" name="findsc_submit">Find this SC</button>
        </form>
    </body>
</html>
