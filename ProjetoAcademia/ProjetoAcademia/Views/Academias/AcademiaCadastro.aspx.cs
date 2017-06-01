using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetoAcademia.Models;
using ProjetoAcademia.Controllers;

namespace ProjetoAcademia.Views.Academias
{
    public partial class AcademiaCadastro : System.Web.UI.Page
    {
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

            AcademiasController ctrl = new AcademiasController();
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