using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Aula10._05.Startup))]
namespace Aula10._05
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
