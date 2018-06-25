<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demopage.aspx.cs" Inherits="Demopage" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AngularJS Calling Web Service</title>
    <script src="Scripts/angular.js"></script>
    <script src="Scripts/Scripts.js"></script>
</head>
<body ng-app="myModule"> 
    <form id="form1" runat="server">
        <div style="font-family:'Calisto MT';font-size:larger;font-weight:bold;">
            Demo - Calling Web Service (ASMX) from AngularJS 
        </div>
        </p>
        <div ng-controller="myController" >
            <table style="border:double;border-color:brown;width:60%;font-family:Calibri;">
                <thead  style="color:yellow;text-align:left;background-color:dodgerblue;">
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Salary</th>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="employee in employees">
                        <td>{{employee.id}}</td>
                        <td>{{employee.name}}</td>
                        <td>{{employee.gender}}</td>
                        <td>{{employee.salary}}</td>
                    </tr>
                </tbody>
            </table>

        </div>

        <div style="font-family:Calibri;font-size:large;">
            <p></p><br />
            <br /><b>Created By :</b>  Anthony Arokia Dass
            <br /><b>Email :</b>  anthony_das@yahoo.com
            <br /><b>LinkedIn :</b> <a href="https://www.linkedin.com/in/anthony-dass-pmp-52b3885/">https://www.linkedin.com/in/anthony-dass-pmp-52b3885/</a> 

              
        </div>
        
    </form>
</body>
</html>
