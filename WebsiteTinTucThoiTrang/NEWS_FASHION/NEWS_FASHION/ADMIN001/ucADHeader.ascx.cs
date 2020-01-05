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
    public partial class ucADHeader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] != null)
            {
                aDangNhap.Visible = false;
                aDangKy.Visible = false;
                lbTenDN.Text = "Xin chào: " + Session["TenDN"].ToString();
                //Response.Redirect("DangnhapAdmin.aspx");
            }
            else
            {
                lbDangXuat.Visible = false;
                lbTenDN.Visible = false;
            }
        }

        protected void lbDangXuat_Click(object sender, EventArgs e)
        {
            Session["TenDN"] = null;
            Response.Redirect("DangnhapAdmin.aspx");
        }
    }
}