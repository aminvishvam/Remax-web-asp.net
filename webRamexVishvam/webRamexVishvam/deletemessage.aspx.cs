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
    public partial class deletemessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int64 refMsg = Convert.ToInt64(Request.QueryString["refmsg"]);
            
            clsGloble.myCon = new OleDbConnection(clsGloble.conString);
            clsGloble.myCon.Open();

            string sql = "Delete FROM Message WHERE RefMessage =" + refMsg;

            clsGloble.myCmd= new OleDbCommand(sql, clsGloble.myCon);

            int result = clsGloble.myCmd.ExecuteNonQuery();
            clsGloble.myCon.Close();
            Server.Transfer("RegisterHouse.aspx");
        }
    }
}