﻿using System;
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
    public partial class DangnhapAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDangNhap_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                dt = XLDL.GetData("select * from Admin where TenDNAdmin = '" + txtTenDN.Text + "' and MatkhauAdmin = '" + txtMatKhau.Text + "' ");
                if (dt.Rows.Count > 0)
                {
                    Session["TenDN"] = txtTenDN.Text;
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    lbThongbao.Text = "Tên đăng nhập hoặc mật khẩu không đúng!";
                }
            }
            catch
            {
                lbThongbao.Text = "Đăng nhập thất bại!";
            }
        }
    }
}