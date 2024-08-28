<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Invoince.aspx.cs" Inherits="Foodie.User.Invoince" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <h2>Sepetim</h2>
            </div>
        </div>

        <div class="container">
            <asp:Repeater ID="rOrderItem" runat="server">
                <HeaderTemplate>
                    <table class="table table-responsive-sm table-bordered table-hover" id="tblInvoince">
                        <thead class="bg-dark text-white">
                            <tr>
                                <th>Sr.No</th> 
                                <th>Sipariş No</th> 
                                <th>Ürün</th> 
                                <th>Fiyat</th> 
                                <th>Adet</th>
                                <th>Toplam Tutar</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td> <%# Eval("Srno") %> </td>
                        <td> <%# Eval("OrderNo") %> </td>
                        <td> <%# Eval("Name") %> </td>
                        <td> <%# string.IsNullOrEmpty(Eval("Price").ToString() ) ? "": "₺"+Eval("Price") %> </td>
                        <td> <%# Eval("Quantity") %> </td>
                        <td>₺<%# Eval("TotalPrice") %> </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <!--
            <div class="text-center">
                <asp:LinkButton ID="lbDownloadInvoince" runat="server" CssClass="btn btn-info" OnClick="lbDownloadInvoince_Click">
                    <i class="fa fa-file-pdf-o mr-2">İndir</i>
                </asp:LinkButton>
            </div>
            -->
        </div>

     </section>

</asp:Content>
