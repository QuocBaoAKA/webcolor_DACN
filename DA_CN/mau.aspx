<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="mau.aspx.cs" Inherits="DA_CN.mau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card_color_group{
            width: 80%;
            height: 100%;
            background: white;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            margin: auto;
            margin-top: 5rem;
            margin-bottom: 5rem;
        }
        .card_color > h1{
            text-align: center;
            font-size: 22px;
            
        }
        .btn1{
            width: 150px;
            height: 80px;
            background: red;
            border: none;
            color: white;
            margin-left: 5rem;
            margin-top: 0.5rem;
            transition: transform .2s;
            margin-right: 4px;
            margin-bottom: 1rem;
        }
        .btn1:hover{
            
            transform: scale(1.3);
        }
        .btn2{
            width: 150px;
            height: 80px;
            background: #10EB11;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn2:hover{
            
            transform: scale(1.3);
        }
        .btn3{
            width: 150px;
            height: 80px;
            background:#10A2E6;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn3:hover{
            
            transform: scale(1.3);
        }
        .btn4{
            width: 150px;
            height: 80px;
            background: #9811F0;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn4:hover{
            
            transform: scale(1.3);
        }
        .btn5{
            width: 150px;
            height: 80px;
            background: #F0F911;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn5:hover{
            
            transform: scale(1.3);
        }
        .btn6{
            width: 150px;
            height: 80px;
            background:#FFFFF3;
            border: none;
            color: black;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn6:hover{
            transform: scale(1.3);
        }
        .btn7{
            width: 150px;
            height: 80px;
            background: #C7C7BD;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn7:hover{
            
            transform: scale(1.3);
        }
        /*image_header*/
        .content-block{
          background:transparent no-repeat center center fixed;
          -webkit-background-size:100%;
          -moz-background-size:100%;
          -o-background-size:100%;
          background-size:100%;
          background-size:cover;
          -webkit-background-size:cover;
          -moz-background-size:cover;
          -o-background-size:cover;
          overflow:hidden;
          padding: 60px 0;
        }
        .parallax{
          padding: 80px 0;
        }

        .block-body {
          margin-top: 60px;
        }

        #header {
          background-image: url(hinh/clll.jpg);
          box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.2);
          height: 450px;
        }
        #services {
            background:white;
        }
        .slogan h1{
            text-align: center;
            color: white;
            font-size: 60px;
            font-family: Playfair Display , serif;
        }
        .secondary-slogan{
            text-align: center;
            color: white;
            font-size: 20px;
            font-family: ource Sans Pro;
            line-height: 24px;
        }
        .icon-slogan i{
            margin-left: 780px;
            margin-top: 5rem;
            color: white;
            font-size: 3em;
            animation: 2.5s ease 0s infinite normal none running bounce;
            position: absolute;
            z-index: 2;
        }
         .icon-slogan i:hover{
             color: #2ecc71;
         }
         .card_color_group{
            width: 80%;
            height: 100%;
            background: white;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            margin: auto;
            margin-top: 5rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div id="header" class="content-block">
				
				<section class="center">
					<div class="slogan">
						<h1>Bộ sưu tập Màu sắc</h1>
					</div>
					<div class="secondary-slogan">
						Khám phá và lấy cảm hứng từ bộ sưu tập màu sắc mới nhất của chúng tôi
					</div>
                    <div class="icon-slogan">
						<i class="fas fa-angle-down"></i>
					</div>
				</section>
	</div>
    <!----search---->
    <div class="card_color_group">
    <div class="card_color">
            <h1>Bạn cần tìm màu gì</h1>
            <div class="c_color">
               <button class="btn1" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Red</button>
               <button class="btn2" type="button" data-toggle="collapse" data-target="#collapseExample1" aria-expanded="false" aria-controls="collapseExample1">Xanh lá</button>
               <button class="btn3">Xanh dương</button>
               <button class="btn4">Màu tím</button>
               <button class="btn5">Vàng</button>
               <button class="btn6">Trắng</button>
               <button class="btn7">Red</button>
            </div>
         </div>   
        </div>
    <div class="card_color_group">
        <div class="collapse" id="collapseExample">
            <div class="card card-body">
                Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.
            </div>
        </div>
    </div>
    <div class="card_color_group">
        <div class="collapse" id="collapseExample1">
            <div class="card card-body">
                Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.
            </div>
        </div>
    </div>
</asp:Content>
