using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hastane
{

    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string mesaj = "var result = confirm('Mesajınızı gönderilecek onaylıyor musunuz?');" +
                   "if (result) {" +
                   "   alert('Mesajınız gönderildi');" +
                   "   document.getElementById('" + TextBox1.ClientID + "').value = '';" +
                   "   document.getElementById('" + TextBox2.ClientID + "').value = '';" +
                   "   document.getElementById('" + TextBox3.ClientID + "').value = '';" +
                   "   document.getElementById('" + TextBox4.ClientID + "').value = '';" +
                   "}";
                mesaj += "else {" +
                   "   alert('İptal edildi');" +
                   "}";

                ScriptManager.RegisterStartupScript(this, GetType(), "onayla", mesaj, true);
            }

        }
    }
}