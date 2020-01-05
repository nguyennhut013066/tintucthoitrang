<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenNhut.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="NEWS_FASHION.DangNhap" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Tinmoi" runat="server">
    <style type="text/css">
     p{
         font-size: 20px;
         font-family: Arial;
     }
     .pw{
         margin: 40px 25px;

  width: 200px;

  display: block;

  border: none;

  padding: 10px 0;

  border-bottom: solid 1px #1abc9c;

  transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);

  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 96%, #1abc9c 4%);

  background-position: -200px 0;

  background-size: 200px 100%;

  background-repeat: no-repeat;

  color: #0e6252;
     }

     .button{
         border: none;

  background: #1abc9c;

  cursor: pointer;

  border-radius: 3px;

  padding: 6px;

  width: 200px;

  color: white;

  margin-left: 25px;

  box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.2);

     }
     .button:hover {

  transform: translateY(-3px);

  box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2);

}

</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
    <div class="dangnhap">
    <table>
    <tr>
      <td colspan="2" align="center" class="auto-style3"><p>ĐĂNG NHẬP</p></td>
    </tr>
    <tr>
      <td>Tên đăng nhập:</td>
      <td id="txtUserName">
        &nbsp;<asp:TextBox CssClass="un" ID="txtUserName" runat="server" Width="158px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Vui lòng nhập đầy đủ thông tin" ForeColor="Red">(*)</asp:RequiredFieldValidator>
      </td>
    </tr>
    <tr>
      <td>Mật Khẩu:</td>
      <td>
        &nbsp;<input type="password" CssClass="pw" ID="txtPassword" runat="server" required="required"></input>
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center">
          <asp:Button CssClass="button" ID="btdangnhap" runat="server" Text="Đăng Nhập" OnClick="btdangnhap_Click" />
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2" align="right">
        <a href="#"><i>Đổi mật khẩu</i></a>
      </td>
    </tr>
<asp:Label ID="LbLoi" runat="server" > </asp:Label>
  </table> 
        </div>
        </div>
</asp:Content>

