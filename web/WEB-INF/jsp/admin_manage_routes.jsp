<%-- 
    Document   : admin_manage_routes
    Created on : Sep 22, 2018, 11:45:51 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> set bus route</title>
    </head>
    
    <body>
        <form method="post" action="/www.bus_spring.com/route_action">
            <table>
                <thead><tr><td>SET BUS ROUTE</td></tr></thead>
                <tr>
                    <td>Route Name</td>
                    <td><input type="text" name="routename"></td>
                </tr>
                <tr>
                    <td>Start Place</td>
                    <td><input type="text" name="startplace"></td>
                </tr>
                <tr>
                    <td>End Place</td>
                    <td><input type="text" name="endplace"></td>
                </tr>
                <tr>
                    <td>Other Details</td>
                    <td><input type="text" name="otherdetails"></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="save">
                        <input type="reset" value="rst">
                    </td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
