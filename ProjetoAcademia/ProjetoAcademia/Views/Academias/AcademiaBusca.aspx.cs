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
    public partial class BuscaAcademia : BasePage
    {

        private static Academia academia;
        string script;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if ((academia = AcademiasController.BuscarAcademiaPorNome(txtBuscarAcad.Text)) != null)
            txtNome.Text = academia.Nome;
            txtEndereco.Text = academia.Endereco;
            txtTelefone.Text = academia.Telefone;
            txtProfessor.Text = academia.Professor;
            txtBuscarAcad.Text = string.Empty;
            btnBuscarAcad.Enabled = true;
        }

        protected void btnEditAcademia_Click(object sender, EventArgs e)
        {
            txtNome.Text = academia.Nome;
            txtEndereco.Text = academia.Endereco;
            txtTelefone.Text = academia.Telefone;
            txtProfessor.Text = academia.Professor;
        }
    }
}