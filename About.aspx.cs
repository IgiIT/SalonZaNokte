﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalonZaNokte
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedValue.Split(' ')[0];
        }

    }
}