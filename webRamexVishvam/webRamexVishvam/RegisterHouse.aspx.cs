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
    public partial class RegisterHouse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //for message
            Int32 refAgent = Convert.ToInt32(Session["AgentId"]);
            clsGloble.myCon = new OleDbConnection(clsGloble.conString);
            clsGloble.myCon.Open();

            string sql2 = $"SELECT Client.refClient, Client.ClientName, Message.Title, Message.Message, Message.CreatedDate, Message.New, Message.Receiver, Message.Sender, Message.RefMessage FROM(Client INNER JOIN Message ON Client.refClient = Message.Sender) WHERE(Message.Receiver = {refAgent})";
            clsGloble.myCmd = new OleDbCommand(sql2, clsGloble.myCon);
            OleDbDataReader rdMsgs = clsGloble.myCmd.ExecuteReader();


            while (rdMsgs.Read())
            {
                TableRow aRow = new TableRow();
                TableCell aCell = new TableCell();
                aCell.Text = rdMsgs["ClientName"].ToString();
                aRow.Cells.Add(aCell);

                aCell = new TableCell();

                aCell.Text = rdMsgs["Title"].ToString();

                aRow.Cells.Add(aCell);


                // read link
                aCell = new TableCell();

                LinkButton btnRdMsg = new LinkButton();
                btnRdMsg.ID = "btnRdMsg" + rdMsgs["RefMessage"].ToString();
                btnRdMsg.Text = "Read";
                btnRdMsg.PostBackUrl = "readmessage.aspx?refmsg=" + rdMsgs["RefMessage"].ToString() + "&sndr=" + rdMsgs["ClientName"].ToString();
                btnRdMsg.CssClass = "linkrd";

                aCell.Controls.Add(btnRdMsg);
                // delete link

                LinkButton btnDltMsg = new LinkButton();
                btnDltMsg.ID = "btnDltMsg" + rdMsgs["RefMessage"].ToString();
                btnDltMsg.Text = "Delete";

                btnDltMsg.PostBackUrl = "deletemessage.aspx?refmsg=" + rdMsgs["RefMessage"].ToString();

                aCell.Controls.Add(btnDltMsg);
                aRow.Cells.Add(aCell);

                if (Convert.ToBoolean(rdMsgs["New"]) == true) // to verify it is a new message or not
                {
                    aRow.BackColor = System.Drawing.Color.DarkGray;
                }
                else
                {
                    aRow.BackColor = System.Drawing.Color.LightGray;
                }

                tabMessage.Rows.Add(aRow);
            }



            string sql3 = $"SELECT * FROM House WHERE(AgentNumber = {refAgent})";
            clsGloble.myCmd = new OleDbCommand(sql3, clsGloble.myCon);
            dataHouse.DataSource = clsGloble.myCmd.ExecuteReader();
            dataHouse.DataBind();

            clsGloble.myCon.Close();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            clsGloble.myCon.Open();

            //getting information from the form
            string type = txtType.Text.Trim();
            string location = txtLocation.Text.Trim();
            string price = txtPrice.Text.Trim();
            string bed = txtBedRoom.Text.Trim();
            string bath = txtBathroom.Text.Trim();
            string postalcode = txtPostalCode.Text.Trim();
            string city = txtCity.Text.Trim();
            string info = txtClinetInfo.Text.Trim();
            string housetype = txtBuySellType.Text.Trim();
            //getting info from session
            int agentNumber = Convert.ToInt32(Session["AgentId"]);

            Response.Write($"<script>alert('{agentNumber}')</script>");


            string sql = $"INSERT INTO House([Type], [Location], [Price], [Bedrooms], [Bathrooms], [Postalcode], [City], [AgentNumber], [ClinetInformation], [HoueType])" +
                $" values (@type, @location, @price, @bedroom,@bathroom,@post,@city, @agent, @client, @hType)";
            clsGloble.myCmd = new OleDbCommand();

            clsGloble.myCmd.CommandText = sql;
            clsGloble.myCmd.Connection = clsGloble.myCon;
            clsGloble.myCmd.Parameters.AddWithValue("@type", type);
            clsGloble.myCmd.Parameters.AddWithValue("@location", location);
            clsGloble.myCmd.Parameters.AddWithValue("@price", price);
            clsGloble.myCmd.Parameters.AddWithValue("@bedroom", bed);
            clsGloble.myCmd.Parameters.AddWithValue("@bathroom", bath);
            clsGloble.myCmd.Parameters.AddWithValue("@post", postalcode);
            clsGloble.myCmd.Parameters.AddWithValue("@city", city);
            clsGloble.myCmd.Parameters.AddWithValue("@agent", agentNumber);
            clsGloble.myCmd.Parameters.AddWithValue("@client", info);
            clsGloble.myCmd.Parameters.AddWithValue("@hType", housetype);
            


            Int32 result = clsGloble.myCmd.ExecuteNonQuery();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Server.Transfer("Login.aspx");
        }
    }
}