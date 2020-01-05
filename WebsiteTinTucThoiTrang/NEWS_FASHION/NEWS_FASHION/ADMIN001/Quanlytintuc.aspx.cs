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
    public partial class Quanlytintuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("DangnhapAdmin.aspx");
            }
            if (!IsPostBack)
            {
                getTinTuc();
            }
        }

        private void getTinTuc()
        {
            gvTinTuc.DataSource = XLDL.GetData("select NewsID,TieuDe,TomTat,NoiDung,NgayDang from TinTuc");
            gvTinTuc.DataBind();
        }

        protected void gvTinTuc_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int maTin = int.Parse(gvTinTuc.Rows[chiso].Cells[0].Text);
                    XLDL.Execute("delete from TinTuc where NewsID=" + maTin);
                    Response.Redirect("Quanlybinhluan.aspx");
                }
                catch
                {
                    Response.Write("<script>alert('Xóa thất bại!!!')</script>");
                }
            }
        }

        protected void gvTinTuc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTinTuc.PageIndex = e.NewPageIndex;
            getTinTuc();
            gvTinTuc.DataBind();
        }
    }
}