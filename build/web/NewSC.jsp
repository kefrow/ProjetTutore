<%-- 
    Document   : NewSC
    Created on : 26 avr. 2015, 17:05:53
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
        <h1>Create a new Service Capability</h1>
        <form action="NewSC" method="post">
            <table>
                <tr>
                    <th>ID<br/>(optional)</th><td><input type="text" name="sc_id" disabled="true"/></td>
                </tr>
                <tr>
                    <th>Name</th><td><input type="text" name="sc_name"/></td>
                </tr>
            </table>
            <br/>
            <button type="submit">Create this SC</button>
        </form>
    </body>
</html>
