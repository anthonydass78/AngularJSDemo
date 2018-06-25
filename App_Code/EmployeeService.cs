using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;


/// <summary>
/// Summary description for EmployeeService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]

[System.Web.Script.Services.ScriptService]
public class EmployeeService : System.Web.Services.WebService
{
    public EmployeeService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void GetAllEmployees()
    {
        List<Employee> lstEmployees = new List<Employee>();
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("Select * from tblEmployees", con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Employee employee = new Employee();
                employee.id = Convert.ToInt16(rdr["Id"]);
                employee.name =rdr["Name"].ToString();
                employee.gender = rdr["Gender"].ToString();
                employee.salary = Convert.ToInt16(rdr["Salary"]);

                lstEmployees.Add(employee);

            }
        }

        System.Web.Script.Serialization.JavaScriptSerializer js = new System.Web.Script.Serialization.JavaScriptSerializer();
        

        Context.Response.Write(js.Serialize(lstEmployees));

         
    }

}

public class JavaScriptSerializer
{
}