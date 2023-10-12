<%@ Page Title="REZERVET" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RezervEt.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <link href="css/style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Ön Yükleyici -->

    <div class="loading-container" data-loading-container>
        <div class="loading-circle"></div>
    </div>

    <%
        //Başlangıç
        Response.Write("<main>\r\n        <article><section class=\"section hero has-bg-image\" aria-label=\"home\"\r\n                style=\"background-image: url('"+VeriGetirGenel(10)+"')\">\r\n                <div class=\"container\">\r\n\r\n                    <div class=\"hero-content\" data-reveal=\"left\">\r\n                        <h1 class=\"h1 hero-title\">"+VeriGetirGenel(1)+"</h1>\r\n\r\n                        <p class=\"hero-text\">\r\n                            "+VeriGetirGenel(4)+"\r\n                        </p>\r\n\r\n                        <a href=\"Rezervasyon.aspx\" class=\"btn btn-secondary has-after\">Rezervasyon Yap</a>\r\n                    </div>\r\n\r\n                    <figure class=\"hero-banner\" data-reveal>\r\n\r\n                        <img src="+VeriGetirGenel(7)+" width=\"680\" height=\"720\" alt=\"hero banner\" class=\"w-100\">\r\n                    </figure>\r\n\r\n                </div>\r\n            </section>");
        
        //Restaurantlar
        Response.Write("<section class=\"section top-restaurant\" aria-labelledby=\"top-restaurent-label\">\r\n                <div class=\"container\">\r\n\r\n                    <ul class=\"grid-list\">\r\n\r\n                        <li data-reveal=\"left\">\r\n                            <h2 class=\"h2 section-title\" id=\"top-restaurent-label\">"+VeriGetirGenel(2)+"\r\n                            </h2>\r\n\r\n                            <p class=\"section-text\">\r\n                                "+VeriGetirGenel(5)+"\r\n                            </p>\r\n                        </li>");
        for (int i = 0; i < 3; i++)
            {
                //Restoran Logosu
                Response.Write("<li data-reveal=\"left\"><div class=\"restaurant-card\"><div class=\"card-icon\"><img src=" + VeriGetirRestoran(i,5) + " width=\"100\" height=\"100\" loading=\"lazy\"alt=" + VeriGetirRestoran(i, 1) + " class=\"w-100\"></div>");
                //Restoran İsmi
                Response.Write("<h3 class=\"h5 card-title\">" + VeriGetirRestoran(i, 1) + "</h3><div class=\"card-meta-wrapper\"><a href=\"#\" class=\"card-meta\">Rezervasyon</a></div>");
                //Restoran Bilgileri
                Response.Write("<p class=\"card-text\">" + VeriGetirRestoran(i, 4) + "</p></div></li>");
            }
        Response.Write("</ul>\r\n\r\n                    <a href=\"Restaurantlar.aspx\" class=\"btn btn-secondary has-after\">\r\n                        <span class=\"span\">Hepsini Gör</span>\r\n\r\n                        <ion-icon name=\"arrow-forward\" aria-hidden=\"true\"></ion-icon>\r\n                    </a>\r\n\r\n                </div>\r\n            </section>");


        //Reklam
        Response.Write("<section class=\"section cta has-bg-image\" aria-labelledby=\"cta-label\"\r\n                style=\"background-image: url('"+VeriGetirGenel(10)+"')\">\r\n                <div class=\"container\">\r\n\r\n                    <figure class=\"cta-banner\" data-reveal=\"left\">\r\n                        <img src="+VeriGetirGenel(8)+" width=\"680\" height=\"704\" loading=\"lazy\" alt=\"cta banner\"\r\n                            class=\"w-100\">\r\n                    </figure>\r\n\r\n                    <div class=\"cta-content\" data-reveal=\"right\">\r\n\r\n                        <h2 class=\"h3 section-title\" id=\"cta-label\">"+VeriGetirGenel(1)+"\r\n                        </h2>\r\n\r\n                        <p class=\"section-text\">\r\n                            "+VeriGetirGenel(6)+"\r\n                        </p>\r\n\r\n                        <a href=\"giris.aspx\" class=\"btn btn-primary has-after\">RezervET</a>\r\n\r\n                    </div>\r\n\r\n                </div>\r\n            </section>");

        //Bülten
        Response.Write("<section class=\"section newsletter\" aria-label=\"newsletter\">\r\n                <div class=\"container\">\r\n\r\n                    <figure class=\"newsletter-banner\" data-reveal=\"left\">\r\n                        <img src="+VeriGetirGenel(9)+" width=\"680\" height=\"405\" loading=\"lazy\" alt=\"Illustration\"\r\n                            class=\"w-100\">\r\n                    </figure>\r\n\r\n                    <div class=\"newsletter-content\" data-reveal=\"right\">\r\n                        <h2 class=\"h4 section-title\">"+VeriGetirGenel(3)+"\r\n                        </h2>\r\n\r\n                        <div class=\"input-wrapper\">");
    %>


        <asp:TextBox ID="TextBox1" runat="server" placeholder="E-mail adresiniz" CssClass="input-field"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Abone Ol" CssClass="btn " />


    <%
        Response.Write("</div>\r\n\r\n                    </div>\r\n\r\n                </div>\r\n            </section>\r\n\r\n        </article>\r\n    </main>");
    %>
    <script src="java/script.js"></script>


</asp:Content>
