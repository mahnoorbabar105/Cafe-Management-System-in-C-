using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    class function
    {
        protected SqlConnection getConnection()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "data source = DESKTOP-6G79KQT\\SQLEXPRESS ; database = cafe ; integrated security = True";
            return con;

        }
        public DataSet getData(String query)
        {
            SqlConnection con = getConnection();
            SqlCommand cmd  = new SqlCommand();
            cmd.Connection= con;
            cmd.CommandText= query;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
        public void setdata(string query)
        {
            SqlConnection con = getConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection= con;
            con.Open();
            cmd.CommandText= query;
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Data Procced Succesfully", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }
    }
    
}
        
