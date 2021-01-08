using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(School_Website.Startup))]
namespace School_Website
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
