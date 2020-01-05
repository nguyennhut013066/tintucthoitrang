using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NEWS_FASHION
{
    public partial class TimKiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SP();
            }
            string tk = Request.QueryString["TK"];
            lbTenMG.Text = tk;
        }

        private void SP()
        {
            string tk = Request.QueryString["TK"];
            dtSP.DataSource = XLDL.GetData("select NewsID,TieuDe,HinhAnh from TinTuc where TuKhoa like '%" + tk + "%'");
            dtSP.DataBind();
        }
    }
}