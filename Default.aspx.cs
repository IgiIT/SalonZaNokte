using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalonZaNokte
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUnesi_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    using (SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString))
                    {
                        conn.Open();
                        int idKlijenta = Convert.ToInt32(new SqlCommand("SELECT klijentID FROM Klijent WHERE ime='" + DropDownList1.SelectedValue.Split(' ')[0] + "'", conn).ExecuteScalar());
                        int idSalona = Convert.ToInt32(new SqlCommand("SELECT salonID FROM Salon WHERE nazivSalona='" + DropDownList2.SelectedValue + "'", conn).ExecuteScalar());
                        string insertQuery = "INSERT INTO ZakazanTermin VALUES (" + idSalona + "," + idKlijenta + "," + txtCena.Text + ",'" + txtDatum.Text + "','" + txtVreme.Text + "','" + txtTehnika.Text + "')";
                        lblPrikaz.Text = insertQuery;
                        SqlCommand cmd = new SqlCommand(insertQuery, conn);
                        if (cmd.ExecuteNonQuery() > 0)
                        {
                            lblPrikaz.Text = "Uspesno dodato u bazu";
                        }

                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
        }
    }
}