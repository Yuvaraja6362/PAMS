using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace PAMS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security = True
        DateTime parking_date;
        DateTime uparking_date;
        SqlConnection con;
        string vtype;
        string slota,slotn,slotf;
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= 50; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
        }
        //for parking date time 
        protected void Button1_Click(object sender, EventArgs e)
        {
            parking_date = DateTime.Now;
            TextBox3.Text = parking_date.ToString();
        }
        //for clear the parking date and time
        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox3.Text = null;
        }
        //for clear the all data in the parking field 
        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = null;
            TextBox2.Text = null;
            if (RadioButton1.Checked)
            {
                RadioButton1.Checked = false;
            }
            if (RadioButton2.Checked)
            {
                RadioButton2.Checked = false;
            }
            if (RadioButton3.Checked)
            {
                RadioButton3.Checked = false;
            }
            if (DropDownList1.SelectedIndex != 0)
            {
                DropDownList1.SelectedIndex = 0;
            }
            if (DropDownList2.SelectedIndex != 0)
            {
                DropDownList2.SelectedIndex = 0;
            }
            TextBox3.Text = null;
            Label12.Text = null;

        }
        //for insert the data in the database
        protected void Button2_Click1(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into pat values(@Vehicle_Number,@Name,@Vehicle_Type,@Slot,@Parking_DateTime)", con);
            cmd.Parameters.AddWithValue("@Vehicle_Number", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            if (RadioButton1.Checked) { vtype = "Bike"; }
            if (RadioButton2.Checked) { vtype = "Car"; }
            if (RadioButton3.Checked) { vtype = "Other"; }
            slota = Convert.ToString(DropDownList1.SelectedItem.ToString());
            slotn=Convert.ToString(DropDownList2.SelectedItem.ToString());
            slotf=Convert.ToString(slota+slotn);
            cmd.Parameters.AddWithValue("@Vehicle_Type", vtype.ToString());
            cmd.Parameters.AddWithValue("@Slot", slotf.ToString());
            cmd.Parameters.AddWithValue("@Parking_DateTime", TextBox3.Text);
            int result = cmd.ExecuteNonQuery();
            if (result == 1)
            {
                Label12.Text = "Vehicle Parked!";
            }
            //display
            SqlCommand dis = new SqlCommand("select * from pat where Vehicle_Number='" + TextBox1.Text + "'", con);
            SqlDataReader dr = dis.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }
        //for view or search the entered vehicle number in the database 
        protected void Button4_Click(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from pat where Vehicle_Number='" + TextBox4.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (!dr.HasRows)
            {
                Label8.Text = "This Vehicle Number is not Parked here!";
            }
            else
            {
                while (dr.Read())
                {
                    if (Convert.ToString(TextBox4.Text) == dr[0].ToString())
                    {
                        string vno = dr[0].ToString();
                        string name = dr[1].ToString();
                        string vtype = dr[2].ToString();
                        string pslot = dr[3].ToString();
                        string pdt = dr[4].ToString();
                        Label8.Text = "Hello " + name + " Your Vehicle Model " + vtype + " With The Number " + vno + " is in the slot of " + pslot + " in Parking Area.";
                    }
                }
            }
            dr.Close();
            con.Close();
            GridView1.DataBind();
        }
        //for clear the data in the search field
        protected void Button6_Click(object sender, EventArgs e)
        {
            TextBox4.Text = null;
            Label8.Text = null;
        }
        //for display the date and time in the unparking field
        protected void Button9_Click(object sender, EventArgs e)
        {
            uparking_date = DateTime.Now;
            TextBox6.Text = uparking_date.ToString();
        }
        //for clear the unparking date and time
        protected void Button10_Click(object sender, EventArgs e)
        {
            TextBox6.Text = null;
        }
        //for clear the data in the unparking field
        protected void Button8_Click(object sender, EventArgs e)
        {
            TextBox5.Text = null;
            TextBox6.Text = null;
            Label11.Text = null;
        }
        //for delete the entered vehicle in the database
        protected void Button7_Click(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from pat where Vehicle_Number='" + TextBox5.Text + "'", con);
            cmd.ExecuteNonQuery();
            Label11.Text = "The Vehicle with the number " + Convert.ToString(TextBox5.Text) + " is departed on " + Convert.ToString(TextBox6.Text);
            //display
            SqlCommand dis = new SqlCommand("select * from pat where Vehicle_Number='" + TextBox6.Text + "'", con);
            SqlDataReader dr = dis.ExecuteReader();
            GridView1.DataBind();
        }
    }
}