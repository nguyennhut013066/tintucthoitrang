using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NEWS_FASHION.ADMIN001
{
    public partial class ucTinmoi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tinmoi();
            Tinhot();
        }
        private void Tinmoi()
        {
            dtltinmoi.DataSource = XLDL.GetData(@"select Top 6 NewsID,TieuDe,HinhAnh,TomTat from TinTuc order by NgayDang desc");
            dtltinmoi.DataBind();
        }
        private void Tinhot()
        {
            dtltinhot.DataSource = XLDL.GetData(@"select Top 2 NewsID,TieuDe,HinhAnh,TomTat from TinTuc where ChuyenMucID=2 order by NgayDang desc");
            dtltinhot.DataBind();
        }
    }
}