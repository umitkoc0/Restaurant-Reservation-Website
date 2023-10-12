<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Hesap.aspx.cs" Inherits="RezervEt.Hesabım" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Ön Yükleyici -->

    <div class="loading-container" data-loading-container>
        <div class="loading-circle"></div>
    </div>

    <section class="section contact" aria-labelledby="top-contact" style="background-image: url('images/hero-bg.png')">
        <div class="container">
            <br />
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Button ID="p1btn" runat="server" CssClass="btn has-after" OnClick="p1btn_Click" Text="Rezervasyonlar" /><br />
                        <asp:Button ID="p2btn" runat="server" CssClass="btn has-after" OnClick="p2btn_Click" Text="Kullanıcı Bilgileri" />
                    </td>
                    <td>

                        <asp:Panel ID="Panel1"  runat="server">
                            <center>
                                <h2>Rezervasyon Bilgileri</h2>
                            </center>
                            <ul class="grid-list">

                                <li data-reveal="left">
                                    <section class="section newsletter" aria-label="newsletter">
                                        <div class="container">
                                            <div class="newsletter-content">
                                                <div class="input-wrapper">

                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  BackColor="White" BorderColor="#feebdc" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowPaging="true" PageSize="5" Width="800"  >
                                                        <PagerSettings Mode="NumericFirstLast" FirstPageText="İlk" LastPageText="Son" />
                                                        <AlternatingRowStyle BackColor="#F7F7F7" />
                                                        <Columns>
                                                            
                                                            <asp:BoundField DataField="isim" HeaderText="Ad" InsertVisible="False" ReadOnly="True" SortExpression="isim" />
                                                            <asp:BoundField DataField="soyisim" HeaderText="Soyad" InsertVisible="False" ReadOnly="True" SortExpression="soyisim" />
                                                            <asp:BoundField DataField="resIsim" HeaderText="Rstorant Adı" InsertVisible="False" ReadOnly="True" SortExpression="resIsim" />
                                                            <asp:BoundField DataField="KisiSayisi" HeaderText="Kişi Sayısı" InsertVisible="False" ReadOnly="True" SortExpression="KisiSayisi" />
                                                            <asp:BoundField DataField="RezervasyonTarih" HeaderText="Rezervasyon Tarihi" InsertVisible="False" ReadOnly="True" SortExpression="RezervasyonTarih" />
                                                            <asp:BoundField DataField="Onay" HeaderText="Onay" InsertVisible="False" ReadOnly="True" SortExpression="Onay" />
                                                            
                                                        </Columns>
                                                        <FooterStyle BackColor="#B5C7DE" ForeColor="#ff8913" />
                                                        <HeaderStyle BackColor="#ff8913" Font-Bold="True" ForeColor="#F7F7F7" />
                                                        <PagerStyle BackColor="#feebdc" ForeColor="#ff8913" HorizontalAlign="Right" />
                                                        <RowStyle BackColor="#feebdc" ForeColor="#ff8913" />
                                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                                    </asp:GridView>



                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </li>
                            </ul>

                        </asp:Panel>

                        <asp:Panel ID="Panel2" Visible="false" runat="server">
                            <center>
                                <h2>Kullanıcı Bilgileri</h2>
                            </center>
                            <ul class="grid-list">

                                <li data-reveal="left">
                                    <section class="section newsletter" aria-label="newsletter">
                                        <div class="container">
                                            <div class="newsletter-content">
                                                <div class="input-wrapper">
                                                    <asp:Label ID="Label1" runat="server" Text="Adınız"></asp:Label>
                                                    <asp:TextBox ID="adtxt" runat="server" Width="300px" CssClass="input-field" placeholder="Adınız"></asp:TextBox>
                                                    <asp:Label ID="Label2" runat="server" Text="Soyadınız"></asp:Label>
                                                    <asp:TextBox ID="soyadtxt" CssClass="input-field" runat="server" placeholder="Soyadınız" Width="300px"></asp:TextBox>
                                                    <asp:Label ID="Label3" runat="server" Text="E-mail adresiniz"></asp:Label>
                                                    <asp:TextBox ID="epostatxt" CssClass="input-field" runat="server" placeholder="E-mail adresiniz" Width="300px"></asp:TextBox>
                                                    <asp:Label ID="Label4" runat="server" Text="Telefon"></asp:Label>
                                                    <asp:TextBox ID="teltxt" CssClass="input-field" runat="server" placeholder="Telefon" Width="300px"></asp:TextBox>



                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </li>
                                <li data-reveal="right">
                                    <section class="section newsletter" aria-label="newsletter">
                                        <div class="container">
                                            <div class="newsletter-content">
                                                <div class="input-wrapper">
                                                    <asp:Label ID="Label5" runat="server" Text="Kullanıcı Adı"></asp:Label>
                                                    <asp:TextBox ID="kaditxt" CssClass="input-field" runat="server" placeholder="Kullanıcı Adı" Width="300px"></asp:TextBox>
                                                    <asp:Label ID="Label6" runat="server" Text="Şifreniz"></asp:Label>
                                                    <asp:TextBox ID="sifretxt" CssClass="input-field" runat="server" placeholder="Şifre" Width="300px"></asp:TextBox>
                                                    <asp:Label ID="Label7" runat="server" Text="Şifreniz Tekrar"></asp:Label>
                                                    <asp:TextBox ID="sifretxt2" CssClass="input-field" runat="server" placeholder="Şifre Tekrar" Width="300px"></asp:TextBox>

                                                    <asp:Button ID="Button1" runat="server" Text="KAYDET" CssClass="btn has-after" OnClick="Button1_Click" />
                                                    <asp:Label ID="hatalbl" runat="server" Text=""></asp:Label>

                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </li>
                            </ul>
                        </asp:Panel>
                    </td>
                </tr>
            </table>


        </div>
    </section>



    <script src="java/script.js"></script>
</asp:Content>
