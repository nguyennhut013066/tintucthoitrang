<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTinmoi.ascx.cs" Inherits="NEWS_FASHION.ADMIN001.ucTinmoi" %>

 <style type="text/css">
     .image2{
         height:100px;
         width:140px;
     }
     p{
         font-family: Arial;
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
      
    <asp:DataList ID="dtltinmoi" runat="server" RepeatColumns="2">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td colspan="2">
                           <p><asp:HyperLink ID="HyperLink1" ForeColor="Blue" runat="server" Text='<%# Eval("TieuDe") %>'></asp:HyperLink></p> 

                        </td>
                    </tr>
                    <tr>
                        <td><asp:Image CssClass="image2"  runat="server" ImageUrl='<%# "../images/Hinhtintuc/" +Eval("HinhAnh") %>' /></td>
                        <td><p><asp:Label ID="Label1" runat="server" Text='<%# Eval("TomTat") %>'></asp:Label></p></td>
                    </tr>
                    <tr>
                        <td colspan="2" ><asp:HyperLink CssClass="xemthem" ID="HyperLink2" runat="server" NavigateUrl='<%# "../Chitiettin.aspx?NewsID="+ Eval("NewsID") %>' Text='<%# "Xem thêm" %>'></asp:HyperLink></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div class="container">
    <div class="content">
      <div id="hpage_latest">
        <h2> TIN TỨC HOT </h2>
        <ul>
            <asp:DataList ID="dtltinhot" runat="server" RepeatColumns="2" >
                <ItemTemplate>
                    <table style="width:100%;">
                    <tr>
                        <td colspan="2">
                           <p><asp:HyperLink ID="HyperLink3" ForeColor="Blue" runat="server" Text='<%# Eval("TieuDe") %>'></asp:HyperLink></p> 

                        </td>
                    </tr>
                    <tr>
                        <td><asp:Image CssClass="image2"  runat="server" ImageUrl='<%# "../images/Hinhtintuc/" +Eval("HinhAnh") %>' /></td>
                        <td><p><asp:Label ID="Label1" runat="server" Text='<%# Eval("TomTat") %>'></asp:Label></p></td>
                    </tr>
                    <tr>
                        <td colspan="2" ><asp:HyperLink CssClass="xemthem" ID="HyperLink4" runat="server" NavigateUrl='<%# "../Chitiettin.aspx?NewsID="+ Eval("NewsID") %>' Text='<%# "Xem thêm" %>'></asp:HyperLink></td>
                    </tr>
                </table>
                </ItemTemplate>
            </asp:DataList>
        </ul>
        <br class="clear" />
      </div>
    </div>
    <div class="column">
      <div class="holder">
          <img src="../images/Hinhtintuc/QC_pepsi2.jpg" />
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
<!-- ####################################################################################################### -->