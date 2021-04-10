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
    public partial class ComposeMessage : System.Web.UI.Page
    {
        Int32 refClient;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write($"<script>alert('{Session["ClientId"]}')</script>");
            refClient = Convert.ToInt32(Session["ClientId"]);
            clsGloble.myCon = new OleDbConnection(clsGloble.conString);
            clsGloble.myCon.Open();

            string sql = "select refAgentNumber,AgentName from Agents";
            clsGloble.myCmd = new OleDbCommand(sql, clsGloble.myCon);

            OleDbDataReader rdReceivers = clsGloble.myCmd.ExecuteReader();

            string member = "";
            while (rdReceivers.Read())
            {

                member += rdReceivers["AgentName"].ToString() + " (" + rdReceivers["refAgentNumber"] + ")";
                cboReceviers.Items.Add(new ListItem(member, rdReceivers["refAgentNumber"].ToString()));
                member = "";
            }

            //See the messages for the user
            string sql2 = $"SELECT MessageReply.Title, MessageReply.Message, MessageReply.CreatedDate, MessageReply.Receiver, MessageReply.Sender, MessageReply.New, Agents.AgentName, Agents.refAgentNumber, MessageReply.RefMessage FROM(MessageReply INNER JOIN Agents ON MessageReply.Sender = Agents.refAgentNumber) WHERE(MessageReply.Receiver = {refClient})";
            clsGloble.myCmd = new OleDbCommand(sql2, clsGloble.myCon);
            OleDbDataReader rdMsgs = clsGloble.myCmd.ExecuteReader();


            while (rdMsgs.Read())
            {
                TableRow aRow = new TableRow();
                TableCell aCell = new TableCell();
                aCell.Text = rdMsgs["AgentName"].ToString();
                aRow.Cells.Add(aCell);

                aCell = new TableCell();

                aCell.Text = rdMsgs["Title"].ToString();

                aRow.Cells.Add(aCell);

                aCell = new TableCell();
                aCell.Text = rdMsgs["Message"].ToString();
                aRow.Cells.Add(aCell);
               
            }



            clsGloble.myCon.Close();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            clsGloble.myCon = new OleDbConnection(clsGloble.conString);
            clsGloble.myCon.Open();

            string sql = "INSERT INTO Message (Title, Message, Sender, Receiver) VALUES(@title, @msgBody, @sender, @receiver)";
            clsGloble.myCmd = new OleDbCommand(sql, clsGloble.myCon);
            //string title = txtTitle.Text.Trim();
            clsGloble.myCmd.Parameters.AddWithValue("title", txtTitle.Text.Trim());
            clsGloble.myCmd.Parameters.AddWithValue("msgBody", txtMsg.Text.Trim());
            clsGloble.myCmd.Parameters.AddWithValue("sender", refClient);
            clsGloble.myCmd.Parameters.AddWithValue("receiver", Convert.ToInt32(cboReceviers.SelectedValue));

            Int32 result = clsGloble.myCmd.ExecuteNonQuery();


            // litStatus.Text = "Msg Sent";
            clsGloble.myCon.Close();

            Server.Transfer("RegisterHouse.aspx");
        }
    }
}