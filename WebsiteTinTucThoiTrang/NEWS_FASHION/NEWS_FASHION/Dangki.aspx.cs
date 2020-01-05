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
    public partial class Dangki : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDangKy_Click(object sender, EventArgs e)
        {

            string strl = @"select * from NguoiDung where TenDN = '" + txtTenDN.Text + "' ";
            if (XLDL.GetData(strl).Rows.Count > 0)
            {
                lbThongBaoLoi.Text = "Tên đăng nhập đã tồn tại.";
                txtTenDN.Focus();
            }
            else
            {
                SqlConnection con = new SqlConnection(XLDL.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"insert into NguoiDung (HoTenND,DiaChiND,DienThoaiND,TenDN,MatKhau,NgaySinh,GioiTinh,Email)
                    values(@HoTenND,@DiaChiND,@DienThoaiND,@TenDN,@MatKhau,@NgaySinh,@GioiTinh,@Email)";
                cmd.Parameters.Add("@HoTenND", SqlDbType.NVarChar, 50);
                cmd.Parameters["@HoTenND"].Value = txtHoTen.Text;
                cmd.Parameters.Add("@DiaChiND", SqlDbType.NVarChar, 50);
                cmd.Parameters["@DiaChiND"].Value = txtDiaChi.Text;
                cmd.Parameters.Add("@DienThoaiND", SqlDbType.VarChar, 10);
                cmd.Parameters["@DienThoaiND"].Value = txtDienThoai.Text;
                cmd.Parameters.Add("@TenDN", SqlDbType.VarChar, 15);
                cmd.Parameters["@TenDN"].Value = txtTenDN.Text;
                cmd.Parameters.Add("@MatKhau", SqlDbType.VarChar, 15);
                cmd.Parameters["@MatKhau"].Value = txtMatKhau.Text;
                cmd.Parameters.Add("@NgaySinh", SqlDbType.SmallDateTime);
                cmd.Parameters["@NgaySinh"].Value = DateTime.Parse(ddlThangSinh.Text + "/" + ddlNgaySinh.Text + "/" + txtNamSinh.Text);
                cmd.Parameters.Add("@GioiTinh", SqlDbType.Bit);
                cmd.Parameters["@GioiTinh"].Value = Convert.ToInt16(rblGioitinh.SelectedItem.Value);
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50);
                cmd.Parameters["@Email"].Value = txtEmail.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/DangNhap.aspx");

            }
        }
    }
}