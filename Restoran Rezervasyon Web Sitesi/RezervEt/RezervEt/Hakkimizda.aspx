<%@ Page Title="Hakkımızda" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="RezervEt.Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Ön Yükleyici -->

    <div class="loading-container" data-loading-container>
        <div class="loading-circle"></div>
    </div>

    <%
        Response.Write("<section class=\"section hero has-bg-image\" aria-label=\"home\"\r\n        style=\"background-image: url('" + VeriGetir(9) + "')\">\r\n        <div class=\"container\">\r\n            <figure class=\"hero-banner\" data-reveal>\r\n\r\n                <img src=" + VeriGetir(7) + " width=\"680\" height=\"720\" alt=\"hero banner\" class=\"w-100\">\r\n            </figure>\r\n            <div class=\"hero-content\" data-reveal=\"right\" style=\"text-align: center\">\r\n                <h1 class=\"h1 hero-title\">" + VeriGetir(1) + " <font color=\"orange\"> " + VeriGetir(2) + "</font> </h1>\r\n\r\n                <p class=\"hero-text\" style=\"text-align: center\">\r\n                    " + VeriGetir(5) + "\r\n                </p>\r\n            </div>\r\n\r\n            \r\n\r\n        </div>\r\n    </section>");

        Response.Write("<section class=\"section instruction\" aria-labelledby=\"\"  style=\"text-align: center\">\r\n        <div class=\"container\">\r\n            <figure class=\"card-banner\">\r\n                <img src=" + VeriGetir(8) + " width=\"300\" height=\"154\" loading=\"lazy\"\r\n                    alt=\"Select Restaurant\" class=\"w-100\">\r\n            </figure><br />\r\n            <h2 class=\"h2 section-title\" id=\"instruction-label\" data-reveal><font color=\"orange\"> " + VeriGetir(2) + "</font> " + VeriGetir(3) + "<font color=\"orange\"> " + VeriGetir(4) + "</font></h2>\r\n\r\n            <p class=\"section-text\" data-reveal>\r\n                " + VeriGetir(6) + "\r\n            </p>\r\n\r\n            \r\n\r\n        </div>\r\n    </section>");


    %>

    <%--<center>
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <section class="section hero has-bg-image" aria-label="home" style="background-image: url(' <%# Eval("arkaplan") %> ')"> 
                <div class="container"> 
                    <figure class="hero-banner" data-reveal> 
                        <img src=" <%# Eval("resim1") %> " width="680" height="720" alt="hero banner" class="w-100">
                    </figure>
                    <div class="hero-content" data-reveal="right" style="text-align: center">
                        <h1 class="h1 hero-title"> <%# Eval("baslik1a") %>  
                            <font color="orange">  <%# Eval("baslik1b") %> </font> 

                        </h1> 
                        <p class="hero-text" style="text-align: center"> <%# Eval("aciklama1") %> </p>

                    </div>

                </div> 

            </section>

        <section class="section instruction" aria-labelledby=""  style="text-align: center">
            <div class="container">
                <figure class="card-banner">
                    <img src=" <%# Eval("resim2") %> " width="300" height="154" loading="lazy" alt="Select Restaurant" class="w-100">

                </figure>
                <br /> 
                <h2 class="h2 section-title" id="instruction-label" data-reveal>
                    <font color="orange">  <%# Eval("baslik1b") %> </font> <%# Eval("baslik2a") %>
                    <font color="orange">  <%# Eval("baslik2b") %> </font>

                </h2>
                <p class="section-text" data-reveal>  <%# Eval("aciklama2") %>  </p>

            </div> 

        </section>

        </ItemTemplate>
    </asp:DataList>
        </center>--%>

    <script src="java/script.js"></script>
</asp:Content>
