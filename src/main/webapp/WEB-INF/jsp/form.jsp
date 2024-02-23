<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>add student details</title>

    <style>

        body{
          background-color: #E7BCDE;
        }
        h1{
            position: absolute;
            top: 10%;
            left: 40%;
        }
  
  form{
    border: 2px solid black;
    width: 30%;
    height: 260px;
    position: absolute;
    left: 35%;
    top: 25%;
  }
  .ta{
    text-align: center;
    padding: 35px;
  }
  td{
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    font-size: 25px;
  }
  input{
    width: 220px;
    height: 20px;
  }
 .btn{
    padding: 2px;
    margin: 1px;
    border: 20px sold black;
    color:blue;
    width: 40%;
    height: 25px;
    text-align: center;
    border-radius: 8px;
  }
  .btn:hover
  {
    background-color: tomato;
    color: black;
  }


    </style>
</head>
<body>
    <h1>Add Student Details </h1>

    <form action="formsubmited">
        <table class="ta">
         <tr>
         <td>ID</td>
         <td><input type="text" name="id"></td>
         </tr>

         <tr>
            <td>Name</td>
            <td><input type="text" name="name"></td>
         </tr>

         <tr>
            <td>Email</td>
            <td><input type="text" name="email"></td>
         </tr>
         <tr>
            <td>Semester</td>
            <td><input type="text" name="sem"></td>
         </tr>
         <tr>
            <td>Marks</td>
            <td><input type="text" name="marks"></td>
         </tr>
         <tr>
            <td></td>
            <td><input type="submit" value="insert" class="btn"></td>
        </tr>
         </table>
 
         

    </form>
</body>
</html>