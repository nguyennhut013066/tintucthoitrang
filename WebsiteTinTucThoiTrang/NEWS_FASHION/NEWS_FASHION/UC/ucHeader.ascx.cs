using System;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NEWS_FASHION.ADMIN001
{
    public partial class ucHeader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] != null)
            {
                aDangNhap.Visible = false;
                aDangKi.Visible = false;
                lbTenDN.Visible = true;
                lbTenDN.Text = "Xin chào: " + Session["TenDN"].ToString();
                lbtDangXuat.Visible = true;

            }
            else
            {
                lbTenDN.Text = "";
                lbTenDN.Visible = false;
                lbtDangXuat.Visible = false;
                aDangNhap.Visible = true;
                aDangKi.Visible = true;
            }
        }
        protected void btdangnhap_Click(object sender, EventArgs e)
        {


        }


        protected void lbtDangXuat_Click(object sender, EventArgs e)
        {
            Session["TenDN"] = null;

            Response.Redirect("Default.aspx");
        }

        protected void go_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("~/TimKiem.aspx?TK=" + txtTimKiem.Text);
        }
    }
}