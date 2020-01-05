<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucADMenu.ascx.cs" Inherits="NEWS_FASHION.ADMIN001.ucADMenu" %>
 <style type="text/css">
     
     .menu{
         font-family: Arial;
         color: blue;
         font-size: 20px;
     }
     a{
            color:blue;
            font-weight:bold;
            font-size:20px;
        }
        a:hover{
            color:yellow;
        }
 </style>
<div class="wrapper">
  <div class="container">
    <div class="content">         
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">

  <div id="hpage_cats">
      <h1><b> TRANG CHỨC NĂNG ADMIN</b> </h1>
      
              <table style="width: 50%;" class="menu">
                  <tr>
                      <td>
                           <li><a href="../ADMIN001/Quanlytintuc.aspx"  runat="server"> QUẢN LÝ TIN TỨC</a></li> 
                      </td>                     
                  </tr>
                  <tr>                 
                      <td>
                          <li><a href="../ADMIN001/Quanlybinhluan.aspx"  runat="server"> QUẢN LÝ BÌNH LUẬN</a></li> 
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <li> <a href="../ADMIN001/Quanlytaikhoan.aspx"  runat="server"> QUẢN LÝ TÀI KHOẢN NGƯỜI DÙNG</a></li> 
                      </td>
                  </tr>
              </table>
         
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div class="container">
    <div class="content">
      <div id="hpage_latest">
        
        <br class="clear" />
      </div>
    </div>
    <div class="column">
      <div class="holder">
         
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="footer">
      <div class="footbox last">
    </div>
    <br class="clear" />
  </div>
</div>