using SistAcademia.Controllers;
using SistAcademia.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistAcademia.Views.Academia_View
{
    public partial class AcademiaLista : System.Web.UI.Page
    {
        AcademiaController ctrl = new AcademiaController();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Academia> academias = ctrl.Listar();
            gdvAcademias.DataSource = academias.OrderBy(c => c.Nome);
            gdvAcademias.DataBind();
        }

        protected void AtualizaAcademia()
        {
            List<Academia> academias = ctrl.Listar();
            gdvAcademias.DataSource = academias.OrderBy(c => c.Nome);
            gdvAcademias.DataBind();
        }

        protected void btnExcAcademia_Click(object sender, EventArgs e)
        {
            Academia academia = new Academia();
            academia.Id = int.Parse(txtExcAcademia.Text);
            academia = ctrl.BuscarAcademiaPorID(academia);
            if (academia != null)
            {
                ctrl.Excluir(academia);
                AtualizaAcademia();
            }
            txtExcAcademia.Text = string.Empty;
        }
    }
}