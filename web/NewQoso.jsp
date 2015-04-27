<%-- 
    Document   : NewQoso
    Created on : 26 avr. 2015, 18:49:04
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quality of Service Offered</title>
    </head>
    <body>
        <h1>Create a new Quality of Service Offered</h1>
        <form action="NewQoso" method="post">
            <table>
                <tr>
                    <th>ID<br/>(optional)</th><td><input type="text" name="qoso_id" disabled="true"/></td>
                </tr>
                <!--
                <tr>
                    <th>Name</th><td><input type="text" name="sc_name"/></td>
                </tr>
                -->
            </table>
            <br/>
            <button type="submit">Create this Qoso</button>
        </form>
    </body>
</html>
