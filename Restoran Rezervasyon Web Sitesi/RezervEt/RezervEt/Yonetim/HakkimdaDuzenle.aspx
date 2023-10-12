<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimdaDuzenle.aspx.cs" Inherits="RezervEt.Yonetim.HakkimdaDuzenleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Hakkımda Bilgi Düzenleme Sayfası </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <form class="forms-sample" runat="server">

                       <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Resim </th>
                                <th>Dosya Yükle </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td>
                                  <asp:Image ID="Image1" Width="150" Height="150"  runat="server" />
                                </td>
                                <td>
                                     <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-upload-browse btn btn-outline-success btn-fw" /><br />
                        <asp:Button ID="Button4" runat="server" Text="Yükle" CssClass="btn btn-inverse-success btn-fw" OnClick="Resim_Yukle" />
                        <asp:Label ID="lblLogo" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Başlık 1 </th>
                                <th>Başlık 2 </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td>
                                 <asp:TextBox ID="baslik1a" runat="server" CssClass="form-control" ></asp:TextBox>
                                </td>
                                <td>
                                      <asp:TextBox ID="baslik1b" runat="server" CssClass="form-control" ></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                     <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Açıklama</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td>
                                <asp:TextBox ID="aciklama1" runat="server" TextMode="MultiLine" Height="120px" CssClass="form-control" ></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Resim </th>
                                <th>Dosya Yükle </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td>
                                  <asp:Image ID="Image2" Width="300" Height="150"  runat="server" /> 
                                </td>
                                <td>
                                     <asp:FileUpload ID="FileUpload2" runat="server" CssClass="file-upload-browse btn btn-outline-success btn-fw" /><br />
                        <asp:Button ID="Button5" runat="server" Text="Yükle" CssClass="btn btn-inverse-success btn-fw" OnClick="Resim_Yukle2" />
                        <asp:Label ID="lblLogo2" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                   <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Başlık 1 </th>
                                <th>Başlık 2 </th>
                                <th>Başlık 3 </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td>
                                  <asp:TextBox ID="baslik2c" runat="server" ReadOnly="true" CssClass="form-control" ></asp:TextBox> 
                                </td>
                                <td>
                                      <asp:TextBox ID="baslik2a" runat="server"  CssClass="form-control" ></asp:TextBox>
                                </td>
                                 <td>
                                       <asp:TextBox ID="baslik2b" runat="server"  CssClass="form-control" ></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                   
                     <table class="table table-bordered">
                        <thead>
                            <tr align="center">
                                <th>Açıklama 2 </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">
                                <td>
                                  <asp:TextBox ID="aciklama2" runat="server" TextMode="MultiLine" Height="120px" CssClass="form-control" ></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                     <tr><br />
                                <center><asp:Button ID="Button1" runat="server" Text="Güncelle" OnClick="Guncelle" CssClass="btn btn-gradient-primary me-2" />
                    <asp:Label ID="lblHata" runat="server" Text="" Font-Bold></asp:Label></center> 
                            </tr>
                </form>
            </div>
        </div>
    </div>

</asp:Content>