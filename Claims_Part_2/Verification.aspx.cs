using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Claims_Part_2
{
    public partial class Verification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

         
            GridViewRow row = (GridViewRow)btn.NamingContainer;

          
            string lecturerId = GridView1.DataKeys[row.RowIndex].Value.ToString();

            // Update the status to "Approved" in the database
            UpdateClaimStatus(lecturerId, "Approved");
        }
        private void UpdateClaimStatus(string lecturerId, string status)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString))
            {
               
                string query = "UPDATE tblLecturer SET Claim_Status = @Status WHERE Lecturer_ID = @Lecturer_ID";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Lecturer_ID", lecturerId);
                cmd.Parameters.AddWithValue("@Status", status);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;

            string lecturerId = GridView1.DataKeys[row.RowIndex].Value.ToString();

            // Update the status to "Declined" in the database
            UpdateClaimStatus(lecturerId, "Declined");
        }
    }
  
}
