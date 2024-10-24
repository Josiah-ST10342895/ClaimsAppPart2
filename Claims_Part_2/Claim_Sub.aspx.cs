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
using System.IO;

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
          
                try
                {
                    // Get the input values from the textboxes
                    string lecturerId = TextBox1.Text;
                    string programCode = TextBox2.Text;
                    string moduleCode = TextBox3.Text;
                    DateTime submissionDate = DateTime.Parse(TextBox4.Text);
                    int hoursWorked = int.Parse(TextBox5.Text);
                    decimal salaryRate = decimal.Parse(TextBox6.Text);
                    decimal total = hoursWorked * salaryRate;

                    // Define the maximum file size
                    int maxFileSize = 5 * 1024 * 1024;

                    // Allowed file types
                    string[] allowedFileTypes = { ".pdf", ".docx", ".xlsx" };

                    // Check if a file is selected and a file name is provided
                    if (!FileUpload1.HasFile)
                    {
                        Response.Write("<script>alert('Please upload a file.');</script>");
                        return;
                    }

                    if (string.IsNullOrWhiteSpace(TextBox7.Text))
                    {
                        Response.Write("<script>alert('Please enter a file name.');</script>");
                        return;
                    }

                    
                    string fileExtension = Path.GetExtension(FileUpload1.FileName).ToLower();

                    // Check file size
                    if (FileUpload1.PostedFile.ContentLength > maxFileSize)
                    {
                        Response.Write("<script>alert('File size must not exceed 5 MB.');</script>");
                        return;
                    }

                    // Check file type
                    if (!allowedFileTypes.Contains(fileExtension))
                    {
                        Response.Write("<script>alert('Invalid file type. Only .pdf, .docx, and .xlsx files are allowed.');</script>");
                        return;
                    }

                   
                    string fileName = TextBox7.Text.Trim().Replace(" ", "_") + fileExtension;

                  
                    string uploadFolder = Server.MapPath("~/UploadedFiles/");
                    if (!Directory.Exists(uploadFolder))
                    {
                        Directory.CreateDirectory(uploadFolder);
                    }

                   
                    string filePath = Path.Combine(uploadFolder, fileName);
                    FileUpload1.SaveAs(filePath);

                    // saves all data into the database
                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString))
                    {
                       
                        string query = "INSERT INTO tblLecturer (Lecturer_ID, Program_Code, Module_Code, Submission_Date, Hours_Worked, Salary_Rate, Total, File_Name, File_Location) " +
                                       "VALUES (@Lecturer_ID, @Program_Code, @Module_Code, @Submission_Date, @Hours_Worked, @Salary_Rate, @Total, @File_Name, @File_Location)";

                        SqlCommand cmd = new SqlCommand(query, conn);

                       
                        cmd.Parameters.AddWithValue("@Lecturer_ID", lecturerId);
                        cmd.Parameters.AddWithValue("@Program_Code", programCode);
                        cmd.Parameters.AddWithValue("@Module_Code", moduleCode);
                        cmd.Parameters.AddWithValue("@Submission_Date", submissionDate);
                        cmd.Parameters.AddWithValue("@Hours_Worked", hoursWorked);
                        cmd.Parameters.AddWithValue("@Salary_Rate", salaryRate);
                        cmd.Parameters.AddWithValue("@Total", total);

                        cmd.Parameters.AddWithValue("@File_Name", fileName);
                        cmd.Parameters.AddWithValue("@File_Location", filePath);

                       
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }

                    // Display success message
                    Response.Write("<script>alert('Claim submitted successfully!');</script>");
                }
                catch (SqlException sqlEx)
                {
                  
                    Response.Write("<script>alert('SQL Error: " + sqlEx.Message + "');</script>");
                }
                catch (Exception ex)
                {
                    
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }


            protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}
