<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DA_CN._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="hinh/banner3.jpg" class="d-block w-100" alt="..." width="980" height="450" />
    </div>
    <div class="carousel-item">
      <img src="hinh/bn2.jpg" class="d-block w-100" alt="..." width="980" height="450"/>
    </div>
    <div class="carousel-item">
      <img src="hinh/bn3.jpg" class="d-block w-100" alt="..." width="980" height="450"/>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    <section id="about" class="site-padding">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="about-image wow fadeInLeft">
							<img src="hinh/nauquacam.jpg" alt="About Image" width="500" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="about-text wow fadeInRight">
							<h3>Màu Duxlux của Năm 2021</h3>
                            <h2>NÂU QUẢ CÁM</h2>
							<p>Năm nay, chúng tôi chọn ra Màu Của Năm có tông trung tính. Nâu Quả Cảm là một màu ấm áp,cân bằng, kết nối chúng ta về với thiên nhiên và những điều giản dị. Sắc Nâu còn có tính nâng đỡ, thúc đẩy sự ổn định, phát triển, tiếp thêm cho ta cam đảm để đương đầu với đổi thay.</p>
							<a href="#" class="btn btn-read-more">Tìm hiểu thêm</a>
						</div>
					</div>
				</div>
			</div>
		</section>
         <!---màu chủ đạo---->
    <%--<section id="feature-work" class="protfolio-padding">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="title">
							<h3>Màu Chủ Đạo 2021</h3>
                            <hr class="stylehr" />
						</div>
					</div>
				</div>
			</div>
			
		<div class="card-group">
            <div class="card1">
		        <img src="hinh/yellow.jpg" alt="Feature Image" />
						<div class="overlay">
                            <div class="text">
								<h4>Illuminating (Vàng Rực Rỡ)</h4>
								<h5>#F5DF4D</h5>
							</div>
						</div>
				</div>
           
                <div class="card1">
						<a href="#">
							<img src="hinh/grey.png" alt="Feature Image" />
						</a>
						
						<div class="overlay">
                            <div class="text">
								Ultimate Gray (Xám)
								#97999B
							</div>
						</div>
                    </div>
               </div>

        </section>--%>
</asp:Content>
