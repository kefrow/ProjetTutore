<%-- 
    Document   : FindSC
    Created on : 26 avr. 2015, 20:04:10
    Author     : Eric
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service Capability</title>
        <script type="text/javascript" src="js/jquery-latest.js"></script> 
        <script type="text/javascript" src="js/jquery.tablesorter.min.js"></script> 
        <link rel="stylesheet" href="css/tablesorter/style.css"/>     
        <link rel="stylesheet" href="css/bootstrap.min.css"/> 
        
        <style type="text/css">
            /* The table is too small in my opinion */
            table.tablesorter thead tr th {
                font-size: 11pt
            }
            table.tablesorter {
                font-size: 11pt
            }

        </style>
    </head>
    <body>
        <h1 class="text-center">Find a Service Capability</h1>
        <form action="FindSC" method="post" class="form-horizontal col-sm-10">

            <div class="form-group">
                <label for="input_sc_name" class="col-sm-2 control-label">SC Name</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="input_sc_name" placeholder="a Service Capability" name="sc_name">
                </div>
            </div>        

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default" name="findsc_submit" class="btn btn-default" value="submit">Find this SC</button>
                </div>
            </div>            

            <c:if test="${not empty param.findsc_submit}">
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <c:choose>
                            <c:when test="${empty requestScope.srs}">
                                <p class="bg-info" style="padding: 15px">No information has been found</p>
                            </c:when>
                            <c:otherwise>
                                
                                <table id="myTable" class="tablesorter">
                                    <thead>
                                        <tr>
                                            <th>SR_ID</th>
                                            <th>SC_ID</th>
                                            <th>SC_Name</th>
                                            <th>S_ID</th>
                                            <th>S_Name</th>
                                            <th>SR_Status</th>
                                            <th>SP_ID</th>
                                            <th>SR_QosQ</th>
                                        </tr>
                                    </thead>      
                                    <tbody>
                                        <c:forEach items="${requestScope.srs}" var="aSr">
                                            <tr>
                                                <td>${aSr.id}</td>
                                                <td>${aSr.sc.id}</td>
                                                <td>${aSr.scName}</td>
                                                <td>${aSr.s.id}</td>
                                                <td>${aSr.SName}</td>
                                                <td>${aSr.status}</td>
                                                <td>${aSr.sp.id}</td>
                                                <td>${aSr.qoso.id}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </c:if>
        </form>
        <script type="text/javascript">
            $(document).ready(function ()
            {
                $("#myTable").tablesorter();
            });
        </script>        
    </body>
</html>
