 <%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucADHeader.ascx.cs" Inherits="NEWS_FASHION.ADMIN001.ucADHeader" %>

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
    h3{
        font-family: Arial;
        font-size: 60px;
        color: red;
        text-align: center;
        font-style:oblique;
    }
    div#menu{
        float: right;
    }
    
    </style>

<div class="wrapper col0">
  <div id="topline">
    <p>Tel: 0966 606 503 | Mail: nguyennhut013066@gmail.com</p>
      <ul>
         <div class="dn">
          
               <a href="DangnhapAdmin.aspx" id="aDangNhap" runat="server">LOGIN</a>
        <asp:Label ID="lbTenDN" CssClass="tendangnhap" runat="server" Text="Tên đăng nhập"></asp:Label>
        <a> | </a>
        <a href="Dangki.aspx" runat="server" id="aDangKy">Register</a>
        <asp:LinkButton ID="lbDangXuat" runat="server" OnClick="lbDangXuat_Click">LOG OUT</asp:LinkButton>
           
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
        <li class="active"><a href="../ADMIN001/Admin.aspx"  runat="server">TRANG CHỦ</a></li>
        </ul>
    </div>
      
    
    <br class="clear" />
  </div>
    
    
</div>