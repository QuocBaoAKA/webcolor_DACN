<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="chitietsp.aspx.cs" Inherits="DA_CN.chitietsp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
        .card {
            border: none;
            width: 100%;
            margin: auto;
            box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 50px;
        }
        .card_product{
            font-size: 18px;
            margin-top: 5rem;
        }
        .pf1{
            color: #f72626;
            font-size: 1.5em;
        }
        .product {
            background-color: #eee;
        }

        .brand {
            font-size: 13px
        }
        .about {
            font-size: 14px
        }

        .color {
            margin-bottom: 10px
        }

        label.radio {
            cursor: pointer
        }

        label.radio input {
            position: absolute;
            top: 0;
            left: 0;
            visibility: hidden;
            pointer-events: none
        }

        label.radio span {
            padding: 2px 9px;
            border: 2px solid #ff0000;
            display: inline-block;
            color: #ff0000;
            border-radius: 3px;
            text-transform: uppercase
        }

label.radio input:checked+span {
    border-color: #ff0000;
    background-color: #ff0000;
    color: #fff
}

.btn-danger {
    background-color: #ff0000 !important;
    border-color: #ff0000 !important
}

.btn-danger:hover {
    background-color: #da0606 !important;
    border-color: #da0606 !important
}

.btn-danger:focus {
    box-shadow: none
}

.cart i {
    margin-right: 10px
}
.text-uppercase{
    font-size: 2em;
    color: #1572ff;
}
.text-uppercase > p{
    font-size: 14px;
    color: black;
}
.act-price{
    font-size: 18px;
    color: red;
}
.ml-2{
    font-size: 14px;
    color: #55f31d;
}
.sl{
    font-style: normal;
    font-size: 14px;
}
.carousel-item img{
    height: 400px;
}
.carousel-control-prev{
    color: black;
    padding: 2rem;
}
.carousel-control-prev:hover{
    color: red;
}
.carousel-control-next{
    color: black;
}
.carousel-control-next:hover{
    color: red;
}
.px-4{
    color: white;
    border-radius: 5px;
    background-color: blue !important;
}
.popup{

    position: absolute;

    background: white;

    border: 1px solid gray;

    z-index: 10000;

    box-shadow: 3px 3px gray;

}
.img_sr{
     margin: auto;
}
.hotline-bar {
  position: absolute;
  background: rgba(230, 8, 8, 0.75);
  height: 40px;
  width: 180px;
  line-height: 40px;
  border-radius: 3px;
  padding: 0 10px;
  background-size: 100%;
  cursor: pointer;
  transition: all 0.8s;
  -webkit-transition: all 0.8s;
  z-index: 9;
  box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.1);
  border-radius: 50px !important;
  /* width: 175px !important; */
  
  bottom: 37px;
  top: 5rem;
  margin-left: 28rem;
}
.hotline-bar > a {
  color: #fff;
  text-decoration: none;
  font-size: 15px;
  font-weight: bold;
  text-indent: 50px;
  display: block;
  letter-spacing: 1px;
  line-height: 40px;
  font-family: Arial;
}
.fade{
    height: 100%;
}
#myBtn {
  display: none;
  position: fixed;
  bottom: 70px;
  right: 30px;
  z-index: 99;
  font-size: 20px;
  border: none;
  outline: none;
  background-color:#4cd137;
  color: white;
  cursor: pointer;
  padding: 12px;
  border-radius: 15px;
}
.de_pro{
    display: flex;
}
.product{
    margin-top: 1rem;
    margin-right: 5rem;
    width: 600px;
    margin-left: -2rem;
}
    .sp_hr{
    width: 100px;
    margin-left: 1rem;
    margin-bottom: 5px;
    border: 2px solid rgba(0, 0, 0, 0.1);
    background: #55E6C1;
}
    .card_product{
        width: 80%;
        margin: auto;
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        margin-top: 1rem;
        margin-bottom: 1rem;
        text-align: center;
       
    }
    .card1 img{
        width: 500px;
        height: 500px;
    }
    .fb_content{
        width: 80%;
        margin: auto;

    }
    </style>    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0&appId=1035397543626875&autoLogAppEvents=1" nonce="QpDWsGnI"></script>
    <asp:Repeater ID="Repeater1" runat="server">
         
        <ItemTemplate>

          <div class="de_pro">
            <div class="card1">
                 <img src="/ADMIN/hinhanh/<%# Eval("sp.HinhAnh") %>" />
                </div>
                    <div class="col-md-6">
                        <div class="product p-4">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="d-flex align-items-center"></div>
                            </div>
                            <div class="mt-4 mb-3"><span class="text-uppercase text-muted brand">Sơn nhà</span>
                                <hr class="sp_hr" />
                                <h5 class="text-uppercase"><p>Tên sản phẩm:</p> <%# Eval("sp.TenSP") %></h5>
                                
                                <div class="price d-flex flex-row align-items-center"> <span class="act-price"><%# Eval("sp.DonGia", "{0:000,000} VND") %></span>
                                    
                                </div>             
                            </div> 
                            <div class="sizes mt-5">
                                <h6 class="sl" >Số lượng</h6>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                               
                            </div>
                                
                        
        
                </div>      
                
            </div>
        </div>
    </div>
</div> 
         
<div class="card_product">
           <p class="pf1">Mô tả sản phẩm</p>
                                <%# Eval("sp.MoTa") %>
                  </div>
            <!---hhh---->
            <div class="fb_content">
             <div class="fb-comments container" data-href='https://developers.facebook.com/docs/plugins/<%# Eval("sp.MaSP") %>' data-numposts="5" data-width="100%"></div>
            </div>
          </ItemTemplate>   
    </asp:Repeater>
 
</asp:Content>
