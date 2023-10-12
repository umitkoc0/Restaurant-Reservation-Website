<%@ Page Title="" Language="C#" ValidateRequest="false" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="IletisimDuzenle.aspx.cs" Inherits="RezervEt.Yonetim.IletisimDuzenleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">İletişim Bilgisi Düzenleme Sayfası </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <form class="forms-sample" runat="server" >
                    <div class="form-group">
                        <h5 style="color: aqua">İletişim</h5>
                         <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Adres </th>
                                <th>Adres Linki </th>
                                <th>E Posta </th>
                                <th>Telefon </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td>
                                   <asp:TextBox ID="adres"  runat="server" CssClass="form-control" ></asp:TextBox>
                                </td>
                                <td>
                                     <asp:TextBox ID="adresLink" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="eposta" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="telefon" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    </div>
                    <div class="form-group">
                        <h5 style="color: aqua">Sosyal Medya</h5>
                         <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Facebook </th>
                                <th>İnstagram </th>
                                <th>Twitter </th>
                                <th>Linkedin </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td>
                                  <asp:TextBox ID="facebook" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                     <asp:TextBox ID="instagram" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="twitter" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                                <td>
                                     <asp:TextBox ID="linkedin" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    </div>
                    <div class="form-group">
                        <h5 style="color: aqua">Google Harita</h5>
                        <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Adres </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td colspan="4">
                                    <asp:TextBox ID="googleMap" runat="server" TextMode="MultiLine" Height="120px" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table><br />
                        <center>
                        <asp:Button ID="guncelle" runat="server" Text="Güncelle" OnClick="Guncelle" CssClass="btn btn-outline-info btn-fw" />
                    <asp:Label ID="lblHata" runat="server" Text="" Font-Bold></asp:Label>
                       </center>
                    </div>
                </form>
            </div>
        </div>
    </div>

</asp:Content>