using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProjetoFinal_MVC.Startup))]
namespace ProjetoFinal_MVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
