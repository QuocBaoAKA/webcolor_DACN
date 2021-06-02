<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DA_CN._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .row h1{
            text-align: center;
            font-size: 25px;
            margin-bottom: 1rem;    
        }
        
       /*css video*/
       .mindcraft-action{
	    text-align: center;
        background-color: #fafafa;
        }
        .mindcraft-action h2{
	        margin: 0px;
	        margin-bottom: 20px;
        }
        iframe {
	        width: 700px;
	        height: 470px;
	        border:none;
	        padding-top: 2%;
	        padding-bottom: 1%;
        }
        /*Liên hệ*/
        .best {
         background: #fff;
         margin-top: 50px;
        }
            .best .titlepage h2 {
                color: #030100;
                margin-bottom: 20px;
                text-align: center;
                font-size: 3em;
            }   
             

        .best .titlepage span {
             color: #23262d;
             font-size: 17px;
             line-height: 28px;
        }

        .best_box {
             text-align: center;
             background-color: #00a8ff;
             border-radius: 20px;
             padding: 30px 20px;
             margin: auto;  
             margin-bottom: 30px;
             width: 300px;
             height: 180px;
             
        }
        .best_box:hover{
            background: #2ed573;
        }
        .best_box h4 {
             color: #fff;
             text-transform: uppercase;
             font-size: 30px;
             line-height: 40px;
             font-weight: 500;
             padding: 0;
        }

        .best_box p {
             color: #fff;
             font-size: 18px;
             line-height: 28px;
             padding-top: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!---carousel--->
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="hinh/n2.png" class="d-block w-100" alt="..." />
    </div>
    <div class="carousel-item">
      <img src="hinh/n3.jpg" class="d-block w-100" alt="..." />
    </div>
    <div class="carousel-item">
      <img src="hinh/n4.jpg" class="d-block w-100" alt="..." />
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    <!---->
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
							<h3>Màu Jotun của Năm 2021</h3>
                            <h2>NÂU QUẢ CÁM</h2>
							<p>Năm nay, chúng tôi chọn ra Màu Của Năm có tông trung tính. Nâu Quả Cảm là một màu ấm áp,cân bằng, kết nối chúng ta về với thiên nhiên và những điều giản dị. Sắc Nâu còn có tính nâng đỡ, thúc đẩy sự ổn định, phát triển, tiếp thêm cho ta cam đảm để đương đầu với đổi thay.</p>
							<a href="#" class="btn btn-read-more">Tìm hiểu thêm</a>
						</div>
					</div>
				</div>
			</div>
		</section>
    <div id="cont" class="container">
    <div class="row">
        <h1 class="text_da">Dự án - Công trình tiêu biểu sử dụng sơn Jotun</h1>    
        <div class="col-md-4 col-xs-4">
            <a href="#imageModal4" class="portfolio-link" data-toggle="modal">
            <img src="hinh/CT1.jpg" class="img-responsive" alt="" />
            </a>
        </div>
        <div class="col-md-4 col-xs-4">
            <a href="#imageModal5" class="portfolio-link" data-toggle="modal">
            <img src="hinh/CT2.jpg" class="img-responsive" alt="" />
            </a>
        </div>
        <div class="col-md-4 col-xs-4">
            <a href="#imageModal6" class="portfolio-link" data-toggle="modal">
            <img src="hinh/CT3.jpg" class="img-responsive" alt="" />
            </a>
        </div>
        </div>
    </div>
    <div class="container">
    <div class="row">
        <div class="col-md-4 col-xs-4">
            <a href="#imageModal4" class="portfolio-link" data-toggle="modal">
            <img src="hinh/CT4.jpg" class="img-responsive" alt="" />
            </a>
        </div>
        <div class="col-md-4 col-xs-4">
            <a href="#imageModal5" class="portfolio-link" data-toggle="modal">
            <img src="hinh/C5.jpg" class="img-responsive" alt="" />
            </a>
        </div>
        <div class="col-md-4 col-xs-4">
            <a href="#imageModal6" class="portfolio-link" data-toggle="modal">
            <img src="hinh/CT7.jpg" class="img-responsive" alt="" />
            </a>
        </div>
        </div>
    </div>
    <!---video--->
        <section id="mindcraft-action" class="mindcraft-action section">
			<div class="container">
				<h2>VIDEO VỀ CHÚNG TÔI</h2>
				<div>
					<iframe width="560" height="315" src="https://www.youtube.com/embed/yWL0Z0BIsws" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>	
				</div>
			</div>
		</section>
    <!---lienhe---->
    <div id="lienhe" class="best">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Liên hệ</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-4">
                  <div class="best_box">
                     <h4><i class="fas fa-map-marker-alt"></i></h4>
                     <p>Đường Số 6, Dĩ An, Bình Dương, Việt Nam</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="best_box">
                     <h4><i class="fas fa-phone-alt"></i></h4>
                     <p>+842743515515</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="best_box">
                     <h4><i class="fas fa-envelope"></i></h4>
                     <p>Jotun.vn@gmail.com</p>
                  </div>
               </div>
               
            </div>
         </div>
      </div>


    <!---end--->
    <!---end--->
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
