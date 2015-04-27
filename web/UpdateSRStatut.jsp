<%-- 
    Document   : UpdateSRStatut
    Created on : 26 avr. 2015, 19:49:54
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Service Registery</title>
    </head>
    <body>
        <h1>Update a Service Registery Statut</h1>
        <form action="UpdateSRStatut" method="post">
            <table>
                <tr>
                    <th>SR ID</th><td><input type="text" name="sr_id" /></td>
                </tr>
                <tr>
                    <th>New statut</th><td><select name="statut">
                            <option value="Active">Active</option>
                            <option value="Pending">Pending</option>
                            <option value="On hold">On hold</option>
                        </select></td>
                </tr>
            </table>
            <br/>
            <button type="submit">Update this SR</button>
        </form>
    </body>
</html>
