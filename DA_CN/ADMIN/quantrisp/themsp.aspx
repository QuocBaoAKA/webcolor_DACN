<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin_master/Site2.Master" AutoEventWireup="true" CodeBehind="themsp.aspx.cs" Inherits="DA_CN.ADMIN.quantrisp.themsp" ValidateRequest="false"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card{
            width: 70%;
            margin: auto;
            margin-top: 2rem;
            box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;
        }
        .my-4{
            text-align: center;
        }
        /**/
        .btn-get {
          font-size: 1.8rem;
          font-family: "Quicksand", sans-serif;
          color: #fff !important;
          text-transform: capitalize;
          background-image: -webkit-gradient(linear, left top, right top, from(#b70b83), to(#33077f));
          background-image: linear-gradient(to right, #b70b83, #33077f);
          padding: 10px 20px 10px;
          position: relative;
          border: 0;
          border-radius: 5px;
          overflow: hidden;
          text-transform: capitalize !important;
        }

        .btn-get::before {
          position: absolute;
          content: '';
          top: 0;
          height: 100%;
          width: 0;
          left: 0;
          background-image: -webkit-gradient(linear, left top, right top, from(#33077f), to(#b70b83));
          background-image: linear-gradient(to right, #33077f, #b70b83);
          -webkit-transition: .5s ease-out;
          transition: .5s ease-out;
        }

        .btn-get:hover::before {
          width: 100%;
        }

        .btn-get span {
          position: relative;
          z-index: 2;
        }
        .main__form .form-group {
          position: relative;
          margin-bottom: 2rem;
        }

        .main__form .form-group label {
          font-family: "Quicksand", sans-serif;
          font-size: 1.6rem;
          color: #575757;
          padding: 0 2.5rem;
          position: absolute;
          top: 50%;
          -webkit-transform: translateY(-50%);
                  transform: translateY(-50%);
          z-index: 0;
          -webkit-transition: .3s all;
          transition: .3s all;
        }
        .btn-flex{
            display: flex;
           
            margin-bottom: 2rem;
        }
        .btn-themsp{
          margin: auto;
          width: 150px;
          height: 40px;
          border: none;
          border-radius: 5px;
          background: #2ed573;
          font-weight: bold;
          font-size: 1.1em;
          color: white;
          outline: none;
        }
        .btn-themsp:active {
          animation: gradient 100ms;
          background: #1e90ff;
          color: #fff;
          box-shadow: none;
        }
        .btn_huy{
          margin: auto;
          width: 150px;
          height: 40px;
          border: none;
          border-radius: 5px;
          background: #ff4757;
          font-weight: bold;
          font-size: 1.1em;
          color: white;
          outline: none;
        }
        .btn_huy{
            margin-left: 3rem;
        }
        .btn_nhaplai{
          margin: auto;
          width: 150px;
          height: 40px;
          margin-left: 1rem;
          border: none;
          border-radius: 5px;
          background: #feca57;
          font-weight: bold;
          font-size: 1.1em;
          color: white;
          outline: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="card">
              <%--<div class="col-md-4">
                <div class="form-outline">
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" required=""></asp:TextBox>
                  <label for="validationCustom01" class="form-label">Mã sản phẩm</label> 
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-outline">
                    <asp:TextBox ID="TextBox2" class="form-control" runat="server" required="" ></asp:TextBox>
                  <label for="validationCustom02" class="form-label">Tên sản phẩm</label>
                  
                </div>
              </div>
            <div class="col-md-6">
                <div class="form-outline">
                    <asp:DropDownList ID="DropDownList1" class="mdb-select md-form colorful-select dropdown-primary" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenLH" DataValueField="MaLH"></asp:DropDownList>   
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DACNConnectionString6 %>" SelectCommand="SELECT * FROM [tbl_LoaiHang]"></asp:SqlDataSource>
                </div>
            </div>
          <div class="col-md-6">
            <div class="form-outline">
                <asp:DropDownList ID="DropDownList2" class="mdb-select md-form colorful-select dropdown-primary" runat="server" DataSourceID="SqlDataSource2" DataTextField="TenMau" DataValueField="MaMau"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DACNConnectionString6 %>" SelectCommand="SELECT * FROM [tbl_MaMau]"></asp:SqlDataSource>
            </div>
          </div>
              <div class="col-md-6">
                <div class="form-outline">
                  <input type="text" class="form-control" id="validationCustom03" required />
                  <label for="validationCustom03" class="form-label">City</label>
                  <div class="invalid-feedback">Please provide a valid city.</div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-outline">
                  <input type="text" class="form-control" id="validationCustom05" required />
                  <label for="validationCustom05" class="form-label">Zip</label>
                  <div class="invalid-feedback">Please provide a valid zip.</div>
                </div>
              </div>
              <div class="col-12">
                <div class="form-check">
                  <input
                    class="form-check-input"
                    type="checkbox"
                    value=""
                    id="invalidCheck"
                    required
                  />
                  <label class="form-check-label" for="invalidCheck">
                    Agree to terms and conditions
                  </label>
                  <div class="invalid-feedback">You must agree before submitting.</div>
                </div>
              </div>
              <div class="col-12">
                <button class="btn btn-primary" type="submit">Submit form</button>
              </div>
</form>
     </div>   --%>
         <section class="ready__started project__form">
        <div class="container">
            <h3 class="text-center">Thêm sản phẩm mới</h3>
            <div class="ready__started-box">
                <form class="main__form">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="firstName">Mã sản phẩm*</label>
                                <asp:TextBox ID="TextBox1" class="form-control" runat="server" aria-describedby="firstName" required=""></asp:TextBox> 
                            </div>
                        </div>
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
                                <label for="email">Tên loại hàng*</label>
                                <asp:DropDownList ID="DropDownList1"  class="custom-select form-control bg-white border-left-0 border-md h-100 font-weight-bold text-muted" runat="server" required="" DataSourceID="SqlDataSource1" DataTextField="TenLH" DataValueField="MaLH">
                                    
                                </asp:DropDownList>
                               
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DACNConnectionString6 %>" SelectCommand="SELECT * FROM [tbl_LoaiHang]"></asp:SqlDataSource>
                               
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                 <label for="contactNumber">Màu sản phẩm*</label>
                                <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" required="" DataSourceID="SqlDataSource2" DataTextField="TenMau" DataValueField="MaMau">
                                    
                                </asp:DropDownList>
                               
                               
                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DACNConnectionString6 %>" SelectCommand="SELECT * FROM [tbl_MaMau]"></asp:SqlDataSource>
                                   
                            </div>
                        </div>
                    </div>
                    <span id="hienThiHinhAnh">
                    <asp:Image ID="hienThiHinhAnhSauKhiUp" Width="100" runat="server" /></span>
                    <div class="md-form">
                <div class="file-field">
                    <div class="btn btn-primary btn-sm float-left">
                        <span>Chọn hình ảnh</span>
                        <asp:FileUpload ID="ful_hinhAnh" runat="server" onchange="readURL(this);" required />
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path validate" type="text" placeholder="Tên ảnh" disabled />
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
                    <div class="btn-flex">
                           <a href="../quantrisp/" class="btn_huy">Hủy</a>
                          
                            <asp:Button ID="Button1" runat="server" class=" btn-themsp" Text="Thêm" OnClick="Button1_Click" />
                          <button type="reset" class="btn_nhaplai">Nhập lại</button>
                         
                       </div>
                </form>
            </div>
        </div>
    </section>
                </div>
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
