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
    public partial class Agents : System.Web.UI.Page
    {

        static DataSet myset;
        DataTable AgentTable;
        protected void Page_Load(object sender, EventArgs e)
        {
            clsGloble.conString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Vishvam\Desktop\webRamexVishvam\webRamexVishvam\App_Data\dbRamexAsp.mdb";
            clsGloble.myCon = new OleDbConnection(clsGloble.conString);
            clsGloble.myCon.Open();

            ////clearing the field
            //drpCity.Items.Clear();
            //drpGender.Items.Clear();
            //drpLanguage.Items.Clear();

            clsGloble.myCmd = new OleDbCommand("SELECT DISTINCT (AgentCity) FROM Agents", clsGloble.myCon);
            OleDbDataReader myreader = clsGloble.myCmd.ExecuteReader();
            while (myreader.Read())
            {
                drpCity.Items.Add(myreader["AgentCity"].ToString());
            }
            clsGloble.myCmd = new OleDbCommand("SELECT DISTINCT (AgentLanguage) FROM Agents", clsGloble.myCon);
            myreader = clsGloble.myCmd.ExecuteReader();
            while (myreader.Read())
            {
                drpLanguage.Items.Add(myreader["AgentLanguage"].ToString());
            }

            myset = new DataSet();
            OleDbDataAdapter adphouse = new OleDbDataAdapter("SELECT * FROM Agents", clsGloble.myCon);
            adphouse.Fill(myset, "Agents");

            dataAgent.DataSource = myset.Tables["Agents"];
            dataAgent.DataBind();

            AgentTable = myset.Tables["Agents"];


            //filling the data in drp
            drpGender.Items.Add("Male");
            drpGender.Items.Add("Female");

            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            var agentSearch = from agent in AgentTable.AsEnumerable()
                              where agent.Field<string>("AgentName").Contains(txtNameEmail.Text) ||
                                    agent.Field<string>("AgentEmail").Contains(txtNameEmail.Text)
                              select agent;

            if (agentSearch.Count() > 0)
            {
                dataAgent.DataSource = agentSearch.CopyToDataTable();
                dataAgent.DataBind();
            }
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            myset = new DataSet();
            string language = "";
            string gender = "";
            string city = "";
            if (drpLanguage.SelectedIndex == 0)
            {
                language = "%";
            }
            else
            {
                language = drpLanguage.SelectedItem.Value;
            }


            if (drpGender.SelectedIndex == 0)
            {
                gender = "%";
            }
            else
            {
                gender = drpGender.SelectedItem.Value;
            }


            if (drpCity.SelectedIndex == 0)
            {
                city = "%";
            }
            else
            {
                city = drpCity.SelectedItem.Value;
            }


            OleDbDataAdapter adphouse = new OleDbDataAdapter($"SELECT * FROM Agents where AgentLanguage like '{ language }' and AgentGender like '{gender}' and AgentCity like '{ city }'", clsGloble.myCon);

            adphouse.Fill(myset, "Agents");

            dataAgent.DataSource = myset.Tables["Agents"];
            dataAgent.DataBind();
            //drpCity.Items.Clear();
            //drpGender.Items.Clear();
            //drpLanguage.Items.Clear();
        }
    }
}