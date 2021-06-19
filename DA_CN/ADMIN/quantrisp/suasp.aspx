<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin_master/Site2.Master" AutoEventWireup="true" CodeBehind="suasp.aspx.cs" Inherits="DA_CN.ADMIN.quantrisp.suasp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="ready__started project__form">
        <div class="container">
            <h3 class="text-center">Form With Floating Label</h3>
            <div class="ready__started-box">
                <form class="main__form">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                 <label for="lastName">Tên sản phẩm*</label>
                                <asp:TextBox ID="TextBox2" class="form-control" aria-describedby="lastName" runat="server" required=""></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="email">Mã loại hàng*</label>
                                <asp:DropDownList ID="DropDownList1"  class="custom-select form-control bg-white border-left-0 border-md h-100 font-weight-bold text-muted" runat="server" required="" DataSourceID="SqlDataSource1" DataTextField="TenLH" DataValueField="MaLH"></asp:DropDownList>
                               
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DACNConnectionString6 %>" SelectCommand="SELECT * FROM [tbl_LoaiHang]"></asp:SqlDataSource>
                               
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                 <label for="contactNumber">Tên màu</label>
                                <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" required="" DataSourceID="SqlDataSource2" DataTextField="TenMau" DataValueField="MaMau"></asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DACNConnectionString6 %>" SelectCommand="SELECT * FROM [tbl_MaMau]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                    <div class="md-form">
                        <span id="hienThiHinhAnh">Hình ảnh: <asp:Image ID="hienThiHinhAnhSauKhiUp" Width="100" runat="server" ImageUrl="Not allowed to load local resource" /></span>
                <div class="file-field">
                    <div class="btn btn-primary btn-sm float-left">
                        <span>Chọn hình ảnh</span>
                        <asp:FileUpload ID="ful_hinhAnh" runat="server" onchange="readURL(this);" required />
                    </div>
                    <div class="file-path-wrapper">
                        <asp:TextBox ID="Txt_tenanh" class="file-path validate" runat="server"></asp:TextBox>
                        
                    </div>
                </div>
            </div>
                    <br />
                    <div class="form-group form-message">
                        <label for="message">Mô tả</label>
                        <asp:TextBox ID="txt_moTa" runat="server" TextMode="MultiLine" class="form-control summernote"></asp:TextBox>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                 <label for="company">Đơn giá*</label>
                                <asp:TextBox ID="TextBox4" class="form-control" runat="server" required=""></asp:TextBox>                                      
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <asp:Button ID="Button1" runat="server" class=" btn btn-get" Text="Thêm"/>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#ContentPlaceHolder1_hienThiHinhAnhSauKhiUp')
                        .attr('src', e.target.result);
                };
                document.getElementById("hienThiHinhAnh").style.display = 'block';
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>
