<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenNhut.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="NEWS_FASHION.TimKiem" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Tinmoi" runat="server">
    <style type="text/css">
        h1{
           
            color: red;
      
        }
        .khoangcach{
            margin-top:10px;
            margin-left:50px;
        }
        .hinhminhhoa{
           height:100px;
         width:140px;
        }
        .tenSP{
            color:blue;
            font-weight:bold;
            font-size:20px;
        }
        .tenSP:hover{
            color:yellow;
        }
        .nutTVG{
            height:30px;
            width:auto;
            font-weight: 900;
            color:snow;
            border-color:snow;
            background-color:black;
        }
        .nutTVG:hover{
            color:yellow;
            border-color:yellow;
        }
        .dongia{
            font-size: 15px;
            color: crimson;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="hpage_cats">
    
        <h1>T&#7914; KHÓA: <asp:Label ID="lbTenMG" runat="server"></asp:Label></h1>
        <asp:DataList ID="dtSP" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <fieldset  class="khoangcach">
                    <table style="width: 100%; text-align:center;">
                        <tr>
                            <td><asp:HyperLink CssClass="tenSP" ID="HyperLink1" runat="server" Text='<%# Eval("TieuDe") %>' NavigateUrl='<%# "Chitiettin.aspx?NewsID="+Eval("NewsID") %>'></asp:HyperLink></td>
                        </tr>
                      
                        <tr>
                            <td><asp:Image CssClass="hinhminhhoa" ID="Image1" runat="server" ImageUrl='<%# "../Images/Hinhtintuc/"+Eval("HinhAnh") %>' /></td>
                        </tr>
                       
                    </table>
                </fieldset>
            </ItemTemplate>
        </asp:DataList>
    
         </div>
</asp:Content>

