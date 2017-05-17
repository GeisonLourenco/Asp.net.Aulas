using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula17._05
{
    public partial class Soma2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int valor1ViewState = Convert.ToInt32(ViewState["Valor1"]);
            int valor1Session = Convert.ToInt32(Session["valor1Session"]);

            int valor2ViewState = Convert.ToInt32(ViewState["Valor2"]);
            int valor2Session = Convert.ToInt32(Session["valor2Session"]);

            txtSoma1.Text = valor1Session.ToString();
            txtSoma2.Text = valor2Session.ToString();
            txtSoma.Text = (valor1Session + valor2Session).ToString();

            txtSubt1.Text = valor1Session.ToString();
            txtSubt2.Text = valor2Session.ToString();
            txtSubt.Text = (valor1Session - valor2Session).ToString();

            txtMult1.Text = valor1Session.ToString();
            txtMult2.Text = valor2Session.ToString();
            txtMult.Text = (valor1Session - valor2Session).ToString();

            txtDiv1.Text = valor1Session.ToString();
            txtDiv2.Text = valor2Session.ToString();
            txtDiv.Text = (valor1Session - valor2Session).ToString();

        }
    }
}