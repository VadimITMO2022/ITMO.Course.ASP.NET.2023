using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using static System.Net.Mime.MediaTypeNames;
using System.Security.Cryptography;

namespace PartyInvites {
    public partial class Summary : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected string GetNoShowHtml() 
        {
            double i = 0;
            double b1 = 0;
            double b2 = 0;
            double b3 = 0;

            StringBuilder html = new StringBuilder();
            var noData = ResponseRepository.GetRepository()
                .GetAllResponses().Where(r => !r.WillAttend.Value);
            foreach (var rsvp in noData) 
            {
                double d1 = (Convert.ToDouble(rsvp.GradeMath) + Convert.ToDouble(rsvp.GradePhys)
                       + Convert.ToDouble(rsvp.GradeProg)) / (double)3;

                double d = Math.Round(d1, 2);
                string str = Convert.ToString(d);

                i = i + Convert.ToDouble(1); 
                b1 = b1 + Convert.ToDouble(rsvp.GradeMath);
                b2 = b2 + Convert.ToDouble(rsvp.GradePhys);
                b3 = b3 + Convert.ToDouble(rsvp.GradeProg);

                html.Append(String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td></tr>",
                    rsvp.FirstName, rsvp.LastName, rsvp.GradeMath, rsvp.GradePhys, rsvp.GradeProg,str));
            }

            double bb1 = Math.Round(b1 / i, 2);
            double bb2 = Math.Round(b2 / i, 2);
            double bb3 = Math.Round(b3 / i, 2);

            string sb1 = Convert.ToString(bb1);
            string sb2 = Convert.ToString(bb2);
            string sb3 = Convert.ToString(bb3);

            html.Append(String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td></tr>", "|", "", "", "", "", ""));
            html.Append(String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td></tr>", "Средняя оценка по предмету", "", sb1, sb2, sb3, ""));


            return html.ToString();
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