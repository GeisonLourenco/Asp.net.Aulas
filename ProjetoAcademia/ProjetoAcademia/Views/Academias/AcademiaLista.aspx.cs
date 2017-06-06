using ProjetoAcademia.Controllers;
using ProjetoAcademia.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoAcademia.Views.Academias
{
    public partial class AcademiaLista : BasePage
    {
        AcademiasController ctrl = new AcademiasController();
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