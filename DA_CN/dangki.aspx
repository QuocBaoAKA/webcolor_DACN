<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dangki.aspx.cs" Inherits="DA_CN.dangki" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
  *:focus {
    outline: none;
} 

#icon {
  width:30%;
}
.dnfs{
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;

}
.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
  margin: auto;
  min-height: 100%;
  padding: 20px;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: 450px;
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}

#formFooter {
  background-color: #f6f6f6;
  border-top: 1px solid #dce8f1;
  padding: 25px;
  text-align: center;
  -webkit-border-radius: 0 0 10px 10px;
  border-radius: 0 0 10px 10px;
}
/* TABS */

h2.inactive {
  color: #cccccc;
}

h2.active {
  color: #0d0d0d;
  border-bottom: 2px solid #5fbae9;
}
input[type=button], input[type=submit], input[type=reset]  {
  background-color: #56baed;
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  text-transform: uppercase;
  font-size: 13px;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: #39ace7;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95);
  -webkit-transform: scale(0.95);
  -o-transform: scale(0.95);
  -ms-transform: scale(0.95);
  transform: scale(0.95);
}

input[type=text] {
    font-family: sans-serif;
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus {
  background-color: #fff;
  border-bottom: 2px solid #5fbae9;
}
.btn-dk{
    width: 120px;
    height: 50px;
    border-radius: 15px;
    background: #2ed573;
    border: none;
    margin-left: 10px;
    font-weight: 700;
    color: white;
}
.btn-dk:hover{
    background: #1e90ff;
    color: white;
}
.main {
    background: #f1f1f1;
    min-height: 100vh;
    display: flex;
    justify-content: center;
}
.form {
    width: 360px;
    min-height: 100px;
    padding: 32px 24px;
    text-align: center;
    background: #fff;
    border-radius: 2px;
    margin: 24px;
    align-self: center;
    box-shadow: 0 2px 5px 0 rgba(51,62,73,.1);
}
.form .heading {
    font-size: 2rem;
}
.form .desc {
    text-align: center;
    color: #636d77;
    font-size: 1.6rem;
    font-weight: lighter;
    line-height: 2.4rem;
    margin-top: 16px;
    font-weight: 300;
}

.form-group {
    display: flex;
    margin-bottom: 16px;
    flex-direction: column;
}

.form-label,
.form-message {
    text-align: left;
}

.form-label {
    font-weight: 700;
    padding-bottom: 6px;
    line-height: 1.8rem;
    font-size: 1.4rem;
}

.form-control {
    height: 40px;
    padding: 8px 12px;
    border: 1px solid #b3b3b3;
    border-radius: 3px;
    outline: none;
    font-size: 1.4rem;
}

.form-control:hover {
    border-color: #1dbfaf;
}

.form-group.invalid .form-control {
    border-color: #f33a58;
}

.form-group.invalid .form-message {
    color: #f33a58;
}

.form-message {
    font-size: 1.2rem;
    line-height: 1.6rem;
    padding: 4px 0 0;
}

.form-submit {
    outline: none;
    background-color: #1dbfaf;
    margin-top: 12px;
    padding: 12px 16px;
    font-weight: 600;
    color: #fff;
    border: none;
    width: 100%;
    font-size: 14px;
    border-radius: 8px;
    cursor: pointer;
}

.form-submit:hover {
    background-color: #1ac7b6;
}

.spacer {
    margin-top: 36px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper fadeInDown">
            <div id="formContent">  
                <div class="fadeIn first">
                  <img src="hinh/logo.jpg" id="icon" alt="User Icon" />
                    <h1>Đăng Ký</h1>
                      <asp:TextBox ID="TextBox3" placeholder="username" runat="server"></asp:TextBox>
                      <asp:TextBox ID="TextBox4" runat="server" placeholder="password" TextMode="Password" CssClass="dnfs"></asp:TextBox>
                      <asp:TextBox ID="txt_nhaplai" runat="server" placeholder="Nhập lại password" TextMode="Password" CssClass="dnfs"></asp:TextBox>
                      <asp:TextBox ID="TextBox5" runat="server" placeholder="Họ tên"></asp:TextBox>
                      <asp:TextBox ID="TextBox6" runat="server" placeholder="Địa chỉ"></asp:TextBox> 
                      <asp:TextBox ID="TextBox7" runat="server" placeholder="Email"></asp:TextBox>
                        <asp:TextBox ID="TextBox8" runat="server" placeholder="Số điện thoại"></asp:TextBox> 
                    <p>
                        <asp:Button ID="Button2" runat="server" CssClass="fadeIn  fourth" Text="Đăng Ký" OnClick="Button2_Click" />
                    </p>
                </div>
                <div id="formFooter">
                    <p>Quay về</p><a class="underlineHover" href="login.aspx"> Đăng Nhập</a>
              </div>
            </div>      
          </div> 
    
</asp:Content>
