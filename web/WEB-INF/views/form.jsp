<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="style.html" %>
<!doctype html>
<html lang="en">
<head>
    <title>Registration Form</title>
</head>
<body>
<div class="container mt-5">
    <div class="card w-50 h-25 mx-auto border-0">
        <div class="card-header bg-white border-0">
            <div class="panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title text-center mt-2">${Header}</h3>
                </div>
            </div>
        </div>
        <div class="card-body w-100 h-20 mx-auto">
            <div class="container mt-2">
                <form method="post" action="process">
                    <div class="md-form form-group w-75 mx-auto mt-2">
                        <label for="exampleInputLastName">User name<span style="color:red">*</span></label>
                        <input type="text" class="form-control" id="exampleInputLastName"
                               aria-describedby="emailHelp" placeholder="Last name" name="userName" required/>
                    </div>
                    <div class="md-form form-group w-75 mx-auto mt-2">
                        <label for="exampleInputEmail1">Email address<span style="color:red">*</span></label>
                        <input type="email" class="form-control" id="exampleInputEmail1"
                               aria-describedby="emailHelp" placeholder="Email address"
                               pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" name="email" required/>
                    </div>
                    <div class="md-form form-group w-75 mx-auto mt-2">
                        <label for="exampleInputPassword1">Password<span style="color:red">*</span></label>
                        <input type="password" class="form-control" id="exampleInputPassword1"
                               placeholder="password" name="password"
                               pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                               required/>
                    </div>
                    <div class="container text-center mt-2 ">
                        <button type="submit" class="btn btn-primary">Registration</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="card-footer"></div>
    </div>
</div>
</div>
</body>
</html>