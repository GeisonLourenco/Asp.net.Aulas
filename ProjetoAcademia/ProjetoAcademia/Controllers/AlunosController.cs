using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjetoAcademia.Controllers;
using ProjetoAcademia.Models;
using ProjetoAcademia.Views;

namespace ProjetoAcademia.Controllers
{
    public class AlunosController : BasePage
    {
        private static Aluno temp;
        public void Adicionar(Aluno aluno)
        {
            temp = new Aluno();
            if (aluno != null)
            {
                contexto.Alunos.Add(aluno);
                contexto.SaveChanges();
            }
        }

        public List<Aluno> Listar()
        {
            return contexto.Alunos.Where(c => c.Ativo == true).ToList();
        }

        internal static Aluno BuscaAlunoPorNome(string text)
        {
            throw new NotImplementedException();
        }

        public List<Aluno> ListarInativos()
        {
            return contexto.Alunos.Where(c => c.Ativo == false).ToList();
        }

        public static Aluno BuscarAlunoPorID(int id)
        {
            return contexto.Alunos.Find(id);
        }

        internal Aluno buscarAlunoPorNome(Aluno aluno)
        {
            throw new NotImplementedException();
        }

        public static Aluno BuscarAlunoPorNome(string nome)
        {
            return contexto.Alunos.FirstOrDefault(x => x.Nome.Equals(nome));
        }

        internal Aluno BuscarAlunoPorID(Aluno aluno)
        {
            throw new NotImplementedException();
        }

        /*Exclusão fisica (apaga o registro do banco)
         public void Excluir(Categoria categoria)
        {
            contexto.Entry(categoria).State = System.Data.Entity.EntityState.Deleted;
            contexto.SaveChanges();
        }*/

        //Exclusão logica (campo Ativo/Inativo)
        public void Excluir(Aluno aluno)
        {
            aluno.Ativo = false;
            contexto.Entry(aluno).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }

        public void Editar(Aluno aluno)
        {
            contexto.Entry(aluno).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }
    }
}
