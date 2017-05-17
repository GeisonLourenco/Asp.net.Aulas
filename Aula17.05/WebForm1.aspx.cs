using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula17._05
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public int QuantCliques {
            get {
                return QuantCliques = Convert.ToInt32(ViewState["qtdCliques"]);
            }
            set {
                ViewState["qtdCliques"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                QuantCliques = 0;
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            
            QuantCliques++;
            lblQuantCliques.Text = QuantCliques.ToString();

        }

        protected void btnEnvCliques_Click(object sender, EventArgs e)
        {
            
            Session.Add("QtdCliquesSession", QuantCliques);
            Response.Redirect("~/WebForm2.aspx");
        }
    }
}