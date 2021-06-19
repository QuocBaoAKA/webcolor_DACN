<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin_master/Site2.Master" AutoEventWireup="true" CodeBehind="defauladmin.aspx.cs" Inherits="DA_CN.defauladmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .img_ad{
            width: 80%;
            background-color: #fff;
            margin: auto;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            margin-top: 2rem;
        }
        .img_ad img{
            width: 100%;
            height: 500px;
            margin-top: 2rem;
           
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="img_ad">
        <img src="/ADMIN/hinh/admin.png" />
    </div>
</asp:Content>
