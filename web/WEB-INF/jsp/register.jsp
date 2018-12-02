<%@include file="../header/home_header.html"%>
<section id="services">
    
    <style>td{alignment-adjust: 12px}</style>
    
<h2>Register Here!</h2>
<form method="post" action="/www.bus_spring.com/register_action">
    
    <table  style="margin-left: 150px;width: 700px" class="table table-striped w-auto table-sm">
        <tr>
            <td>First Name : </td>
            <td><input type="text" name="firstName" class="input-group-text"></td>
            <td>Last Name : </td>
            <td><input type="text" name="lastName" class="input-group-text"></td>
        </tr>
        
         <tr>
            <td>Course : </td>
            <td><input type="text" name="course" class="input-group-text"></td>
            <td>Batch : </td>
            <td><input type="text" name="batch" class="input-group-text"></td>
        </tr>
        
         <tr>
            <td>Gender : </td>
            <td><input type="text" name="gender" class="input-group-text"></td>
            <td>Date of birth : </td>
            <td><input type="text" name="dob" class="input-group-text"></td>
        </tr>
        
         <tr>
            <td>House : </td>
            <td><input type="text" name="houseName" class="input-group-text"></td>
            <td>Place : </td>
            <td><input type="text" name="place" class="input-group-text"></td>
        </tr>
        
         <tr>
            <td>Pin code : </td>
            <td><input type="text" name="pincode" class="input-group-text"></td>
            <td>Phone : </td>
            <td><input type="text" name="phone" class="input-group-text"></td>
        </tr>
        
         <tr>
            <td>Email : </td>
            <td><input type="text" name="email" class="input-group-text"></td>
            <td>Parent Name : </td>
            <td><input type="text" name="parentName" class="input-group-text"></td>
        </tr>
        
         <tr>
            <td>Parent Phone : </td>
            <td><input type="text" name="parentPhone" class="input-group-text"></td>
            <td> </td>
            <td> </td>
        </tr>
        
         <tr>
            <td>Set username : </td>
            <td><input type="text" name="username" class="input-group-text"></td>
            <td>Set password : </td>
            <td><input type="text" name="password" class="input-group-text"></td>
        </tr>
        
        
        
         
         <tr>
             <td></td><td></td><td></td>
             <td><input type="submit" class="btn btn-primary" >
                 <input type="reset" class="btn btn-danger" >
             </td>
        </tr>
        
    </table>
</form>




    


    
<%@include file="../header/footer.html"%>