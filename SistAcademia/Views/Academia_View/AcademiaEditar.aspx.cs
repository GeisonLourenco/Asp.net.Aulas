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
    public partial class AcademiaEditar : System.Web.UI.Page
    {
        private static Academia academia;
        string script;
        AcademiaController actrl = new AcademiaController();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Academia> academias = actrl.Listar();
            gdvAcademias.DataSource = academias.OrderBy(c => c.Nome);
            gdvAcademias.DataBind();
        }

        protected void AtualizaAcademia()
        {
            List<Academia> academias = actrl.Listar();
            gdvAcademias.DataSource = academias.OrderBy(c => c.Nome);
            gdvAcademias.DataBind();
        }

        protected void btnEditarAcademia_Click(object sender, EventArgs e)
        {
            Academia academia = new Academia();
            academia.Nome = txtNomeAcademia.Text;
            academia = actrl.buscarAcademiaPorNome(academia);
            if (academia != null)
            {
                academia.Nome = txtNovaAcademia.Text;
                academia.Telefone = txtNovoTelefone.Text;
                academia.Endereco = txtNovoEndereco.Text;
                academia.Professor = txtNovoProfessor.Text;
                actrl.Editar(academia);
                AtualizaAcademia();
            }
        }
    }
}