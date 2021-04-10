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
    public partial class ReplyMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write($"alert('{ Session["ReplyId"]}')");
            
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            Int32 refAgent = Convert.ToInt32(Session["AgentId"]);
            Int32 refReply = Convert.ToInt32(Session["ReplyId"]);

            clsGloble.myCon = new OleDbConnection(clsGloble.conString);
            clsGloble.myCon.Open();

            string sql = "INSERT INTO MessageReply (Title, Message, Sender, Receiver) VALUES(@title, @msgBody, @sender, @receiver)";

            clsGloble.myCmd = new OleDbCommand(sql, clsGloble.myCon);
            //string title = txtTitle.Text.Trim();
            clsGloble.myCmd.Parameters.AddWithValue("title", txtTitle.Text.Trim());
            clsGloble.myCmd.Parameters.AddWithValue("msgBody", txtMsg.Text.Trim());
            clsGloble.myCmd.Parameters.AddWithValue("sender", refAgent);
            clsGloble.myCmd.Parameters.AddWithValue("receiver", refReply);

            Int32 result = clsGloble.myCmd.ExecuteNonQuery();


            // litStatus.Text = "Msg Sent";
            clsGloble.myCon.Close();

            Server.Transfer("RegisterHouse.aspx");
        }
    }
}