<%@page import="com.example.stockmanager.dao.StaffDAOImpl"%>
<%@page import="com.example.stockmanager.dao.StaffDAO"%>
<%@page import="com.example.stockmanager.model.Staff"%>
<%@ page import="javax.ejb.*" %>
<jsp:include page="../includes/upperpart.jsp" /> 
<title>Edit Staff</title>
<!-- Section: Content -->
<section class="animate__animated animate__fadeIn">

<h2>Edit Staff</h2>
<hr>
<a class="btn btn-primary" href="Staff" role="button">< Back</a>
<br><br>
<%
Staff staff = new Staff();
StaffDAO sdao = new StaffDAOImpl();
staff = sdao.selectStaff(Integer.parseInt(request.getParameter("id")));
%>
<div class="card border border-success">
    <div class="card-body">
        <form action="editStaff" method="post">
            <br>
            <div class="form-group">
                <label style="font-size:15px;">Staff ID :</label>
                <input required readonly type="text" value="<% out.println(staff.getStaffId()); %>" class="form-control text-secondary" required name="staffId">
            </div>
            <div class="form-group">
                <label style="font-size:15px;">First Name :</label>
                <input required type="text" value="<% out.println(staff.getStaffFname()); %>" class="form-control" required name="staffFname">
            </div>
            <div class="form-group">
                <label style="font-size:15px;">Last Name :</label>
                <input required type="text" value="<% out.println(staff.getStaffLname()); %>" class="form-control" required name="staffLname">
            </div>
            <div class="form-group">
                <label style="font-size:15px;">Address :</label>
                <input required type="text" value="<% out.println(staff.getStaffAddress()); %>" class="form-control" required name="staffAddress">
            </div>
            <div class="form-group">
                <label style="font-size:15px;">Password :</label>
                <input required type="text" value="<% out.println(staff.getStaffPass()); %>" class="form-control" required name="staffPass">
            </div>
            <br>
            <button type="submit" class="btn btn-success">Save</button>
        </form>
    </div>
</div>

</section>
<!-- Section: Content -->
<jsp:include page="../includes/lowerpart.jsp" />  