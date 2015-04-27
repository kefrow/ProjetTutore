<%-- 
    Document   : page1
    Created on : 26 avr. 2015, 15:46:29
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page de tests</title>
    </head>
    <body>
        <h1>Ajout d'un tuple dans SR</h1>
        <form method="post" action="NewSR">
            <table style="text-align: center">
                <tr>
                    <th>SC ID</th><td><input type="text" name="sc_id"/></td>
                </tr>
                <tr>
                    <th>S ID</th><td><input type="text" name="s_id"/></td>
                </tr>
                <tr>
                    <th>SP ID</th><td><input type="text" name="sp_id"/></td>
                </tr>
                <tr>
                    <th>QoSO ID</th><td><input type="text" name="qoso_id"/></td>
                </tr>
                <tr>
                    <th>Statut</th>
                    <td>
                        <select name="statut">
                            <option value="Active">Active</option>
                            <option value="Pending">Pending</option>
                            <option value="On hold">On hold</option>
                        </select>
                    </td>
                </tr>
            </table>
            <br/>
            <button type="submit" >Créer un tuple SR</button>
        </form>
    </body>
</html>
