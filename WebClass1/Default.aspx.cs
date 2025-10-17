using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClass1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clientDetailView.DataBind();
        }

        protected void accountTB_TextChanged(object sender, EventArgs e)
        {

        }

        protected void loginBT_Click(object sender, EventArgs e)
        {
            clientDetailView.Visible=false;
            entry.Visible=false;
            if (1 == clientDetailView.DataItemCount) 
            {
                Session["name"] = clientDetailView.Rows[0].Cells[0].Text;
                Session["money"] = clientDetailView.Rows[1].Cells[0].Text;
                entry.Visible=true;
            }
            else
            {
                Session["name"] = null;
                Session["money"] = null;
                clientDetailView.Visible = true;
            }
        }
    }
}