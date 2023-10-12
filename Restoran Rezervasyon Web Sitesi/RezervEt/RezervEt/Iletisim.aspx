<%@ Page Title="İletişim" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="RezervEt.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loading-container" data-loading-container>
        <div class="loading-circle"></div>
    </div>

    <% 
        
        Response.Write("<section class=\"section contact\" aria-labelledby=\"top-contact\" style=\"background-image: url('images/hero-bg.png')\"><div class=\"container\"><br /><ul class=\"grid-list\"><li data-reveal=\"left\"><br /><br /><br /><h1 align=\"center\">BİZE ULAŞIN</h1><br /></asp:TextBox><div><ul class=\"footer-list\">");
        //Adres Satırı
        Response.Write("<li><a href=" + VeriGetir(20) + " class=\"footer-link\"><address class=\"address\"><ion-icon name=\"location\" aria-hidden=\"true\"></ion-icon><span class=\"span\">" + VeriGetir(4) + "</span></address></a></li>");
        //E Posta Satırı
        Response.Write("<li><a href=mailto:" + VeriGetir(5) + " class=\"footer-link\"><ion-icon name=\"mail\" aria-hidden=\"true\"></ion-icon><span class=\"span\">" + VeriGetir(5) + "</span></a></li>");
        //Telefon Satırı
        Response.Write("<li><a href=tel:" + VeriGetir(6) + " class=\"footer-link\"><ion-icon name=\"call\" aria-hidden=\"true\"></ion-icon><span class=\"span\">" + VeriGetir(6) + "</span></a></li>");

        //Sosyal Medya Satırı
        Response.Write("<li><ul class=\"social-list\"><li><a href=" + VeriGetir(7) + " class=\"social-link\"><ion-icon name=\"logo-facebook\"></ion-icon></a></li><li><a href=" + VeriGetir(8) + " class=\"social-link\"><ion-icon name=\"logo-instagram\"></ion-icon></a></li><li><a href=" + VeriGetir(9) + " class=\"social-link\"><ion-icon name=\"logo-twitter\"></ion-icon></a></li><li><a href=" + VeriGetir(10) + " class=\"social-link\"><ion-icon name=\"logo-linkedin\"></ion-icon></a></li></ul></li></ul></div><br />");
        //Google Map Satırı
        Response.Write("<div>" + VeriGetir(11) + "</div></li>");
    %>

    <li data-reveal="right">
        <section class="section newsletter" aria-label="newsletter">
            <div class="container">
                <div class="newsletter-content">
                    <div class="input-wrapper">
                        <asp:TextBox ID="adtxt" runat="server" Width="300px" CssClass="input-field" placeholder="Adınız"></asp:TextBox>
                        <asp:TextBox ID="soyadtxt" CssClass="input-field" runat="server" placeholder="Soyadınız" Width="300px"></asp:TextBox>
                        <asp:TextBox ID="epostatxt" CssClass="input-field" TextMode="Email" runat="server" placeholder="E-mail adresiniz" Width="300px"></asp:TextBox>
                        <asp:TextBox ID="konutxt" CssClass="input-field" MaxLength="100" runat="server" placeholder="Konu" Width="300px"></asp:TextBox>
                        <asp:TextBox ID="iletitxt" CssClass="input-field" MaxLength="500" runat="server" TextMode="MultiLine" placeholder="İletiniz..." Width="500px" Height="150px"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn " OnClick="Button1_Click" /><br />
                        <asp:Label ID="hatalbl" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </section>
    </li>
    </ul>
        </div>
    </section>



    <script src="java/script.js"></script>
</asp:Content>
