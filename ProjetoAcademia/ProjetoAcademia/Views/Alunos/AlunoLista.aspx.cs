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
    public partial class AlunoLista : BasePage
    {
        AlunosController actrl = new AlunosController();

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