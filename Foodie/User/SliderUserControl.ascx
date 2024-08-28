<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SliderUserControl.ascx.cs" Inherits="Foodie.User.SliderUserControl" %>


<section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Hızlı Tarif Merkezi
                    </h1>
                    <p>
                      Yemek yapacaksınız ancak ne koyacağınızı mı unuttunuz? Hemen bizden reçeteyi alarak akşama yetiştirebilirsiniz.
                    </p>
                    <div class="btn-box">
                      <a href="Menu.aspx" class="btn1">
                        Şimdi Al
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Ne Yapacağınıza Karar mı Veremediniz?
                    </h1>
                    <p>
                      Ne yapacağınıza karar veremediyseniz menülerimizden size en cazip gelen reçetimizi alın ve ne yemeği yapsam diye düşünmeyin.
                    </p>
                    <div class="btn-box">
                      <a href="Menu.aspx" class="btn1">
                        Şimdi Karar Ver
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Foodie
                    </h1>
                    <p>
                      Tüm yemek çeşitleriyle her zaman bizi burada bulabilirsiniz. 7/24 sizlerleyiz.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <ol class="carousel-indicators">
            <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
            <li data-target="#customCarousel1" data-slide-to="1"></li>
            <li data-target="#customCarousel1" data-slide-to="2"></li>
          </ol>
        </div>
      </div>

    </section>