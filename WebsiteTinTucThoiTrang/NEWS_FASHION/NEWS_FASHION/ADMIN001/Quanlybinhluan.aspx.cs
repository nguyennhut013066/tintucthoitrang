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
    public partial class Quanlynguoidung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("DangnhapAdmin.aspx");
            }
            if (!IsPostBack)
            {
                getTin();
            }
        }

        private void getTin()
        {
            gvTin.DataSource = XLDL.GetData("select MaYK,MaND,HoTenND,Ykien,NgayDang from YKIENND");
            gvTin.DataBind();
        }

        protected void gvTin_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int maYK = int.Parse(gvTin.Rows[chiso].Cells[0].Text);
                    XLDL.Execute("delete from YKIENND where MaYK=" + maYK);
                    Response.Redirect("Quanlybinhluan.aspx");
                }
                catch
                {
                    Response.Write("<script>alert('Xóa thất bại!!!')</script>");
                }
            }
        }

        protected void gvTin_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTin.PageIndex = e.NewPageIndex;
            getTin();
            gvTin.DataBind();
        }
    }
}