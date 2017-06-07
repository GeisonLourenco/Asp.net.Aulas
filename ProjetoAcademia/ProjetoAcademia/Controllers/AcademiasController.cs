using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using ProjetoAcademia.Controllers;
using ProjetoAcademia.Models;
using ProjetoAcademia.Views;

namespace ProjetoAcademia.Controllers
{
    public class AcademiasController : BasePage
    {
        private static Academia temp;
        public void Adicionar(Academia academia)
        {
            temp = new Academia();
            if (academia != null)
            {
                contexto.Academias.Add(academia);
                contexto.SaveChanges();
            }
        }

        internal static Academia BuscarAcademiaPorNome(TextBox txtNome)
        {
            throw new NotImplementedException();
        }

        public List<Academia> Listar()
        {
            return contexto.Academias.ToList();
        }


        public static Academia BuscarAcademiaPorId(int id)
        {
            return contexto.Academias.Find(id);
        }

        public static Academia BuscarAcademiaPorNome(string nome)
            {
                return contexto.Academias.FirstOrDefault(x => x.Nome.Equals(nome));
            }


        public void Excluir(Academia academia)
        {
            contexto.Entry(academia).State = System.Data.Entity.EntityState.Deleted;
            contexto.SaveChanges();
        }

        internal Academia BuscarAcademiaPorID(Academia academia)
        {
            throw new NotImplementedException();
        }
        public static void Editar(Academia academia)
        {
            contexto.Entry(academia).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }
    }
}
