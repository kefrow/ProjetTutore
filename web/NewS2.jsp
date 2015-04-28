<%-- 
    Document   : NewS2
    Created on : 28 avr. 2015, 11:26:06
    Author     : Eric
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service</title>
        <script type="text/javascript" src="js/jquery-latest.js"></script> 
        <link rel="stylesheet" href="css/bootstrap.min.css"/> 
    </head>
    <body>
        <h1 class="text-center">Hello World!</h1>
        <form method="post" class="form-horizontal col-sm-10">
            <!--
            <div class="form-group">
                <label for="input_sc_name" class="col-sm-2 control-label">SC Name</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="input_sc_name" placeholder="a Service Capability" name="sc_name">
                </div>
            </div>        
            -->
            <c:choose>
                <c:when test="${empty param.submit_add}">
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button formaction="NewS2?operation=form" type="submit" class="btn btn-default" name="submit_add" class="btn btn-default" value="submit">Add a new Service</button>
                        </div>
                    </div>                                
                </c:when>
                <c:otherwise>
                    <c:choose>
                        <c:when test="${empty requestScope.scs}">
                            No service found
                        </c:when>
                        <c:otherwise>
                            <div class="form-group">
                                <label for="serviceChoosen" class="col-sm-offset-2 col-sm-2 control-label">Choose a Service Capability</label>
                                <div class="col-sm-4">
                                    <select class="form-control" name="serviceChoosen">
                                        <c:forEach items="${requestScope.scs}" var="aSc">
                                            <option value="${aSc.name}">${aSc.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="input_sc" class="col-sm-offset-2 col-sm-2 control-label">Name of the new Service</label>
                                <div class="col-sm-4">
                                    <input type="text" name="input_sc" class="form-control" placeholder="A new Service"/>
                                </div>                                
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-4 col-sm-4">
                                    <button formaction="NewS2?operation=add" type="submit" class="btn btn-default" name="submit" class="btn btn-default" value="submit">Add this Service</button>
                                </div>
                            </div>                               
                        </c:otherwise>
                    </c:choose>
                </c:otherwise>
            </c:choose>
        </form>        
    </body>
</html>
