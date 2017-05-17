using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula17._05
{
    public partial class Soma1 : System.Web.UI.Page
    {
        public int Valor1
        {
            get
            {
                return Valor1 = Convert.ToInt32(ViewState["Valor1"]);
            }
            set
            {
                ViewState["Valor1"] = value;
            }
        }

        public int Valor2
        {
            get
            {
                return Valor2 = Convert.ToInt32(ViewState["Valor2"]);
            }
            set
            {
                ViewState["Valor2"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Valor1 = 0;
                Valor2 = 0;
        }

        protected void btnMais_Click(object sender, EventArgs e)
        {
            Valor1 = Convert.ToInt32(txt1.Text);
            Valor2 = Convert.ToInt32(txt2.Text);
            txtSoma.Text = (Valor1 + Valor2).ToString();
        }

        protected void btnIgual_Click(object sender, EventArgs e)
        {
            Valor1 = Convert.ToInt32(txt1.Text);
            Valor2 = Convert.ToInt32(txt2.Text);
            Session.Add("valor1Session", Valor1);
            Session.Add("valor2Session", Valor2);
            Response.Redirect("~/Soma2.aspx");
        }
    }
}