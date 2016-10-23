using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test_4___Ajax_with_ASP.NET
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TriggerAjax_Click(object sender, EventArgs e)
        {
            // Delay ajax calls by 2000 mili seconds to demo update progress image
            System.Threading.Thread.Sleep(2000);
            TimeLabel.Text = DateTime.Now.ToString();
        }

        protected void TriggerAjax2_Click(object sender, EventArgs e)
        {
            // Delay ajax calls by 2000 mili seconds to demo update progress image
            System.Threading.Thread.Sleep(2000);
            TimeLabel.Text = DateTime.Now.ToShortDateString();
        }
    }
}