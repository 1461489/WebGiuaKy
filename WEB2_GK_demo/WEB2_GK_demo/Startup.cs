using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WEB2_GK_demo.Startup))]
namespace WEB2_GK_demo
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
