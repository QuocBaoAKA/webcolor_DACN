<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ngoaithat.aspx.cs" Inherits="DA_CN.ngoaithat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #header_ex {
            background-image: url(hinh/sonnha.jpg);
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.2);
            height: 450px;
        }
        .slogan_ex h1{
            text-align: center;
            color: white;
            font-size: 60px;
            font-family: Playfair Display , serif;
        }
        .secondary-slogans{
            text-align: center;
            color: white;
            font-size: 20px;
            font-family: ource Sans Pro;
            line-height: 24px;
        }
        .icon-slogans i{
            margin-left: 780px;
            margin-top: 5rem;
            color: white;
            font-size: 3em;
            animation: 2.5s ease 0s infinite normal none running bounce;
            position: absolute;
            z-index: 2;
        }
         .icon-slogans i:hover{
             color: #2ecc71;
         }
         /*.exterior_content{
             display: flex; 
             flex-direction: row; 
         }
         .exterior{
             display: flex;
             width: 80%;
             height: 80%;
             box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
             margin: auto;
             margin-top: 2rem;
             margin-bottom: 2rem;
         }
         .colour_g1{
             background-color: rgb(241, 239, 229);
             width: 150px;
             height: 150px;
             margin-right: 1rem;
         }
         .colour_g1 > p{
             text-align: center;
             font-size: 12px;
             color: #737373;        
         }
        .colour_g2{
             background-color: rgb(242, 234, 214);
             width: 150px;
             height: 150px;
         }
         .colour_g2 > p{
             text-align: center;
             font-size: 12px;
             color: #737373;        
         }
         .colour_g3{
             background-color: rgb(244, 233, 214);
             width: 150px;
             height: 150px;
         }
         .colour_g3 > p{
             text-align: center;
             font-size: 12px;
             color: #737373;        
         }*/    
         
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div id="header_ex" class="content-ex">	
				<section class="center_ex">
					<div class="slogan_ex">
						<h1>Bảng Màu Ngoại Thất Jotashield</h1>
					</div>
					<div class="secondary-slogans">
						Bảo vệ Ngoại thất Tối ưu
					</div>
                    <div class="icon-slogans">
						<i class="fas fa-angle-down"></i>
					</div>
				</section>
	</div>--%>
    <div class="exterior_content">
        <div class="exterior">
            <div class="colour_g1">
               <p>SOYA MILK(#f1efe5)</p>  
            </div>
            <div class="colour_g2">
               <p>DAZZLE LIGHT(f2ead6)</p>  
            </div>
            <div class="colour_g3">
               <p>IVORY WHITE(#f1efe5)</p>  
            </div>
        </div>
    </div>
</asp:Content>
