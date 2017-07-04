using SistAcademia.Controllers;
using SistAcademia.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistAcademia.Views.Aluno_View
{
    public partial class AlunoCadastro : System.Web.UI.Page
    {
        Aluno aluno;
        string script;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvarAluno_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.Nome = txtNome.Text;
            aluno.Peso = txtPeso.Text;
            aluno.Altura = txtAltura.Text;
            aluno.Idade = txtIdade.Text;
            aluno.Endereco = txtEndereco.Text;
            aluno.Telefone = txtTelefone.Text;
            aluno.Objetivo = txtObjetivo.Text;

            AlunoController actrl = new AlunoController();
            actrl.Adicionar(aluno);
        }
        protected void btnCancelarAluno_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            txtEndereco.Text = string.Empty;
            txtTelefone.Text = string.Empty;
            txtObjetivo.Text = string.Empty;
            txtPeso.Text = string.Empty;
            txtAltura.Text = string.Empty;
            txtIdade.Text = string.Empty;
        }
    }
}