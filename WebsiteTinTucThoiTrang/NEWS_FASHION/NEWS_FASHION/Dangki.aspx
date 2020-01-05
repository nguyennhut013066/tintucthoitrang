﻿<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenNhut.Master" AutoEventWireup="true" CodeBehind="Dangki.aspx.cs" Inherits="NEWS_FASHION.Dangki" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Tinmoi" runat="server">
    
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <form action="#" name="dangki" method="post">
        <fieldset>
            <legend><b>Thông tin cá nhân</b></legend>
            <table style="width: 100%;" >
                <tr>
                    <td style="width: 90px">Họ và tên:</td>
                    <td><asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ForeColor="#FF3300">Không để trống</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 90px">Giới tính:</td>
                    <td><asp:RadioButtonList ID="rblGioitinh" runat="server" RepeatColumns="2">
                        <asp:ListItem Value="1">Nam</asp:ListItem>
                        <asp:ListItem Value="0">Nữ</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td style="width: 90px">Địa chỉ:</td>
                    <td><asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style="width: 90px">Điện thoại:</td>
                    <td><asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style="width: 90px">Email:</td>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ForeColor="#FF3300">Không để trống</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email phải đúng định dạng</asp:RegularExpressionValidator>
                     </td>
                </tr>
                 <tr>
                    <td style="width: 90px">Ngày sinh:</td>
                    <td>Ngày:<asp:DropDownList runat="server" ID="ddlNgaySinh">
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
            </table>
        </fieldset>
        <fieldset>
            <legend>
                <b>Thông tin đăng nhập</b>
            </legend>
            <table style="width: 100%;">
                <tr>
                    <td style="width: 90px">Tên đăng nhập:</td>
                    <td><asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTenDN" ForeColor="#FF3300">Không để trống</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 90px">Mật khẩu:</td>
                    <td><asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMatKhau" ForeColor="#FF3300">Không để trống</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 90px">Nhập lại mật khẩu:</td>
                    <td><asp:TextBox ID="txtNhapLaiMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNhapLaiMatKhau" ForeColor="#FF3300">Không để trống</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMatKhau" ControlToValidate="txtNhapLaiMatKhau" ErrorMessage="CompareValidator">Nhập lại mật khẩu không khớp</asp:CompareValidator>
                    </td>
                </tr>
            </table>
        </fieldset>
        <asp:Button ID="btDangKi" runat="server" Text="Đăng ký" OnClick="btDangKy_Click" />
        <p><asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label></p>
    </form>
        </div>
</asp:Content>
