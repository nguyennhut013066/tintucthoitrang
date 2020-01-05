<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN001/AmindMaster.Master" AutoEventWireup="true" CodeBehind="Quanlytaikhoan.aspx.cs" Inherits="NEWS_FASHION.ADMIN001.Quanlytaikhoan" %>

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
            
            <asp:GridView CssClass="gv" ID="gvND" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaND" ForeColor="#333333" GridLines="None" OnRowCommand="gvND_RowCommand" AllowPaging="true" PageSize="10" OnPageIndexChanging="gvND_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaND" HeaderText="Mã ND" />
                    <asp:BoundField DataField="HoTenND" HeaderText="Họ Tên" />
                    <asp:BoundField DataField="DienThoaiND" HeaderText="Số điện thoại" />
                    <asp:BoundField DataField="TenDN" HeaderText="Tên đăng nhập" />
                    <asp:BoundField DataField="MatKhau" HeaderText="Mật khẩu" />
                    <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" />
                    <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/images/Delete.jpg" />

                    <asp:TemplateField HeaderText="Sửa">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/images/Edit.png" NavigateUrl='<%# "../Admin/SuaTaikhoan.aspx?Ma="+Eval("MaND") %>'>HyperLink</asp:HyperLink>
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
