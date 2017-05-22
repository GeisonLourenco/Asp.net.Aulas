using Aula22._05.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula22._05.Views.Categoria
{
    public partial class ListaCategorias : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Contexto (referencia para o banco)
            strLoja1Entities contexto = new strLoja1Entities();

            gvwCategorias.DataSource = contexto.Categorias.ToList();
            gvwCategorias.DataBind();
        }

    }
}