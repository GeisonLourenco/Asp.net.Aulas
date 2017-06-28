using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Owin;
using ProjetoFinal_MVC.Models;

[assembly: OwinStartupAttribute(typeof(ProjetoFinal_MVC.Startup))]
namespace ProjetoFinal_MVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            createRolesandUsers();
        }
        // In Startup iam creating first Administrador Role and creating a default Administrador User    
        private void createRolesandUsers()
        {
            ApplicationDbContext context = new ApplicationDbContext();

            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            var UserManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));


            // In Startup iam creating first Administrador Role and creating a default Administrador User    
            /*if (!roleManager.RoleExists("Admin"))
            {

                // first we create Administrador rool   
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "Admin";
                roleManager.Create(role);

                //Here we create a Administrador super user who will maintain the website                  

                var user = new ApplicationUser();
                user.UserName = "Geison";
                user.Email = "geison.lourenco89@gmail.com";

                string userPWD = "123gG#";

                var chkUser = UserManager.Create(user, userPWD);

                //Add default User to Role Administrador   
                if (chkUser.Succeeded)
                {
                    var result1 = UserManager.AddToRole(user.Id, "Admin");
                }
            }*/
        }
    }
}
