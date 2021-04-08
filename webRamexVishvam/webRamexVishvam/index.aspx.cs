using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using NHibernate.Linq;

namespace webRamexVishvam
{
    public partial class index : System.Web.UI.Page
    {
        static DataSet myset;
        DataTable HouseTable;
        protected void Page_Load(object sender, EventArgs e)
        {
            clsGloble.conString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Vishvam\Desktop\webRamexVishvam\webRamexVishvam\App_Data\dbRamexAsp.mdb";
            clsGloble.myCon = new OleDbConnection(clsGloble.conString);
            clsGloble.myCon.Open();

            clsGloble.myCmd = new OleDbCommand("SELECT * FROM House", clsGloble.myCon);
            OleDbDataReader myreader = clsGloble.myCmd.ExecuteReader();

            myset = new DataSet();
            OleDbDataAdapter adphouse = new OleDbDataAdapter("SELECT * FROM House", clsGloble.myCon);
            adphouse.Fill(myset, "House");

            dataHouse.DataSource = myset.Tables["House"];
            dataHouse.DataBind();

            HouseTable = myset.Tables["House"];

            //Clearing the fields
            //drpSellType.Items.Clear();
            //drpBathroom.Items.Clear();
            //drpBedrooms.Items.Clear();


            //feeling the buy and sell dropdown
            drpSellType.Items.Add("Sell");
            drpSellType.Items.Add("Rent");
            for (int i = 0; i <= 10; i++) {
                drpBathroom.Items.Add($"{i}");
                drpBedrooms.Items.Add($"{i}");
            }

        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            //if (txtSearch.Text.Length > 0)
            //{
            //    var houseSearch = from house in HouseTable.AsEnumerable()
            //                      where house.Field<string>("City").Contains(txtSearch.Text) ||
            //                            house.Field<string>("Type").Contains(txtSearch.Text) ||
            //                            house.Field<string>("Location").Contains(txtSearch.Text) ||
            //                            house.Field<string>("Postalcode").Contains(txtSearch.Text)
            //                      select house;

            //    if (houseSearch.Count() > 0)
            //    {
            //        dataHouse.DataSource = houseSearch.CopyToDataTable();
            //        dataHouse.DataBind();
            //        //return;
            //    }
            //}


            //if (drpSellType.SelectedIndex > -1)
            //{
            //    var houseSellType = from house in HouseTable.AsEnumerable()
            //                        where house.Field<string>("HoueType").Contains(drpSellType.SelectedItem.Value)
            //                        select house;
            //    if (houseSellType.Count() > 0)
            //    {
            //        dataHouse.DataSource = houseSellType.CopyToDataTable();
            //        dataHouse.DataBind();
            //    }
            //}

            //if (drpBathroom.SelectedIndex > -1) {
            //    var houseSellType = from house in HouseTable.AsEnumerable()
            //                        where house.Field<string>("Bathrooms").Contains(drpBathroom.SelectedItem.Value)
            //                        select house;
            //    if (houseSellType.Count() > 0)
            //    {
            //        dataHouse.DataSource = houseSellType.CopyToDataTable();
            //        dataHouse.DataBind();
            //    }
            //}


            //if (drpBedrooms.SelectedIndex > -1)
            //{
            //    var houseSellType = from house in HouseTable.AsEnumerable()
            //                        where house.Field<string>("Bedrooms").Contains(drpBedrooms.SelectedItem.Value)
            //                        select house;
            //    if (houseSellType.Count() > 0)
            //    {
            //        dataHouse.DataSource = houseSellType.CopyToDataTable();
            //        dataHouse.DataBind();
            //    }
            //}
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            //var houseSellType = from house in HouseTable.AsEnumerable()
            //                    where SqlMethods.Like(house.Field<string>("Bedrooms"), "%" + drpBedrooms.SelectedItem.Value + "%")
            //                    select house;
            //if (houseSellType.Count() > 0)
            //{
            //    dataHouse.DataSource = houseSellType.CopyToDataTable();
            //    dataHouse.DataBind();
            //}



            //clsGloble.conString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Vishvam\Desktop\webRamexVishvam\webRamexVishvam\App_Data\dbRamexAsp.mdb";
            //clsGloble.myCon = new OleDbConnection(clsGloble.conString);
            //clsGloble.myCon.Open();

            //clsGloble.myCmd = new OleDbCommand("SELECT * FROM House", clsGloble.myCon);
            //OleDbDataReader myreader = clsGloble.myCmd.ExecuteReader();

            myset = new DataSet();

            if (drpBathroom.SelectedIndex > -1 || drpBedrooms.SelectedIndex > -1 || drpSellType.SelectedIndex > -1) {
                string bedroom = "";
                string bathroom = "";
                string selltype = "";
                if (drpBedrooms.SelectedIndex == 0)
                {
                    bedroom = "%";
                }
                else
                {
                    bedroom = drpBedrooms.SelectedItem.Value;
                }


                if (drpBathroom.SelectedIndex == 0)
                {
                    bathroom = "%";
                }
                else
                {
                    bathroom = drpBathroom.SelectedItem.Value;
                }


                if (drpSellType.SelectedIndex == 0)
                {
                    selltype = "%";
                }
                else
                {
                    selltype = drpSellType.SelectedItem.Value;
                }


                OleDbDataAdapter adphouse = new OleDbDataAdapter($"SELECT * FROM House where Bedrooms like '{  bedroom }' and Bathrooms like '{bathroom}' and HoueType like '{selltype}'", clsGloble.myCon);

                adphouse.Fill(myset, "House");

                dataHouse.DataSource = myset.Tables["House"];
                dataHouse.DataBind();
            }
        }

        protected void drpBathroom_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtSearch_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            var houseSearch = from house in HouseTable.AsEnumerable()
                              where house.Field<string>("City").Contains(txtSearch.Text) ||
                                    house.Field<string>("Type").Contains(txtSearch.Text) ||
                                    house.Field<string>("Location").Contains(txtSearch.Text) ||
                                    house.Field<string>("Postalcode").Contains(txtSearch.Text)
                              select house;

            if (houseSearch.Count() > 0)
            {
                dataHouse.DataSource = houseSearch.CopyToDataTable();
                dataHouse.DataBind();
            }
        }
    }
}