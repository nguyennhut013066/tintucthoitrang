using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NEWS_FASHION
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btdangnhap_Click(object sender, EventArgs e)
        {
            DataTable dt = XLDL.GetData("select TenDN, MatKhau,HoTenND,maND from NguoiDung where TenDN='" + txtUserName.Text + "' and MatKhau='" + txtPassword.Value + "'");
            if (dt.Rows.Count > 0)
            {
                Session["TenDN"] = txtUserName.Text;
                Session["MaND"] = dt.Rows[0][3].ToString();
                Response.Redirect("~/Default.aspx");
            }
            else
                LbLoi.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
            {
                // Response.Write("<script>arlert('Đăng Nhập Thất Bại')</script>");
                LbLoi.Text = "Đăng nhập thất bại.";
            }
        }
    }
}