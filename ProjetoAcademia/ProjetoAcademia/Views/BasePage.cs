using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjetoAcademia.Models;
using ProjetoAcademia.Controllers;

namespace ProjetoAcademia.Views
{
    public class BasePage : System.Web.UI.Page
    {
        protected BaseDeDadosContainer contexto = new BaseDeDadosContainer();
    }

}