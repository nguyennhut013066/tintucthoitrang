using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NEWS_FASHION
{
    public partial class Chitiettin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Getchitiettin();
                GetYkien();
            }

        }

        private void Getchitiettin()
        {
            string NewsID = Request.QueryString["NewsID"];
            dtlchitiettin.DataSource = XLDL.GetData(@"select NewsID,TieuDe,HinhAnh,TomTat,NoiDung from TinTuc where NewsID =  ' " + NewsID + " ' ");
            dtlchitiettin.DataBind();
        }
        private void GetYkien()
        {
            string MaYK = Request.QueryString["MaYK"];
            dtlYkien.DataSource = XLDL.GetData("select HoTenND, Ykien, NgayDang from YKIENND");
            dtlYkien.DataBind();
        }

        protected void btGui_Click(object sender, EventArgs e)
        {
            string ten = Session["TenDN"].ToString();
            string maND = Session["MaND"].ToString();
            string day = DateTime.Now.Day.ToString();
            string month = DateTime.Now.Month.ToString();
            string year = DateTime.Now.Year.ToString();
            try
            {

                SqlConnection con = new SqlConnection(XLDL.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"insert into YKIENND(MaND,HoTenND,YKIEN,NgayDang) values(@MaND,@HoTenND,@YKIEN,@NgayDang)";
                cmd.Parameters.Add("@MaND", SqlDbType.Int);
                cmd.Parameters["@MaND"].Value = maND;
                cmd.Parameters.Add("@HoTenND", SqlDbType.NVarChar, 50);
                cmd.Parameters["@HoTenND"].Value = ten;
                cmd.Parameters.Add("@YKien", SqlDbType.NVarChar, 50);
                cmd.Parameters["@YKien"].Value = txtBL.Text;
                cmd.Parameters.Add("@NgayDang", SqlDbType.NVarChar, 50);
                cmd.Parameters["@NgayDang"].Value = day + "/" + month + "/" + year;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Bình luận thành công! Cảm ơn bạn đã đóng góp cho trang.')</script>");
            }
            catch
            {
                Response.Write("<script>alert('Bình luận thất bài!')</script>");
            }
        }
    }
}