<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="OrderStatus.aspx.cs" Inherits="Foodie.Admin.OrderStatus" %>
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

     <div class="pcoded-inner-content pt-0">

        <div class="align-align-self-end">
            <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
        </div>

        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                </div>
                                <div class="card-block">
                                    <div class="row">

                                        <div class="col-sm-6 col-md-6 col-lg-6">
                                            <h4 class="sub-title">Sipariş Listesi</h4>
                                            <asp:Repeater ID="rOrderStatus" runat="server" OnItemCommand="rOrderStatus_ItemCommand">
                                                        <HeaderTemplate>
                                                            <table class="table data-table-export table-hover nowrap">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="table-plus">Sİpariş No</th>
                                                                        <th>Tarih</th>
                                                                        <th>Durum</th>
                                                                        <th>Ürün İsmi</th>
                                                                        <th>Toplam Ücret</th>
                                                                        <th>Ödeme Türü</th>
                                                                        <th class="datatable-nosort">Düzenle</th>
                                                                        <th class="datatable-nosort">Gönder</th>
                                                                    </tr>
                                                                </thead>
                                                            <tbody>
                                                            
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td class="table-plus"> <%# Eval("OrderNo") %> </td>
                                                                <td> <%# Eval("OrderDate") %> </td>
                                                                <td>
                                                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>' CssClass='<%# Eval("Status").ToString() == "Gönderildi" ? "badge badge-success" : "badge badge-warning" %>'></asp:Label>
                                                                </td>
                                                                <td> <%# Eval("Name") %> </td>
                                                                <td> <%# Eval("TotalPrice") %> </td>
                                                                <td> <%# Eval("PaymentMode") %> </td>
                                                                <td>
                                                                    <asp:LinkButton ID="lnkEdit" Text="Düzenle" runat="server" CssClass="badge badge-primary"
                                                                        CommandArgument='<%# Eval("OrderDetailsId") %>' CommandName="edit"><i class="ti-pencil"></i>
                                                                    </asp:LinkButton>
                                                                </td>
                                                                <td> <!--<a href="https://mail.google.com/" class="email-button">Gönder</a> -->
                                                                    <button type="button" class="btn btn-outline-info" ><a href="https://mail.google.com/">Gönder</a></button>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </tbody>
                                                            </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </div>

                                        
                                            </div>
                                        
                                        </div>

                                        <div class="col-sm-6 col-md-2 col-lg-2 mobile-inputs">
                                            <asp:Panel ID="pUpdateOrderStatus" runat="server">
                                                <h4 class="sub-title">Durumu Güncelle</h4>
                                            <div>
                                                <div class="form-group">
                                                    <label>Durum</label>
                                                    <div>
                                                        <asp:DropDownList ID="ddlOrderStatus" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">Durumu Seç</asp:ListItem>
                                                            <asp:ListItem>Beklemede</asp:ListItem>
                                                            <asp:ListItem>Sipariş Alındı</asp:ListItem>
                                                            <asp:ListItem>Gönderildi</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rfvDdlOrderStatus" runat="server" ForeColor="Red" ControlToValidate="ddlOrderStatus"
                                                            ErrorMessage="Sipraiş durumu gereklidir." SetFocusOnError="true" Display="Dynamic" InitialValue="0"></asp:RequiredFieldValidator>
                                                        <asp:HiddenField ID="hdnId" runat="server" Value="0"></asp:HiddenField>
                                                    </div>
                                                </div>

                                                <div class="pb-5">
                                                    <asp:Button ID="btnUpdate" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
                                                    &nbsp;
                                                    <asp:Button ID="btnCancel" runat="server" Text="Vazgeç" CssClass="btn btn-primary" OnClick="btnCancel_Click" />
                                                    <!-- <a href="https://mail.google.com/" class="btn btn-outline-info" >Gönder</a> -->
                                                    <button type="button" class="btn btn-outline-info" ><a href="https://mail.google.com/">Gönder</a></button>

                                                </div>

                                            </div>
                                            </asp:Panel>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
