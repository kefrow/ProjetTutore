<%-- 
    Document   : NewSP
    Created on : 26 avr. 2015, 18:48:47
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service P ??</title>
    </head>
    <body>
        <h1>Create a new Service P ??</h1>
        <form action="NewSP" method="post">
            <table>
                <tr>
                    <th>ID<br/>(optional)</th><td><input type="text" name="sp_id" disabled="true"/></td>
                </tr>
                <!--
                <tr>
                    <th>Name</th><td><input type="text" name="sc_name"/></td>
                </tr>
                -->
            </table>
            <br/>
            <button type="submit">Create this SP</button>
        </form>
    </body>
</html>
