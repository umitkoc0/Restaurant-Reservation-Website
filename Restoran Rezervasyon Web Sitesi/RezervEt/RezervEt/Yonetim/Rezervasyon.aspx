<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Rezervasyon.aspx.cs" Inherits="RezervEt.Yonetim.Rezervasyon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Rezervasyon Onay Sayfası </h3>
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
                            
                            <asp:CommandField ShowSelectButton="True" HeaderText="Onayla" ButtonType="Button" ControlStyle-BorderColor="#ff8913" SelectText="+">
                                <ControlStyle Height="40px" Width="50px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="isim" HeaderText="Ad" InsertVisible="False" ReadOnly="True" SortExpression="isim" />
                            <asp:BoundField DataField="soyisim" HeaderText="Soyad" InsertVisible="False" ReadOnly="True" SortExpression="soyisim" />
                            <asp:BoundField DataField="isim" HeaderText="Rstorant Adı" InsertVisible="False" ReadOnly="True" SortExpression="isim" />
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
                </div>
            </div>
        </div>
    </form>

</asp:Content>
