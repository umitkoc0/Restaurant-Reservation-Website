<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="RezervEt.Yonetim.Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Kullanıcı Mesajları </h3>
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
                            <asp:CommandField ShowSelectButton="True" HeaderText="Okundu Olarak İşaretle" ButtonType="Button" ControlStyle-BorderColor="#ff8913" SelectText=".">
                                <ControlStyle Height="40px" Width="50px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="isim" HeaderText="Ad" InsertVisible="False" ReadOnly="True" SortExpression="isim" />
                            <asp:BoundField DataField="soyisim" HeaderText="Soyad" InsertVisible="False" ReadOnly="True" SortExpression="soyisim" />
                            <asp:BoundField DataField="eposta" HeaderText="E Posta" InsertVisible="False" ReadOnly="True" SortExpression="eposta" />
                            <asp:BoundField DataField="konu" HeaderText="Konu" InsertVisible="False" ReadOnly="True" SortExpression="konu" />
                            <asp:BoundField DataField="ileti" HeaderText="İleti" InsertVisible="False" ReadOnly="True" SortExpression="ileti" />

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
    </form>
</asp:Content>
