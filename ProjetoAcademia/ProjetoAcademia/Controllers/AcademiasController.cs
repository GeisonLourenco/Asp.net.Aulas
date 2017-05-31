using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjetoAcademia.Controllers;
using ProjetoAcademia.Models;
using ProjetoAcademia.Views;

namespace ProjetoAcademia.Controllers
{
    public class AcademiasController
    {
        protected BaseDeDadosContainer contexto = new BaseDeDadosContainer();

        public void Adicionar(Academia academia)
        {
            if (academia != null)
            {
                contexto.Academias.Add(academia);
                contexto.SaveChanges();
            }
        }

        public List<Academia> Listar()
        {
            return contexto.Academias.ToList();
        }

        public Academia BuscarAcademiaPorID(int id)
        {
            return contexto.Academias.Find(id);
        }

         public void Excluir(Academia academia)
        {
            contexto.Entry(academia).State = System.Data.Entity.EntityState.Deleted;
            contexto.SaveChanges();
        }

 

        public void Editar(Academia academia)
        {
            contexto.Entry(academia).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }
    }
}
