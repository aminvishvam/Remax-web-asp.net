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
    public partial class readmessage : System.Web.UI.Page
    {
        int senderId;
        protected void Page_Load(object sender, EventArgs e)
        {
            string sendernName = Request.QueryString["sndr"];

            Int64 refMsg = Convert.ToInt64(Request.QueryString["refmsg"]);

            clsGloble.myCon = new OleDbConnection(clsGloble.conString);
            clsGloble.myCon.Open();

            string sql = "SELECT  * FROM Message WHERE RefMessage =" + refMsg;

            clsGloble.myCmd = new OleDbCommand(sql, clsGloble.myCon);

            OleDbDataReader myReader = clsGloble.myCmd.ExecuteReader();

            if (myReader.Read())
            {
                
                celtitle2.Text = myReader["Title"].ToString();
                celdate2.Text = myReader["CreatedDate"].ToString();
                celSender.Text = sendernName;
                senderId = Convert.ToInt32(myReader["Sender"]);
                celMessage.Text = myReader["Message"].ToString();
                // tabMessage.Rows.Add(aRow);

            }
            myReader.Close();
            sql = "Update Message SET New=False WHERE RefMessage =" + refMsg;

            clsGloble.myCmd = new OleDbCommand(sql, clsGloble.myCon);

            int result = clsGloble.myCmd.ExecuteNonQuery();

            clsGloble.myCon.Close();
        }

        protected void btnBack2Msg_Click(object sender, EventArgs e)
        {
            Server.Transfer("RegisterHouse.aspx");
        }

        protected void ButReply_Click(object sender, EventArgs e)
        {
            Session["ReplyId"] = senderId;
            Server.Transfer("ReplyMessage.aspx");
        }
    }
}