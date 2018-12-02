
<%@ include file="../header/home_header.html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section id="services">
    
<h2>Login Here!</h2>
<form method="post" action="/www.bus_spring.com/login_action">
    <table style="margin-left: 300px">
        <tr>
            <td>Username : </td>
            <td><input type="text" name="username" class="input-group-text"></td>
        </tr>
        <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
        
        <tr>
            <td>Password : </td>
            <td><input type="text" name="password" class="input-group-text"></td>
        </tr>
        
         <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
         
         <tr>
             <td></td>
             <td><input type="submit" class="btn btn-primary" >
                 <input type="reset" class="btn btn-danger" ></td>
        </tr>
        
    </table>
</form>

<c:choose>
    <c:when test="${not empty login}">
       Value is 5
    </c:when>
    </c:choose>
    
    
        <c:if test="${not empty login}">
            <c:forEach var="rs" items="${login}">

                <c:if test="${rs.type=='admin'}">
                    <c:redirect url = "/admin"/>
                </c:if>
                <c:if test="${rs.type=='user'}">
                    <c:redirect url = "/user"/>
                </c:if>
            </c:forEach>
        </c:if>
        
       <c:set var="val" value="5"/>



    


    
<%@include file="../header/footer.html"%>