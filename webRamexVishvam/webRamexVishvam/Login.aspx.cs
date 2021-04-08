using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace webRamexVishvam
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            clsGloble.conString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Vishvam\Desktop\webRamexVishvam\webRamexVishvam\App_Data\dbRamexAsp.mdb";
            clsGloble.myCon = new OleDbConnection(clsGloble.conString);
            string email = txtEmail.Text.Trim();
            string pass = txtPassword.Text.Trim();

            clsGloble.myCon.Open();
            string sql = $"SELECT * FROM Agents WHERE(AgentEmail = '{email}') AND(AgentPassword = '{pass}')";
            clsGloble.myCmd = new OleDbCommand(sql, clsGloble.myCon);

            OleDbDataReader myreader = clsGloble.myCmd.ExecuteReader();

            if (myreader.HasRows)
            {
                myreader.Read();
                Session["AgentId"] = myreader["refAgentNumber"];
                clsGloble.myCon.Close();
                Server.Transfer("RegisterHouse.aspx");
            }
            

            sql = $"SELECT * FROM Client WHERE(ClientEmail = '{email}') AND(ClientPassword = '{pass}')";
            clsGloble.myCmd = new OleDbCommand(sql, clsGloble.myCon);

            myreader = clsGloble.myCmd.ExecuteReader();

            if (myreader.HasRows)
            {
                myreader.Read();
                Session["ClientId"] = myreader["refClient"];
                clsGloble.myCon.Close();
                Server.Transfer("index.aspx");
            }else {
                Response.Write("<script>alert('Login Fail')</script>");
            }

            
        }
    }
}