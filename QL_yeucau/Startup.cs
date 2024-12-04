using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(QL_yeucau.Startup))]
namespace QL_yeucau
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
