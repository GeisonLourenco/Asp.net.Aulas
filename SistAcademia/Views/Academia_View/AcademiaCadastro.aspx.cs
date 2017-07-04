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
    public partial class AcademiaCadastro : System.Web.UI.Page
    {
        Academia academia;
        string script;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Academia academia = new Academia();
            academia.Nome = txtNome.Text;
            academia.Endereco = txtEndereco.Text;
            academia.Telefone = txtTelefone.Text;
            academia.Professor = txtProfessor.Text;

            AcademiaController ctrl = new AcademiaController();
            ctrl.Adicionar(academia);
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            txtEndereco.Text = string.Empty;
            txtTelefone.Text = string.Empty;
            txtProfessor.Text = string.Empty;
        }
    }
}