using ProjetoAcademia.Controllers;
using ProjetoAcademia.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoAcademia.Views.Alunos
{
    public partial class AlunoBusca : System.Web.UI.Page
    {

        private static Aluno aluno;
        string script;
        private Academia academia;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if ((aluno = AlunosController.BuscaAlunoPorNome(txtBuscarAluno.Text)) != null);
            txtNome.Text = aluno.Nome;
            txtPeso.Text = aluno.Peso;
            txtAltura.Text = aluno.Altura;
            txtIdade.Text = aluno.Endereco;
            txtEndereco.Text = aluno.Endereco;
            txtTelefone.Text = aluno.Telefone;
            txtObjetivo.Text = aluno.Objetivo;
            ddlAcademia.SelectedIndex = ddlAcademia.Items.IndexOf(ddlAcademia.Items.FindByValue(aluno.AcademiaId.ToString()));
            txtBuscarAluno.Text = string.Empty;
            btnBuscarAluno.Enabled = true;
        }

        protected void btnEditAluno_Click(object sender, EventArgs e)
        {
            txtNome.Text = aluno.Nome;
            txtPeso.Text = aluno.Peso;
            txtAltura.Text = aluno.Altura;
            txtIdade.Text = aluno.Endereco;
            txtEndereco.Text = aluno.Endereco;
            txtTelefone.Text = aluno.Telefone;
            txtObjetivo.Text = aluno.Objetivo;
            aluno.AcademiaId = AcademiasController.BuscarAcademiaPorId(Convert.ToInt32(ddlAcademia.SelectedValue)).Id;
            if (AcademiasController.Editar(academia))
            {
                limpar();
            }
    }
        private void limpar()
        {
            txtBuscar.Text = string.Empty;
            txtGerente.Text = string.Empty;
            txtNome.Text = string.Empty;
        }
    }
}