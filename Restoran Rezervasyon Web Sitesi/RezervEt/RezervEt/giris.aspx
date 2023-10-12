<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="RezervEt.giris" %>

<!DOCTYPE html>

<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kayıt & Giriş</title>
</head>
<link rel="stylesheet" href="css/giris.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<body style="background-image: url('images/hero-bg2.png')">
    <form runat="server" method="post">
        <div class="container register">
            <div class="row">
                <div class="col-md-3 register-left">
                    <a href="default.aspx">
                        <img width="100px" height="100px" src="images/favicon.svg" alt="" />
                    </a>
                    <h3>HOŞGELDİNİZ</h3>
                    <br>
                    <h6>En seçkin restoranlarda masanız hazır!</h6>
                </div>
                <div class="col-md-9 register-right">
                    <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Giriş</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Kayıt</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <h3 class="register-heading">GİRİŞ EKRANI</h3>
                            <div class="row register-form">
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:TextBox ID="kadi" CssClass="form-control" runat="server" placeholder="Kullanıcı Adı *"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox TextMode="Password" ID="sifre" CssClass="form-control" runat="server" placeholder="Şifre *"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <font color="red">
                                            <center>
                                                <asp:Label ID="hata" runat="server" Text="" Font-Bold></asp:Label>
                                            </center>
                                        </font>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <asp:Button ID="girisbtn" CssClass="btnRegister" runat="server" Text="GİRİŞ YAP" OnClick="Giris_Click" />

                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <h3 class="register-heading">KAYIT EKRANI</h3>
                            <div class="row register-form">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="ad" CssClass="form-control" runat="server" placeholder="Ad *"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="soyad" CssClass="form-control" runat="server" placeholder="Soyad *"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox TextMode="Email" ID="eposta" CssClass="form-control" runat="server" placeholder="E - Posta *"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="kkadi" CssClass="form-control" runat="server" placeholder="Kullanıcı Adı *"></asp:TextBox>
                                    </div>



                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="telefon" CssClass="form-control" runat="server" placeholder="Telefon *"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox TextMode="Password" ID="ksifre" CssClass="form-control" runat="server" placeholder="Şifre *"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox TextMode="Password" ID="ksifre2" CssClass="form-control" runat="server" placeholder="Şifre Tekrar *"></asp:TextBox>
                                        <div class="form-group">
                                            <font color="red">
                                                <center>
                                                    <asp:Label ID="hata2" runat="server" Text="" Font-Bold></asp:Label>
                                                </center>
                                            </font>
                                        </div>
                                    </div>
                                        <asp:Button ID="kayitbtn" CssClass="btnRegister" runat="server" Text="KAYIT OL" OnClick="Kayit_Click" />

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
