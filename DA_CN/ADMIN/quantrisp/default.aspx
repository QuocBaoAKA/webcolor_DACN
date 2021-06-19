<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin_master/Site2.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DA_CN.ADMIN.defaultad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card{
            width: 90%;
            margin: auto;
            margin-top: 1rem;
          
        }
        .px-3{
            margin-bottom: 5px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="card">
        <div class="card-body">
            <div class="text-right mb-3">
                <%--<a href="./excel.aspx" class="btn btn-success"><i class="fas fa-plus"></i> Thêm từ excel</a>--%>
                <a href="themsp.aspx" class="btn btn-primary"><i class="fas fa-plus"></i> Thêm </a>
            </div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                <div class="table-responsive-xl">
                    <table class="table">
                        <thead>
                            <tr class="text-white" style="background-color: #595A60; color: #fff;">
                                <th>#</th>
                                <th>Mã SP</th>
                                <th style="width: 18%">Tên sản phẩm</th>
                                <th>Mã loại hàng</th>
                                <th>Mã loại màu</th>
                                <th>Hình ảnh</th>
                                <th>Mô tả</th>
                                <th>Đơn giá</th>
                                <th style="width: 10%">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("MaSP") %></td>
                        <td><%# Eval("TenSP") %></td>
                        <td><%# Eval("MaLH") %></td>
                        <td><%# Eval("MaMau") %></td>
                        <td>
                            <img src="../ADMIN/hinhanh/<%# Eval("hinhanh") %>" width="50"/>
                        </td>
                        <td><%# Eval("MoTa") %></td>
                        <td><%# Eval("DonGia") %></td>
                        <td>
                               
                            <a href="./delete.aspx?masp=<%# Eval("maSP") %>" class="btn btn-danger btn-sm px-3" onclick="return confirm('Bạn chắc xóa không.')"><i class="far fa-trash-alt"></i></a>
                            <a href="./suasp.aspx?masp=<%# Eval("maSP") %>" class="btn btn-success btn-sm px-3"><i class="far fa-edit"></i>
                               
                            </a>
                       
                         </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                    </table>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
