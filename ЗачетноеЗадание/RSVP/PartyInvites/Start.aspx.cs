using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PartyInvites
{
    public partial class Start : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                
        }

        void btnShow_OnClick(object Source, EventArgs e)
        {
           ClientScript.RegisterStartupScript(this.GetType(), "window.open", "window.open('WebForm2.aspx')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //store string in session which will be accessed on next page  
            Session["BeforeMsg"] = "Code written Before page Redirecting";

            //Redirectig page  
            Response.Redirect("Reg.aspx", true);

            //store string in session which will be accessed on next page  
            Session["after"] = "code written after page Redirecting";

        }

    }
}