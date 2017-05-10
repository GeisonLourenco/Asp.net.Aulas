using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula10._05
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            txtData.Text = DateTime.Now.ToString();
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            DateTime dataCalendario = calDataInicial.SelectedDate;
            txtData.Text = dataCalendario.ToString();
        }
    }
}
