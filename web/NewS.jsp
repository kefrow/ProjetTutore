<%-- 
    Document   : NewS
    Created on : 26 avr. 2015, 18:41:24
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service</title>
    </head>
    <body>
        <h1>Create a new Service</h1>
        <form action="NewS" method="post">
            <table>
                <tr>
                    <th>ID<br/>(optional)</th><td><input type="text" name="s_id" disabled="true"/></td>
                </tr>
                <tr>
                    <th>Name</th><td><input type="text" name="s_name"/></td>
                </tr>
            </table>
            <br/>
            <button type="submit">Create this S</button>
        </form>
    </body>
</html>
