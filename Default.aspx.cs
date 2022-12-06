using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_Operation
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        string connectionString = "Data Source=DESKTOP-TVUE5S1;Initial Catalog=TechnoFra;Integrated Security=True";
        public static SqlConnection con = null;
        public static SqlCommand com = null;
        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connectionString);
            con.Open();
            com= new SqlCommand("Insert Into tblStudentRecords values('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + int.Parse(TextBox3.Text) + "','" + TextBox4.Text + "')", con);
            com.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully  Inserted')",true);
            ClearData();
            LoadRecord();

        }
        void LoadRecord()
        {
            con = new SqlConnection(connectionString);
            com = new SqlCommand("Select * From tblStudentRecords", con); 
            SqlDataAdapter dr = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        // after update you have to reload the page 
        protected void Button2_Click(object sender, EventArgs e)
        {
             con = new SqlConnection(connectionString);
            con.Open();
            com = new SqlCommand("Update tblStudentRecords Set StudentId = '" + int.Parse(TextBox1.Text)+ "',StudentName = '"+TextBox2.Text+ "', Address = '"+DropDownList1.SelectedValue+"', Age = '"+int.Parse(TextBox3.Text)+ "', Contact = '"+TextBox4.Text+"'Where StudentId = '"+int.Parse(TextBox1.Text)+"'", con);
            com.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully  Updated')",true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ClearData();
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connectionString);
            con.Open();
            com = new SqlCommand("Delete From tblStudentRecords Where StudentId = '" + int.Parse(TextBox1.Text) + "'", con);
            com.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully  Deleted')", true);
            LoadRecord();
        }

  

        public void ClearData()
        {
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
            TextBox4.Text = null;
            DropDownList1.Text = null;
        }
        
    }
}