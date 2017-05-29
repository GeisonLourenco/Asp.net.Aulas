using Aula24._05_EF_MF.Controllers;
using Aula24._05_EF_MF.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula24._05_EF_MF.Views.Categorias
{
    public partial class Lista : BasePage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            CategoriasController ctrl = new CategoriasController();
            List<Categoria> lista = ctrl.Listar();

            gvCategorias.DataSource = lista.OrderBy(c => c.Nome);
            gvCategorias.DataBind();

            gvCategoriasExcluidas.DataSource = ctrl.ListarInativos();
            gvCategoriasExcluidas.DataBind();
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Categoria categoria = new Categoria();
            categoria.Nome = txtNome.Text;
            categoria.Descricao = txtDescricao.Text;
            categoria.Ativo = true;
     
            CategoriasController ctrl = new CategoriasController();
            ctrl.Adicionar(categoria);
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            txtDescricao.Text = string.Empty;
        }
    }
}