<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="RestorantEkle.aspx.cs" Inherits="RezervEt.Yonetim.RestaurantEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Yeni Restorant Ekleme Sayfası </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                <form class="forms-sample" runat="server">

    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                 <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Restorant Adı </th>
                                <th>E Posta</th>
                                <th>Telefon </th>
                                


                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-success" align="center">
                                <td>
                                    <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Restorant Adı"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMail" runat="server" TextMode="Email" CssClass="form-control" placeholder="E Posta"></asp:TextBox>
                                </td>
                                <td>
                                     <asp:TextBox ID="txtTel" runat="server" TextMode="Phone" CssClass="form-control" placeholder="Telefon"></asp:TextBox>
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
                <!-- egrhetrjyktulyışuoiıpıouılukyjthrg-->
                  <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                  <th>Restorant Hakkında </th>
                              <th>Restorant Logo</th>
                               
                           
                                


                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-warning" align="center">
                                <td>
                                   <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="120px" CssClass="form-control" placeholder="Restaurant Hakkında"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-upload-browse btn btn-outline-success btn-fw" /><br />
                                    <asp:Label ID="lblLogo" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button2" runat="server" Text="Yükle" OnClick="Resim_Yukle" CssClass="btn btn-inverse-success btn-fw" />
                        
                                </td>
                                
                                
                            


                            </tr>
                            <tr>
                                <td colspan="4">
                                    <center>
                                        <asp:Label ID="lblHata" runat="server" Text="" Font-Bold></asp:Label>
                                    </center>
                                </td>
                            </tr>
                        </tbody>

                    </table>
                <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Ekle_Click" CssClass="btn btn-gradient-primary me-2" />



                    

                </form>
            </div>
        </div>
    </div>
</asp:Content>