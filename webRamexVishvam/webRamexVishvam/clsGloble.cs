using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace webRamexVishvam
{
    public static class clsGloble
    {
        public static string conString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Vishvam\Desktop\webRamexVishvam\webRamexVishvam\App_Data\dbRamexAsp.mdb";
        public static OleDbCommand myCmd;
        public static OleDbConnection myCon;

    }
}