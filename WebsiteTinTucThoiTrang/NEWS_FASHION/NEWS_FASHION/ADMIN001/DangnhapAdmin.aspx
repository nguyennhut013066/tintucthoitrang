<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN001/AmindMaster.Master" AutoEventWireup="true" CodeBehind="DangnhapAdmin.aspx.cs" Inherits="NEWS_FASHION.ADMIN001.DangnhapAdmin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Tinmoi" runat="server">
  <style type="text/css">
       
    
        #cot{
            width: 300px;
        }
        .nut{
            font-size:20px;
            border-top-left-radius:10px;
            border-top-right-radius:10px;
            border-bottom-left-radius:10px;
            border-bottom-right-radius:10px;
            width: 150px;
            height: 35px;
            background-color: darkslategray;
            color: white;
        }
        h1{
            font-size: 15px;
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
  <div>
            <fieldset>
                <table>
                    <tr>
                        <td colspan="3" align="center"><h1>Đăng nhập trước khi sử dụng các chức năng của Admin!</h1></td>
                    </tr>
                    <tr>
                        <td>Tên đăng nhập: </td>
                        <td id="cot"><asp:TextBox ID="txtTenDN" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tên đăng nhập trống" ControlToValidate="txtTenDN" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu: </td>
                        <td id="cot"><asp:TextBox ID="txtMatKhau" runat="server" Width="100%" TextMode="Password"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mật khẩu trống" ControlToValidate="txtMatKhau" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><asp:Button CssClass="nut" ID="btDangNhap" runat="server" Text="Đăng nhập" OnClick="btDangNhap_Click" /></td>                    </tr>
                    <tr>
                        <td colspan="3"><asp:Label runat="server" ID="lbThongbao" Font-Size="12px" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="3"><asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Font-Size="12px" /></td>
                    </tr>
                </table>
            </fieldset>
     </div>
       
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
