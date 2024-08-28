<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Foodie.User.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        .rounded{
            border-radius: 1rem
        }

        .nav-pills .nav-link{
            color: #555
        }

            .nav-pills .nav-link.active{
                color: white
            }

        .bold{
            font-weight: bold
        }

        .card{
            padding: 40px 50px;
            border-radius: 20px;
            border: none;
            box-shadow: 1px 5px 10px 1px rgba(0, 0, 0, 0.2)
        }

    </style>

    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%= lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>

    <script type="text/javascript">
        function DisplayBackButton(){
        window.history.forward()
        }
        DisplayBackButton();
        window.onload = DisplayBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisplayBackButton() }
        window.onunload = function () {void(0) }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book_section" style="background-image: url('../Images/payment.png'); width=100%; height=100%; background-repeat:no-repeat; background-size:auto; background-attachment:fixed; background-position:left;">

        <div class="container py-5">
            <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
              </div>
    <!-- For demo purpose -->
    <div class="row mb-4">
        <div class="col-lg-8 mx-auto text-center">
            <h1 class="display-6">Satın Alma</h1>
        </div>
    </div> <!-- End -->
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                        <!-- Credit card form tabs -->
                        <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                            <li class="nav-item"> <a data-toggle="pill" href="#credit-card" class="nav-link active "> <i class="fa fa-credit-card mr-2"></i> Credit Card </a> </li>
                            <!--<li class="nav-item"> <a data-toggle="pill" href="#paypal" class="nav-link "> <i class="fab fa-paypal mr-2"></i> Paypal </a> </li>-->
                        </ul>
                    </div> <!-- End -->
                    <!-- Credit card form content -->
                    <div class="tab-content">
                        <!-- credit card info-->
                        <div id="credit-card" class="tab-pane fade show active pt-3">
                            <form role="form">
                                <div class="form-group"> 
                                    <label for="txtName">
                                        <h6>Kart Sahibi</h6>
                                    </label> 
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Kart Sahibinin ismi"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="İsim gereklidir" ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationGroup="card">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="İsim karakterden oluşmalıdır" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="txtName" ValidationGroup="card">*</asp:RegularExpressionValidator>
                                </div>

                                <div class="form-group">
                                    <label for="txtCardNo">
                                        <h6>Kart no</h6>
                                    </label>
                                    <asp:RequiredFieldValidator ID="rfvCardNo" runat="server" ErrorMessage="KART no gereklidir" ControlToValidate="txtCardNo" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationGroup="card">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="KART no 16 rakamdan oluşmalıdır" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{16}" ControlToValidate="txtCardNo" ValidationGroup="card">*</asp:RegularExpressionValidator>
                                   
                                    <div class="input-group">
                                        <asp:TextBox ID="txtCardNo" runat="server" CssClass="form-control" placeholder="KART No......." txtMode="Number"></asp:TextBox>
                                        <div class="input-group-append">
                                            <span class="input-group-text text-muted">
                                                <i class="fa fa-cc-visa mx-1"></i>
                                                <i class="fa fa-cc-mastercard mx-1"></i>
                                                <i class="fa fa-cc-amex mr-1"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="form-group"> 
                                            <label>
                                                <span class="hidden-xs">
                                                    <h6>SKT</h6>
                                                </span>
                                            </label>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtExpMonth" runat="server" CssClass="form-control" placeholder="AA" textMode="Number"></asp:TextBox>
                                                <asp:TextBox ID="txtExpYear" runat="server" CssClass="form-control" placeholder="YY" textMode="Number"></asp:TextBox>
                                            </div>
                                            <asp:RequiredFieldValidator ID="rfvExpMonth" runat="server" ErrorMessage="SKT ayı gereklidir" ControlToValidate="txtExpMonth" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationGroup="card">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="2 rakamdan oluşmalıdır" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{2}" ControlToValidate="txtExpMonth" ValidationGroup="card">*</asp:RegularExpressionValidator>
                                            <asp:RequiredFieldValidator ID="rfvExpYear" runat="server" ErrorMessage="SKT yılı gereklidir" ControlToValidate="txtExpYear" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationGroup="card">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" Display="Dynamic" ErrorMessage="4 rakamdan oluşmalıdır" ForeColor="Red" SetFocusOnError="true" ValidationExpression="^[0-9]{4}" ControlToValidate="txtExpYear" ValidationGroup="card">*</asp:RegularExpressionValidator>
                                            
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="form-group mb-4">
                                            <label data-toggle="tooltip" title="Kartınızın arkasındaki 3 haneli CVV kodunuz">
                                                <h6>CVV<i class="fa fa-question-circle d-inline"></i></h6>
                                            </label> 
                                            <asp:TextBox ID="txtCvv" runat="server" CssClass="form-control" placeholder="Cvv No" textMode="Number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvCvv" runat="server" ErrorMessage="CVV no gereklidir" ControlToValidate="txtCvv" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationGroup="card">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="3 rakamdan oluşmalıdır" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{3}" ControlToValidate="txtCvv" ValidationGroup="card">*</asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                </div>

                                <div class="form-group">
                                    <label for="txtAddress">
                                        <h6>E_mail</h6>
                                    </label>
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="E_mail adresiniz"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvmail" runat="server" ErrorMessage="Mail adresi gereklidir" ControlToValidate="txtAddress" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationGroup="card">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Mail hesabınız olmalıdır" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtAddress" ValidationGroup="card">*</asp:RegularExpressionValidator>

                                </div>

                                <div class="card-footer">
                                    <asp:LinkButton ID="lbCardSubmit" runat="server" CssClass="subscribe btn btn-info btn-block shadow" ValidationGroup="card" OnClick="lbCardSubmit_Click">Ödemeyi Tamamla</asp:LinkButton>
                                </div>

                                
                    </div>
                </div>

            <div class="card-footer">
                <b class="badge badge-success badge-pill shadow-sm"> Toplam Ödeme: <%Response.Write(Session["grandTotalPrice"]); %></b>
                <div class="pt-1">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="card" HeaderText="Hatayı düzelt" Font-Names="Segoe Script"></asp:ValidationSummary>
                </div>
            </div>
            </div>
        </div>
    </div>

    </section>

</asp:Content>