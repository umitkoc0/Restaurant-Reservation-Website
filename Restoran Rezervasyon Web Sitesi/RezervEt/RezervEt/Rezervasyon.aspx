<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Rezervasyon.aspx.cs" Inherits="RezervEt.Rezervasyon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <link href="css/rezervasyon.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Ön Yükleyici -->

    <div class="loading-container" data-loading-container>
        <div class="loading-circle"></div>
    </div>


    <section style="background-image: url('images/hero-bg.png')">
        <br />
        <br />
        <br />
        <br />
        <br />
        <%

            //Yatay menü Başlangıç
            Response.Write("<div class=\"container\">\r\n            \r\n            <div class=\"breadcrumb\">\r\n                <ul class=\"list-unstyled\">\r\n                    <li><a href=\"#\" target=\"_self\">MASA REZERVASYON/</a></li>\r\n                    <li><a href=\"Rezervasyon.aspx\" target=\"_self\" class=\"active\">" + VeriGetir(1) + "</a></li>\r\n                </ul>\r\n            </div>");
            //Galeri Başlangıç
            Response.Write("<table>\r\n                <tr>\r\n                    <td width=\"50%\">\r\n                        <div class=\"product-detail\">\r\n                            <div class=\"row\">\r\n                                \r\n                                <div class=\"col-12 col-sm-6\">\r\n                                    <div class=\"buyuk-galeri\">\r\n                                        <img src=" + VeriGetir(5) + " alt=\"\" id=\"imgBox\">\r\n                                    </div>\r\n                                    <div class=\"kucuk-resimler\">\r\n                                        <div class=\"resimler active\">\r\n                                            <img src=" + VeriGetir(5) + " alt=\"\" onclick=\"myFunction(this)\">\r\n                                        </div>\r\n                                        <div class=\"resimler\">\r\n                                            <img src=" + VeriGetir(6) + " alt=\"\" onclick=\"myFunction(this)\">\r\n                                        </div>\r\n                                        <div class=\"resimler\">\r\n                                            <img src=" + VeriGetir(7) + " alt=\"\" onclick=\"myFunction(this)\">\r\n                                        </div>\r\n                                        <div class=\"resimler\">\r\n                                            <img src=" + VeriGetir(8) + " alt=\"\" onclick=\"myFunction(this)\">\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </td>");
            //Ürün İsim Başlangıç
            Response.Write("<td width=\"50%\" align=\"center\">\r\n                        <div class=\"product-detail\" >\r\n                            <div class=\"row\">\r\n                                <div class=\"col-12 col-sm-6\">\r\n                                    \r\n                                    <div class=\"card-head\">\r\n                                        <h1>" + VeriGetir(1) + "</h1>\r\n                                        <br /><br /><span>Masa Tipi / Kişi Sayısı</span>\r\n                                        \r\n                                        <br />\r\n                                    </div>\r\n                                   ");

        %>
        <div>
            <div class="buton">
                <asp:RadioButton CssClass="buton1" ID="RadioButton1" Checked="true" runat="server" Text="2" GroupName="gender" />
                <asp:RadioButton CssClass="buton1" ID="RadioButton2" runat="server" Text="4" GroupName="gender" />
                <asp:RadioButton CssClass="buton1" ID="RadioButton3" runat="server" Text="6" GroupName="gender" />
                <asp:RadioButton CssClass="buton1" ID="RadioButton4" runat="server" Text="8" GroupName="gender" />
                <asp:RadioButton CssClass="buton1" ID="RadioButton5" runat="server" Text="10" GroupName="gender" />
            </div>
            <br />
            <br />
            <br />
            <br />
        </div>
        <div class="card-head">
            <span>Rezervasyon Tarihi</span>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Calendar ID="tarih"  BorderColor="#ff9933" BackColor="#ffb07b" DayHeaderStyle-ForeColor="#000000" NextPrevStyle-ForeColor="#f96400" runat="server" ></asp:Calendar>
                    </td>
                    <td>
                        <asp:TextBox ID="saat" CssClass="input-field" BorderStyle="Double" BorderColor="#ff9933" TextMode="Time" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>



            <br />
            <br />
            <br />
        </div>

        <div class="etkilesim">

            <div class="buton">
                <asp:Label ID="hatalbl" runat="server" Text=""></asp:Label>
                <asp:Button ID="Button1" CssClass="btn" runat="server" OnClick="Rezervasyon_Click" Text="REZERVASYON YAP" />
            </div>
        </div>
        <%

            Response.Write(" </div>\r\n                            </div>\r\n                        </div>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td colspan=\"2\">\r\n\r\n                        <div class=\"accordion\">\r\n                            <div class=\"panel-group\" id=\"accordion\" role=\"tablist\" aria-multiselectable=\"true\">");
            //RESTORAN ÖZELLİKLERİ
            Response.Write("<div class=\"panel panel-default\">\r\n                                    <div class=\"panel-heading\" role=\"tab\" id=\"headingOne\">\r\n                                        <h4 class=\"panel-title\">\r\n                                            <a role=\"button\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">RESTORAN ÖZELLİKLERİ <span class=\"glyphicon glyphicon-plus\" aria-hidden=\"true\"></span>\r\n                                            </a>\r\n                                        </h4>\r\n                                    </div>\r\n                                    <div id=\"collapseOne\" class=\"panel-collapse collapse in\" role=\"tabpanel\" aria-labelledby=\"headingOne\">\r\n                                        <div class=\"panel-body\">\r\n                                            <p>" + VeriGetir(4) + "</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>");
            //MASA DETAYI
            Response.Write("<div class=\"panel panel-default\">\r\n                                    <div class=\"panel-heading\" role=\"tab\" id=\"headingTwo\">\r\n                                        <h4 class=\"panel-title\">\r\n                                            <a class=\"collapsed\" role=\"button\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\">MASA DETAYI <span class=\"glyphicon glyphicon-plus\" aria-hidden=\"true\"></span>\r\n                                            </a>\r\n                                        </h4>\r\n                                    </div>\r\n                                    <div id=\"collapseTwo\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingTwo\">\r\n                                        <div class=\"panel-body\">\r\n                                            <p>2, 4, 6, 8 ve 10 Kişilik Masalar Mevcuttur.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>");
            //REZERVASYON VE İPTAL
            Response.Write("<div class=\"panel panel-default\">\r\n                                    <div class=\"panel-heading\" role=\"tab\" id=\"headingFour\">\r\n                                        <h4 class=\"panel-title\">\r\n                                            <a class=\"collapsed\" role=\"button\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseFour\" aria-expanded=\"false\" aria-controls=\"collapseFour\">REZERVASYON VE İPTAL <span class=\"glyphicon glyphicon-plus\" aria-hidden=\"true\"></span>\r\n                                            </a>\r\n                                        </h4>\r\n                                    </div>\r\n                                    <div id=\"collapseFour\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingFour\">\r\n                                        <div class=\"panel-body\">\r\n                                            <p>Detaylı Bilgi İçin İletişim Kanallarından İletişime Geçebilirsiniz.</p>\r\n                                            <ul class=\"footer-list\">\r\n\r\n                                                <li>\r\n                                                    <a href=\"mailto:" + VeriGetir(2) + "\" class=\"footer-link\">\r\n                                                        <ion-icon name=\"mail\" aria-hidden=\"true\"></ion-icon>\r\n\r\n                                                        <span class=\"span\">" + VeriGetir(2) + "</span>\r\n                                                    </a>\r\n                                                </li>\r\n\r\n                                                <li>\r\n                                                    <a href=\"tel:" + VeriGetir(3) + " \" class=\"footer-link\">\r\n                                                        <ion-icon name=\"call\" aria-hidden=\"true\"></ion-icon>\r\n\r\n                                                        <span class=\"span\">" + VeriGetir(3) + "</span>\r\n                                                    </a>\r\n                                                </li>\r\n                                            </ul>\r\n                                        </div>\r\n                                    </div>");
            Response.Write("</div>\r\n                            </div>\r\n                        </div>\r\n\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n\r\n        </div>\r\n    </section>");

        %>






        <!--İçerik Bitiş-->



        <!--Script Başlangıç-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="java/rezervasyon.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</asp:Content>
