<%@ Page Title="Restorantlar" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Restaurantlar.aspx.cs" Inherits="RezervEt.Restaurantlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/search.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="search-input-wrapper">
        <div class="search-input">
            <asp:TextBox OnTextChanged="text_TextChanged" ID="ara" runat="server" placeholder="Restoran..."></asp:TextBox>
            <i class="fas fa-times"></i>
        </div>
    </div>
    <div class="loading-container" data-loading-container>
        <div class="loading-circle">
        </div>
    </div>


    <section class="section top-restaurant" aria-labelledby="top-restaurent-label">
        <div class="container">
            <ul class="grid-list">
                <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1Command" HorizontalAlign="Justify" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatColumns="2" RepeatDirection="Horizontal" Width="1100px">
                    <ItemTemplate>

                        <li data-reveal="left">
                            <div class="restaurant-card">
                                <div class="card-icon">
                                    <img src=" <%# Eval("resim") %> " width="100" height="100" loading="lazy" alt=" <%# Eval("resIsim") %> " class="w-100">
                                </div>
                                <h3 class="h5 card-title"><%# Eval("resIsim") %> </h3>
                                <div class="card-meta-wrapper">
                                    <asp:LinkButton ID="LinkButton1" CssClass="card-meta" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="git">Rezervasyon</asp:LinkButton>
                                </div>
                                <p class="card-text"><%# Eval("bilgi") %> </p>
                            </div>
                        </li>

                    </ItemTemplate>
                </asp:DataList>
            </ul>
        </div>
    </section>

    <script src="java/script.js"></script>
    <script src="java/search.js"></script>


    <!-- 
    - ionicon link
  -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</asp:Content>
