<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Foodie.User.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container  ">

      <div class="row">
        <div class="col-md-6 ">
          <div class="img-box">
            <img src="../TemplateFiles/images/about-img.png" alt="">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                Foodie
              </h2>
            </div>
            <p>
                Türkiye’nin ilk online yemek sipariş reçetesi veren platformu olarak 2024 yılında kurulan Feane, zamanının en büyük
                internet değerlemesi ile 2024 yılında, sektörün en büyük oyuncularındandır.
                Bugün 81 il ve KKTC’de, binlerce çalışanı ve 100 bin iş ortağı ile 30 milyonu aşkın kullanıcısına hizmet 
                veren Feane, Türkiye’nin öncü hızlı ticaret markası olarak faaliyetlerini sürdürüyor.
            </p>
            <a href="https://www.mcdonalds.com.tr/">
              Daha Fazla
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

</asp:Content>
