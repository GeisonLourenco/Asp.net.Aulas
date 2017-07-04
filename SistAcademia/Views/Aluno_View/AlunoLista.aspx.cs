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
    public partial class AlunoLista : System.Web.UI.Page
    {
        AlunoController actrl = new AlunoController();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<Aluno> alunos = actrl.Listar();
            gdvAlunos.DataSource = alunos.OrderBy(c => c.Nome);
            gdvAlunos.DataBind();
        }

        protected void AtualizaAlunos()
        {
            List<Aluno> alunos = actrl.Listar();
            gdvAlunos.DataSource = alunos.OrderBy(c => c.Nome);
            gdvAlunos.DataBind();
        }

        protected void btnExcAluno_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.Id = int.Parse(txtExcAluno.Text);
            aluno = actrl.BuscarAlunoPorID(aluno);
            if (aluno != null)
            {
                actrl.Excluir(aluno);
                AtualizaAlunos();
            }
            txtExcAluno.Text = string.Empty;
        }
    }
}