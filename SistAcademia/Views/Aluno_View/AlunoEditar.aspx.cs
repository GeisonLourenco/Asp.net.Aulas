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
    public partial class AlunoEditar : System.Web.UI.Page
    {
        private static Aluno aluno;
        string script;
        AlunoController alctrl = new AlunoController();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Aluno> academias = alctrl.Listar();
            gdvAlunos.DataSource = academias.OrderBy(c => c.Nome);
            gdvAlunos.DataBind();
        }

        protected void AtualizaAluno()
        {
            List<Aluno> academias = alctrl.Listar();
            gdvAlunos.DataSource = academias.OrderBy(c => c.Nome);
            gdvAlunos.DataBind();
        }

        protected void btnEditarAlunos_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.Nome = txtNomeAluno.Text;
            aluno = alctrl.buscarAlunoPorNome(aluno);
            if (aluno != null)
            {
                aluno.Nome = txtNovoNome.Text;
                aluno.Peso = txtNovoPeso.Text;
                aluno.Altura = txtNovaAltura.Text;
                aluno.Idade = txtNovaIdade.Text;
                aluno.Telefone = txtNovoTel.Text;
                aluno.Endereco = txtNovoEnd.Text;
                aluno.Objetivo = txtNovoObjetivo.Text;
                alctrl.Editar(aluno);
                AtualizaAluno();
            }
        }
    }
}