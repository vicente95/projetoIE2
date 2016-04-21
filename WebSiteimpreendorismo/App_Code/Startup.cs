using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebSiteimpreendorismo.Startup))]
namespace WebSiteimpreendorismo
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
