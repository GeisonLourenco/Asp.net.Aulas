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
    public partial class AlunoCadastro : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.Nome = txtNome.Text;
            aluno.Peso = txtPeso.Text;
            aluno.Altura = txtAltura.Text;
            aluno.Idade = txtIdade.Text;
            aluno.Endereco = txtEndereco.Text;
            aluno.Telefone = txtTelefone.Text;
            aluno.Objetivo = txtObjetivo.Text;

            AlunosController actrl = new AlunosController();
            actrl.Adicionar(aluno);
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