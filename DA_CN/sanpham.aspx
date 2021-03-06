<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="DA_CN.sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
        .product_item{
            display: inline-flex;
            flex-direction: row;
           
        }
        .products{
            width: 350px;
            height: 480px;
            transition: all 0.5s;
            background-color: #f5f5f5;
            margin: 2rem 8px;
            border-radius: 8px;
        }
        .products:hover{
            
           box-shadow: 0 5px 18px rgba(0, 0, 0, 0.3);
        }
        .products figure img{
            -webkit-transform: scale(1);
	        transform: scale(1);
	        -webkit-transition: .3s ease-in-out;
	        transition: .3s ease-in-out;
            width: 280px;
            height: 300px;
            margin-left: 20px;
            
        }
        .products img:hover{
            	-webkit-transform: scale(1.3);
	            transform: scale(1.3);
        }
        .products h2{
            text-align: center;
            font-size: 24px;
            color: #353535;
        }
        .products p{
            text-align: center;
            font-size: 18px;
            color: #2ed573;
        }
        .products .btn_pro{
            width: 100px;
            height: 40px;
            background-color: #ff4757;
            margin-left: 38%;
            border-radius: 15px; 
            border: none;
            
        }
        .btn_pro a{
            color: white;   
        }
        .btn_pro:hover{
            background: #22c8e5;
        }
        figure {
	        width: 350px;
	        height: 250px; 
	        margin: 0;
	        padding: 0;
	        background: #fff;
	        overflow: hidden;
        }
        .product_sp{
            width: 100%;
            height: 80px;
            border: 1px solid rgba(100, 100, 111, 0.2);
            margin-top: 5px;     
        }
        .product_sp h1{
            text-align: center;
            font-size: 36px;
            line-height: 54px;
            color: #3742fa;
            font-style: normal;
            font-weight: 400;
            font-family: Playfair Display;
        }
        .body_group{
            background: #f2f3f7;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body_group">
    <div class="product_sp">
        <h1>Các sản phẩm sơn</h1>
    </div>
    <div class="container">
    <asp:Repeater ID="Repeater1" runat="server">   
        <ItemTemplate>        
           <div class="product_item">
               <div class="products">
                         <figure><img src="ADMIN/hinhanh/<%#Eval("HinhAnh") %>" class="img_product" /></figure>
                         <h2><%# Eval("TenSP") %></h2>
                         <p><%# Eval("DonGia", "{0:000,000 VND}")%></p>
                         <button class="btn_pro"><a href="/chitietsp.aspx/?masp=<%# Eval("MaSP") %>">Chi Tiết</a></button>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>

    </div>
</asp:Content>
