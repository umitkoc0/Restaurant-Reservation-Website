<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RezervEt.Yonetim._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">İşlem Yapmak İçin Lütfen Menüyü Kullanınız... </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <form class="forms-sample" runat="server">


                    <table class="table table-bordered">
                        <thead>
                            <tr align="center">


                                <th width="200">Logo</th>
                                <th>Resim Yükle </th>


                            </tr>
                        </thead>
                        <tbody>
                            <tr class="table-info" align="center">


                                <td width="200">
                                    <asp:Image ID="Image1" Width="200" runat="server" />

                                </td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-upload-browse btn btn-outline-success btn-fw" /><br />
                                    <asp:Button ID="fotobtn1" OnClick="Resim_Yukle" runat="server" Text="Yükle" CssClass="btn btn-inverse-success btn-fw" />
                                    <asp:Label ID="fotolbl1" runat="server" Text=""></asp:Label>
                                </td>


                            </tr>
                        </tbody>
                    </table>

                    <div class="form-group" display="inline">
                        <h4 align="center" style="color: gold">Menu</h4>
                        <table class="table table-bordered">
                            <thead>
                                <tr align="center">


                                    <th>Menü 1</th>
                                    <th>Menü 2 </th>
                                    <th>Menü 3</th>
                                    <th>Menü 4 </th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr class="table-info" align="center">


                                    <td>
                                        <asp:TextBox ID="menu1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="menu2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="menu3" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="menu4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>


                                </tr>
                            </tbody>
                        </table>
                        <table class="table table-bordered">
                            <thead>
                                <tr align="center">


                                    <th>Menü Link 1</th>
                                    <th>Menü Link 2 </th>
                                    <th>Menü Link 3</th>
                                    <th>Menü Link 4 </th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr class="table-info" align="center">


                                    <td>
                                        <asp:TextBox ID="link1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="link2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="link3" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="link4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>


                                </tr>
                            </tbody>
                        </table>
                        

                        <h4 align="center" style="color: gold">Ana Sayfa</h4>
                        <table class="table table-bordered">
                            <thead>
                                <tr align="center">


                                    <th>Başlık 1</th>

                                    <th>Ana Sayfa Resim 1</th>
                                    <th>Resim Yükle </th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr class="table-info" align="center">
                                    <td>
                                        <asp:TextBox ID="baslik1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>


                                    <td rowspan="2" width="200">
                                        <asp:Image ID="Image2" Width="200" Height="200" runat="server" />
                                    </td>
                                    <td rowspan="2">
                                        <asp:FileUpload ID="FileUpload2" runat="server" CssClass="file-upload-browse btn btn-outline-success btn-fw" /><br />
                                        <asp:Button ID="fotobtn2" OnClick="Resim_Yukle2" runat="server" Text="Yükle" CssClass="btn btn-inverse-success btn-fw" />
                                        <asp:Label ID="fotolbl2" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr class="table-info" align="center">
                                    <td>
                                        <asp:TextBox ID="metin1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>


                                </tr>
                            </tbody>
                        </table>
                        

                         </table>
                           
                        <table class="table table-bordered">
                            <thead>
                                <tr align="center">


                                    <th>Başlık 2</th>
                                    <th>Açıklama 2 </th>


                                </tr>
                            </thead>
                            <tbody>
                                <tr class="table-info" align="center">


                                    <td>
                                        <asp:TextBox ID="baslik2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="metin2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>



                                </tr>
                            </tbody>
                        </table>
                        

                        
                           
                        <table class="table table-bordered">
                            <thead>
                                <tr align="center">


                                    <th>Reim Yükle </th>
                                    <th>Resim </th>


                                </tr>
                            </thead>
                            <tbody>
                                <tr class="table-info" align="center">


                                    <td>
                                        <asp:FileUpload ID="FileUpload3" runat="server" CssClass="file-upload-browse btn btn-outline-success btn-fw" /><br />
                                        <asp:Button ID="fotobtn3" OnClick="Resim_Yukle3" runat="server" Text="Yükle" CssClass="btn btn-inverse-success btn-fw" />
                                        <asp:Label ID="fotolbl3" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td rowspan="2" width="400">
                                        <asp:Image ID="Image3" Width="100" Height="115" runat="server" />
                                    </td>



                                </tr>
                            </tbody>
                        </table>
                        

                        
                           
                        <table class="table table-bordered">
                            <thead>
                                <tr align="center">


                                    <th>Başlık 3 </th>
                                    <th>Açıklama 3 </th>


                                </tr>
                            </thead>
                            <tbody>
                                <tr class="table-info" align="center">


                                    <td width="40%">
                                        <asp:TextBox ID="baslik3" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="metin3" TextMode="MultiLine" Height="100" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>



                                </tr>
                            </tbody>
                        </table>
                        

                           
                        <table class="table table-bordered">
                            <thead>
                                <tr align="center">


                                    <th>Başlık 4 </th>


                                </tr>
                            </thead>
                            <tbody>
                                <tr class="table-info" align="center">


                                    <td>
                                        <asp:TextBox ID="baslik4" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>



                                </tr>
                            </tbody>
                        </table>
                        

                           
                        <table class="table table-bordered">
                            <thead>
                                <tr align="center">


                                    <th>Resim </th>
                                    <th>Resim Yükle </th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr class="table-info" align="center">



                                    <td width="400">
                                        <asp:Image ID="Image4" Width="100" Height="100" runat="server" />
                                    </td>
                                    <td>

                                        <asp:FileUpload ID="FileUpload4" runat="server" CssClass="file-upload-browse btn btn-outline-success btn-fw" /><br />
                                        <asp:Button ID="fotobtn4" OnClick="Resim_Yukle4" runat="server" Text="Yükle" CssClass="btn btn-inverse-success btn-fw" />
                                        <asp:Label ID="fotolbl4" runat="server" Text=""></asp:Label>
                                    </td>


                                </tr>
                            </tbody>
                        </table>
                        


                        <table class="table table-bordered">
                            <thead>
                                <tr align="center">
                                    <th>Açıklama 5 </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="table-info" align="center">
                                    <td width="40%">
                                        <asp:TextBox ID="metin4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <table><br />
                         <center>    <asp:Button ID="guncelle" runat="server" Text="Güncelle" OnClick="Guncelle" CssClass="btn btn-gradient-primary me-2" />
                        <asp:Label ID="lblHata" runat="server" Text="" Font-Bold></asp:Label></center>
                        </table>
                       
                </form>
            </div>
        </div>
    </div>

</asp:Content>