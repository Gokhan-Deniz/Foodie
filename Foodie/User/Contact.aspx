<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Foodie.User.Contact" %>
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

      <!-- book section -->
  <section class="book_section layout_padding">
    <div class="container">
      <div class="heading_container">
          <div class="align-self-end">
              <asp:Label ID="lblMsg" runat="server"></asp:Label>
          </div>
        <h2>Dilek/Şikayet</h2>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
              <div>
                  <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="İsim gereklidir" ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Adınız..."></asp:TextBox>
              </div>
              <div>
                 <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email gereklidir" ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email..." TextMode="Email"></asp:TextBox>
              </div>
              <div>
                 <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Konu gereklidir" ControlToValidate="txtSubject" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Konu..."></asp:TextBox>
              </div>
              <div>
                 <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Mesaj gereklidir" ControlToValidate="txtMessage" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" placeholder="İstek/Şikayet..."></asp:TextBox>
              </div>
              <div class="btn_box">
                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-warning rounded-pill pl-4 pr-4 text-white" OnClick="btnSubmit_Click" Text="Gönder" />
              </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="map_container ">
            <div id="googleMap"></div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end book section -->

</asp:Content>
