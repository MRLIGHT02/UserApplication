using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UserApplication.Models;

namespace UserApplication
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-R54CT7O;Initial Catalog=BankApplicationPortal;Integrated Security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGender();
            }
        }

        public void BindGender()
        {
            UserGender g = new UserGender();
            int index = 0;
            foreach (var Gender in Enum.GetValues(typeof(UserGender.GenderType)))
            {
                Ugender.Items.Add(new ListItem(Gender.ToString(), index.ToString()));
                index++;
            }

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("InsertInRegistrationPage", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@uname", uName.Text);
            cmd.Parameters.AddWithValue("@uemail", uEmail.Text);
            cmd.Parameters.AddWithValue("@uppassword", Upassword.Text);
            cmd.Parameters.AddWithValue("@udob", Udob.Text);
            cmd.Parameters.AddWithValue("@ugender", Ugender.SelectedValue);
            cmd.Parameters.AddWithValue("@ustatus", Ustatus.Text);
            cmd.ExecuteNonQuery();
            string script = "alert('Register Successfully!!');";
            ClientScript.RegisterStartupScript(this.GetType(), "myScript", script, true);
            con.Close();
        }

        public void BindGridView()
        {
            con.Open();
            SqlCommand sqlCommand = new SqlCommand("Select * from RegistrationPage", con);
            SqlDataAdapter da = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvData.DataSource = dt;
            gvData.DataBind();
            con.Close();
        }
        protected void gvData_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}