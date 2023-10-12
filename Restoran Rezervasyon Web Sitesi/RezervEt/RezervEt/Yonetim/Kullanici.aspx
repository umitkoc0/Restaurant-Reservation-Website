<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Kullanici.aspx.cs" Inherits="RezervEt.Yonetim.Kullanici" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Kullanıcı Bilgileri Düzenleme Sayfası </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div class="col-lg-12 stretch-card">
            <div class="card">
                <div class="card-body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#feebdc" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowPaging="true" PageSize="5" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanged">
                        <PagerSettings Mode="NumericFirstLast" FirstPageText="İlk" LastPageText="Son" />
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" ControlStyle-BorderColor="#ff8913" SelectText="Seç">
                                <ControlStyle Height="40px" Width="50px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="isim" HeaderText="Ad" InsertVisible="False" ReadOnly="True" SortExpression="isim" />
                            <asp:BoundField DataField="soyisim" HeaderText="Soyad" InsertVisible="False" ReadOnly="True" SortExpression="soyisim" />
                            <asp:BoundField DataField="kullaniciAdi" HeaderText="Kullanıcı Adı" InsertVisible="False" ReadOnly="True" SortExpression="kullaniciAdi" />
                            <asp:BoundField DataField="sifre" HeaderText="Şifre" InsertVisible="False" ReadOnly="True" SortExpression="sifre" />
                            <asp:BoundField DataField="eposta" HeaderText="E Posta" InsertVisible="False" ReadOnly="True" SortExpression="eposta" />
                            <asp:BoundField DataField="telefon" HeaderText="Telefon" InsertVisible="False" ReadOnly="True" SortExpression="telefon" />
                            <asp:BoundField DataField="yetki" HeaderText="Yetki" InsertVisible="False" ReadOnly="True" SortExpression="yetki" />
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
                    <br />
                    <br />
                    <br />
                    
                    <center>
                        <table class="table table-bordered">

                            <tbody>
                                <tr class="table-danger" align="center">
                                    <td>Kullanıcı Ara
                                    </td>
                                    <td>
                                        <asp:TextBox ID="aratxt" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="ara" runat="server" Text="ARA" CssClass="btn btn-outline-success btn-fw" OnClick="ara_Click" />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </center>
                    <br />
                    <br />
                    <table class="table table-bordered">
                        <thead>
                            <tr align="center">

                                <th width="77">ID </th>
                                <th>Ad </th>
                                <th>Soyad </th>
                                <th>E Posta </th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td width="77">
                                    <asp:Label ID="idlbl" runat="server" Text="-1"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="adtxt" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="soyadtxt" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="epostatxt" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Yetki </th>
                                <th>Kullanıcı Adı</th>
                                <th>Şifre </th>
                                <th>Telefon</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-success" align="center">
                                <td width="80">
                                    <asp:TextBox Width="80" TextMode="Number" ID="yetkitxt" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="kaditxt" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="sifretxt" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox TextMode="Phone" ID="teltxt" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <center>
                                        <asp:Label ID="hatalbl" CssClass="text-danger" runat="server"></asp:Label>
                                    </center>
                                </td>
                            </tr>
                        </tbody>

                    </table>
                    <br />
                    <br />
                    <br />
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="temizle" runat="server" Text="TEMİZLE" CssClass="btn btn-primary btn-fw" OnClick="temizle_Click" />
                            </td>
                            <td>
                                <asp:Button ID="ekle" runat="server" Text="EKLE" CssClass="btn btn-success btn-fw" OnClick="ekle_Click" />

                            </td>
                            <td>
                                <asp:Button ID="sil" runat="server" Text="SİL" CssClass="btn btn-danger btn-fw" OnClick="sil_Click" />
                            </td>
                            <td>
                                <asp:Button ID="guncelle" runat="server" Text="GÜNCELLE" CssClass="btn btn-warning btn-fw" OnClick="guncelle_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
