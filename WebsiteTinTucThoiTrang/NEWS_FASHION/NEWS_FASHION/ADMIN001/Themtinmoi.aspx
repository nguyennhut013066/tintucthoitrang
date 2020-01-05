<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN001/AmindMaster.Master" AutoEventWireup="true" CodeBehind="Themtinmoi.aspx.cs" Inherits="NEWS_FASHION.ADMIN001.Themtinmoi" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Tinmoi" runat="server">
    <script src="../ckeditor/ckeditor.js"></script>
     <style type="text/css">
     

     .luu{
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
     .luu:hover {

  transform: translateY(-3px);

  box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2);

}

</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="TSM">
        <fieldset>
            <h1>THÊM TIN MỚI</h1>
            <table>
                <tr>
                    <td class="cot1">Tiêu đề tin:</td>
                    <td class="cot2"><asp:TextBox ID="txtTenSach" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                   <td class="cot1">Mô tả:</td>
                    <td class="cot2">
                         <textarea id="Textarea1" class="ckeditor" runat="server" ></textarea> 
                   
                    </td>
                </tr>
                <tr>
                    <td class="cot1">Nội dung:</td>
                    <td class="cot2">
                         <textarea id="txtMoTa" class="ckeditor" runat="server" ></textarea> 
                   
                    </td>
                </tr>
                <tr>
                    <td class="cot1">Hình minh họa:</td>
                    <td class="cot2"><asp:FileUpload ID="fileHinh" runat="server" /></td>
                </tr>
                <tr>
                    <td class="cot1">Chuyên mục tin:</td>
                    <td class="cot2"><asp:DropDownList ID="ddlMaChuDe" runat="server"></asp:DropDownList></td>
                </tr>
             
                <tr>
                    <td style="width: 90px">Ngày đăng:</td>
                    <td>Ngày:<asp:DropDownList runat="server" ID="ddlNgayDang">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>Tháng<asp:DropDownList runat="server" ID="ddlThangSinh">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>Năm<asp:TextBox runat="server" ID="txtNamSinh"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNamSinh" ForeColor="#FF3300">Không để trống</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtNamSinh" ErrorMessage="RangeValidator" MaximumValue="2500" MinimumValue="1900">1900-2500</asp:RangeValidator>
                     </td>
                </tr>
               
                <tr>
                    <td></td>
                    <td><asp:Button CssClass="luu" ID="btLuu" runat="server" Text="Lưu"  /></td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
