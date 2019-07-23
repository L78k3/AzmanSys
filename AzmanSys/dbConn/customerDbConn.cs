using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace AzmanSys
{
    class customerDbConn: dbConn
    {
        public void insertCustomer(string CusFName, string CusLName, string CusTelNum, string CusNat)
        {
            MySqlCommand comm = conn.CreateCommand();
            comm.CommandText = "INSERT INTO `tblCustomer` (`CusID`, `CusFName`, `CusLName`, `CusTelNum`, `CusNat`) VALUES (NULL,@CusFName, @CusLName, @CusTelNum, @CusNat);";
            comm.Parameters.AddWithValue("@CusFName", CusFName);
            comm.Parameters.AddWithValue("@CusLName", CusLName);
            comm.Parameters.AddWithValue("@CusTelNum", CusTelNum);
            comm.Parameters.AddWithValue("@CusNat", CusNat);
            comm.ExecuteNonQuery();
            connClose();
        }


        public void updateCustomer(string CusID, string FName, string LName, string Tel, string Nat)
        {
            MySqlCommand comm = conn.CreateCommand();
            comm.CommandText = "UPDATE `tblCustomer` SET `CusFName`=@FName,`CusLName`=@LName,`CusTelNum`=@CusTelNum,`CusNat`=@CusNat WHERE `CusID`=@CusID";
            comm.Parameters.AddWithValue("@CusID", CusID);
            comm.Parameters.AddWithValue("@FName", FName);
            comm.Parameters.AddWithValue("@LName", LName);
            comm.Parameters.AddWithValue("@CusTelNum", Tel);
            comm.Parameters.AddWithValue("@CusNat", Nat);
            comm.ExecuteNonQuery();
            connClose();
        }

        public void deleteCustomer(string CusID)
        {
            MySqlCommand comm = conn.CreateCommand();
            comm.CommandText = "DELETE FROM `tblCustomer` WHERE CusID = @CusID";
            comm.Parameters.AddWithValue("@CusID", CusID);
            comm.ExecuteNonQuery();
            connClose();
        }
    }
}
