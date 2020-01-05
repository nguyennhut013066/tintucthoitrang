<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN001/AmindMaster.Master" AutoEventWireup="true" CodeBehind="Quanlybinhluan.aspx.cs" Inherits="NEWS_FASHION.ADMIN001.Quanlynguoidung" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Tinmoi" runat="server">
      <style type="text/css">
    div#mid{
            
        }
       div#mid>fieldset{
           border: outset;
           border-color: black;
           width: 850px;
           margin: 25px 25px 50px 50px;
       }
       div#mid>fieldset>h1{
           text-align: center;
           font-size:20px;
           font-weight:bold;
       }
       .link{
           font-size: 15px;
           font-weight: bold;
           margin-left: 40px;
           text-decoration: underline;
       }
       .gv{
           margin: 3px 25px 20px;
           width: 800px;
       }
          </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mid">
        <fieldset>
            <h1>DANH SÁCH</h1>
            
            <asp:GridView CssClass="gv" ID="gvTin" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaYK" ForeColor="#333333" GridLines="None" OnRowCommand="gvTin_RowCommand" AllowPaging="true" PageSize="10" OnPageIndexChanging="gvTin_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaYK" HeaderText="Mã YK" />
                    <asp:BoundField DataField="MaND" HeaderText="Mã ND" />
                    <asp:BoundField DataField="HoTenND" HeaderText="Họ Tên" />
                    <asp:BoundField DataField="Ykien" HeaderText="Bình luận" />
                    <asp:BoundField DataField="NgayDang" HeaderText="Ngày đăng" />
                    <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/images/Delete.jpg" />

                    <asp:TemplateField HeaderText="Sửa">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/images/Edit.png" NavigateUrl='<%# "../Admin/SuaTin.aspx?Ma="+Eval("MaYK") %>'>HyperLink</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Trạng thái">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" Text="Phe Duyet" />
                             <a> | </a>
                            <asp:Button ID="Button2" runat="server" Text="Tu Choi" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" BorderStyle="Inset" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:Label ID="lbThongBaoLoi" runat="server" Font-Size="15px" ForeColor="Red"></asp:Label>
        </fieldset>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
