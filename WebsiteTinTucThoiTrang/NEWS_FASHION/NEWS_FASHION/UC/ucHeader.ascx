<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucHeader.ascx.cs" Inherits="NEWS_FASHION.ADMIN001.ucHeader" %>

<style type="text/css">
    .dn{
        font-size: 20px;
     
    }
    .txtSearch{
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
    
    </style>

<div class="wrapper col0">
  <div id="topline">
    <p>Tel: 0966 606 503 | Mail: nguyennhut013066@gmail.com</p>
      <ul>
         <div class="dn">
            <a href="../Dangnhap.aspx"  id="aDangNhap" runat="server">LOGIN</a>
           <asp:Label ID="lbTenDN" CssClass="tendangnhap" runat="server" Text="Tên đăng nhập"></asp:Label>
           <a> | </a>
           <a href="../Dangki.aspx"  id="aDangKi" runat="server" >Register</a>
            <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click"> LOG OUT</asp:LinkButton>
            <a href="#">
        </div>
    </ul>
    <br class="clear" />
  </div>
   
            
      
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="header">
    <div class="fl_left">
      <h1><a href="#"><strong>D</strong>ead <strong>S</strong>tock</a></h1>
      <p> Trang tin tức thời trang </p>
    </div>
   
    <br class="clear" />
   
  </div>
</div>

<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li class="active"><a href="../Default.aspx"  runat="server">TRANG CHỦ</a></li>
        <li><a href="style-demo.html">SNEAKER</a></li>
        <li><a href="full-width.html">THỜI TRANG</a></li>
        <li><a href="#">THƯ VIỆN</a>
          <ul>
            <li><a href="#">Link 1</a></li>
            <li><a href="#">Link 2</a></li>
            <li><a href="#">Link 3</a></li>
          </ul>
        </li>
        <li class="last"><a href="#"> FOLLOW US </a></li>
      </ul>
    </div>
    <div id="search">
      <form action="#" method="post">
        <fieldset>
          <legend>Site Search</legend>
          
            <asp:TextBox CssClass="txtTK" ID="txtTimKiem" runat="server"></asp:TextBox>
            <asp:Button CssClass="txtSearch" ID="go"  runat="server" Text="Search" OnClick="go_Click" />
        </fieldset>
      </form>
    </div>
    <br class="clear" />
  </div>
</div>