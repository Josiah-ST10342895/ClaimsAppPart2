using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Claims_Part_2
{
    public partial class Claim_Sub : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Checks  if a field is empty and displays an appropriate message
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text) ||
                string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(TextBox4.Text) ||
                string.IsNullOrEmpty(TextBox5.Text) || string.IsNullOrEmpty(TextBox6.Text))
            {
                MessageBox.Show("Please fill in all fields.");
                return;
            }

            // Calculated (Hours_Worked * Salary_Rate) to get the Total
            decimal hoursWorked = Convert.ToDecimal(TextBox5.Text);  
            decimal salaryRate = Convert.ToDecimal(TextBox6.Text); 
            decimal total = hoursWorked * salaryRate;

           
            SqlCommand cmd = new SqlCommand("INSERT INTO tblLecturer (Lecturer_ID, Program_Code, Module_Code, Submission_Date, Hours_Worked, Salary_Rate, Total) VALUES('"
                + TextBox1.Text + "', '"
                + TextBox2.Text + "', '"
                + TextBox3.Text + "', '"
                + TextBox4.Text + "', '"
                + TextBox5.Text + "', '"
                + TextBox6.Text + "', '"
                + total + "')", con);

            cmd.ExecuteNonQuery();
            con.Close();

            MessageBox.Show("Claim has been successfully created.");

            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}
