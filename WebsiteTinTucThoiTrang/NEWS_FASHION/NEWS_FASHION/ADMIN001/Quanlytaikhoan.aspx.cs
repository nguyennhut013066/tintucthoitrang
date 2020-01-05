using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NEWS_FASHION.ADMIN001
{
    public partial class Quanlytaikhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("DangnhapAdmin.aspx");
            }
            if (!IsPostBack)
            {
                getND();
            }
        }

        private void getND()
        {
            gvND.DataSource = XLDL.GetData("select MaND,HoTenND,DienThoaiND,TenDN,MatKhau,NgaySinh,GioiTinh,Email from NguoiDung");
            gvND.DataBind();
        }

        protected void gvND_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int maND = int.Parse(gvND.Rows[chiso].Cells[0].Text);
                    XLDL.Execute("delete from NguoiDung where MaND=" + maND);
                    Response.Redirect("Quanlynguoidung.aspx");
                }
                catch
                {
                    Response.Write("<script>alert('Xóa thất bại!!!')</script>");
                }
            }
        }

        protected void gvND_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvND.PageIndex = e.NewPageIndex;
            getND();
            gvND.DataBind();
        }
    }
}