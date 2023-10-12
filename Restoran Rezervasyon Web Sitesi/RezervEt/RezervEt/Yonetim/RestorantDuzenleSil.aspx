<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="RestorantDuzenleSil.aspx.cs" Inherits="RezervEt.Yonetim.RestaurantEkleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Restorant Düzenle/Sil Sayfası </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <form class="forms-sample" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#feebdc" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowPaging="true" PageSize="5" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanged">
                        <PagerSettings Mode="NumericFirstLast" FirstPageText="İlk" LastPageText="Son" />
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" ControlStyle-BorderColor="#ff8913" SelectText="Seç">
                                <ControlStyle Height="40px" Width="50px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="resIsim" HeaderText="Restorand Adı" InsertVisible="False" ReadOnly="True" SortExpression="resIsim" />
                            <asp:BoundField DataField="eposta" HeaderText="E-Posta" InsertVisible="False" ReadOnly="True" SortExpression="eposta" />
                            <asp:BoundField DataField="telefon" HeaderText="Telefon" InsertVisible="False" ReadOnly="True" SortExpression="telefon" />
                            <asp:BoundField DataField="bilgi" HeaderText="Bilgi" InsertVisible="False" ReadOnly="True" SortExpression="bilgi" />
                            <asp:BoundField DataField="resim" HeaderText="Resim" InsertVisible="False" ReadOnly="True" SortExpression="resim" />

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
                    <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>ID </th>
                                <th>Restorat Adı </th>
                                <th>E Posta </th>
                                <th>Telefon </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td>
                                    <asp:Label ID="lblId" runat="server" Text="-1"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Restorat Adı"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMail" runat="server" TextMode="Email" CssClass="form-control" placeholder="E Posta"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTel" runat="server" TextMode="Phone" CssClass="form-control" placeholder="Telefon"></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Restorant Hakkında </th>
                                <th>Restorat Logosu </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td>
                                    <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="120px" CssClass="form-control" placeholder="Restorant Hakkında"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-upload-browse btn btn-outline-success btn-fw" /><br />
                                    <asp:Button ID="Button2" runat="server" Text="Yükle" CssClass="btn btn-inverse-success btn-fw" OnClick="Resim_Yukle" />
                                    <asp:Label ID="lblLogo" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-inverse-info btn-fw" OnClick="Guncelle" />&nbsp;
                   
                    <asp:Button ID="Button3" runat="server" Text="Sil" CssClass="btn btn-inverse-danger btn-fw" OnClick="Sil" />
                    <asp:Label ID="lblHata" runat="server" Text="" Font-Bold></asp:Label>

                </form>
            </div>
        </div>
    </div>

</asp:Content>
