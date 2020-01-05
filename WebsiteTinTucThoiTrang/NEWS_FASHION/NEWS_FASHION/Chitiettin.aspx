<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenNhut.Master" AutoEventWireup="true" CodeBehind="Chitiettin.aspx.cs" Inherits="NEWS_FASHION.Chitiettin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Tinmoi" runat="server">
    <style type="text/css">
  

     .nutgui{
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
     .nutgui:hover {

  transform: translateY(-3px);

  box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2);

}
     h3{
         font-size: 20px;
         color: red;
     }
     h6{
         font-family: Arial;
         font-size: 20px;
     }
     h1{
         font-size: 40px;
         font-family:Arial;
         color: blue;
     }

</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="ckeditor/ckeditor.js"></script>
   
        <asp:DataList ID="dtlchitiettin" runat="server">
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td colspan="2">
                            <h1><asp:Label ID="Label1" runat="server" Text='<%# Eval("TieuDe") %>' ></asp:Label></h1>
                        </td>
                        
                    </tr>
                    <tr>
                        
                        <td colspan="2"> 
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../Images/Hinhtintuc/"+Eval("HinhAnh") %>' />
                        </td>
                    
                    </tr>
                    <tr>
                        
                        
                        <td>
                            <h6><asp:Label ID="Label2" runat="server" Text='<%# Eval("TomTat") %>'></asp:Label></h6>
                        </td>
                    </tr>
                    <tr>                         
                        <td>
                            <h6><asp:Label ID="Label3" runat="server" Text='<%# Eval("NoiDung") %>'></asp:Label></h6>
                        </td>
                    </tr>
                    
                </table>
            </ItemTemplate>
        </asp:DataList>
    <h1> Các bình luận: </h1>
     <asp:DataList ID="dtlYkien" runat="server">
         <ItemTemplate>
        <table style="width: 100%;">
            <tr>
                <td>
                   <h3> <asp:Label ID="Label4" runat="server" Text='<%# Eval("HoTenND") %>'></asp:Label></h3>
                </td>
                <td>
                   <b> <asp:Label ID="Label5" runat="server" Text='<%# Eval("Ykien") %>'></asp:Label></b>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("NgayDang") %>'></asp:Label>
                </td>
            </tr>
           
        </table>
             </ItemTemplate>
    </asp:DataList>
    -------------------------------------------------------------------------------

    <h1> Bình luận của bạn về tin: </h1>
    <div class="BL">
       
        <asp:TextBox ID="txtBL" runat="server" Width="610px" Height="200px" Text="Hãy nhập bình luận của bạn!" TextMode="MultiLine"></asp:TextBox>
        <br><h2><asp:Button CssClass="nutgui" ID="btGui" runat="server" Text="Gửi" OnClick="btGui_Click"  /><asp:Button CssClass="nutgui" ID="btRS" runat="server" Text="Reset" /></h2>
    </div>
</asp:Content>

