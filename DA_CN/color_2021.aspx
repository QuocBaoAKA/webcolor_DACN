<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="color_2021.aspx.cs" Inherits="DA_CN.color_2021" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
        #header_h1 {
          background-image: url(hinh/colors-featured.jpg);
          box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.2);
          height: 450px;
        }
        #services {
            background:white;
        }
        .slogan_c h1{
            text-align: center;
            color: white;
            font-size: 60px;
            font-family: Playfair Display , serif;
            
        }
        .secondary-slogan_c{
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
        /*color*/
        .menu_color{
            width: 90%;
            margin: auto;
        }
        .menu_option{
            display: flex;
        }
        .menu_color h2{
            margin-top: 2rem;
            font-size: 36px;
            font-family: Playfair Display;
            font-weight: 400;
            line-height: 54px;
            color: #363740;
            text-align: center;
        }
        .menu_color p{
            color: white;
        }
        .color_a1{
            background-color: #dacbb3;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a2 {
            background-color: #d4b58b;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a3{
            background-color: #c79f6e;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a4{
            background-color: #6f5848;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a5{
            background-color: #b07c5a;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a6{
            background-color: #a06c5e;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a7{
            background-color: #bf9f86;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a8{
            background-color: #eae7db;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a9{
            background-color: #dcd1ba;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        /*color2*/
        .menu_color_1{
            width: 90%;
            margin-left: 5rem;
        }
        .menu_option_1{
            display: flex;
            margin-top: 2rem;
        }
        .color_a10 {
            background-color: #cdc6b4;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a11{
            background-color: #b9af9b;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a12{
            background-color: #7f7160;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a13{
            background-color: #bba78e;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a14{
            background-color: #bba78e;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a15{
            background-color: #cebda2;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a16{
            background-color: #6d7d83;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        /*color2*/
        .menu_color_2{
            width: 90%;
            margin-left: 5rem;      
            
        }
        .menu_option_2{
            display: flex;
            margin-top: 2rem;
        }
        .color_a17 {
            background-color: #88959a;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a18 {
            background-color: #9daaaf;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a19 {
            background-color: #887760;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a20 {
            background-color: #8a8774;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a21 {
            background-color: #bebcb2;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
        .color_a22 {
            background-color: #e0ddd2;
            width: 120px;
            height: 120px;
            margin-left: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="header_h1" class="content_color">		
				<section class="center_c">
					<div class="slogan_c">
						<h1>Bộ sưu tập Màu sắc</h1>
					</div>
					<div class="secondary-slogan_c">
						Màu sắc của năm 2021
					</div>
                    <div class="icon-slogan">
						<i class="fas fa-angle-down"></i>
					</div>
				</section>
	</div>
    <div class="menu_color">
        <h2>Màu sắc</h2>
        <div class="menu_option">
            <div class="color_a1">
                <p id="text1">#DACBB3</p>
            </div>
            <div class="color_a2">
                <p>#D4B58B</p>
            </div>
            <div class="color_a3">
                <p>#C79F6E</p>
            </div>
            <div class="color_a4">
                <p>#C79F6E</p>
            </div>
            <div class="color_a5">
                <p>#C79F6E</p>
            </div>
            <div class="color_a6">
                <p>#C79F6E</p>
            </div>
            <div class="color_a7">
                <p>#C79F6E</p>
            </div>
             <div class="color_a8">
                <p>#C79F6E</p>
            </div>
            <div class="color_a9">
                <p>#C79F6E</p>
            </div>
            <div class="color_a10">
                <p>#C79F6E</p>
            </div>
        </div>
        </div>
        <div class="menu_color_1">
            <div class="menu_option_1">
            
            <div class="color_a11">
                <p>#C79F6E</p>
            </div>
            <div class="color_a12">
                <p>#C79F6E</p>
            </div>
            <div class="color_a13">
                <p>#C79F6E</p>
            </div>
            <div class="color_a14">
                <p>#C79F6E</p>
            </div>
            <div class="color_a15">
                <p>#C79F6E</p>
            </div>
            <div class="color_a16">
                <p>#C79F6E</p>
            </div>
                <div class="color_a17">
                <p>#C79F6E</p>
            </div>
            <div class="color_a18">
                <p>#C79F6E</p>
            </div>
            <div class="color_a19">
                <p>#C79F6E</p>
            </div>
            <div class="color_a20">
                <p>#C79F6E</p>
            </div>
        </div>
        </div>
          <div class="menu_color_2">
          <div class="menu_option_2">
            
            <div class="color_a21">
                <p>#C79F6E</p>
            </div>
            <div class="color_a22">
                <p>#C79F6E</p>
            </div>
           </div>
        </div>
    <script>

    </script>
</asp:Content>
