<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DA_CN.giohang._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
                <table class="table table-bordered table-hover table-responsive-sm">
                            <thead class="text-white" style="background-color: #595A60;">
                                <tr>
                                    <th>#</th>
                                    <th style="width:30%">Tên sản phẩm</th>
                                    <th>Hình ảnh</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                    <th>Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Container.ItemIndex + 1 %></td>
                            <td data-toggle="tooltip" data-placement="left" title="Nhấn vào tên sản phẩm để đến trang chi tiết sản phẩm"><a href="../chi-tiet-san-pham/?masp=<%# Eval("maSP") %>"><%# Eval("tenSP") %></a></td>
                            <td>
                                <img src="../hinhanh/<%# Eval("HinhAnh") %>" width="50" /></td>
                            <td><%# Eval("gia", "{0:0,00}") %> vnđ</td>
                            <td>
                                <asp:TextBox ID="txt_slMua" runat="server" class="ml-2 form-control w-75" Style="min-width: 60px" type="number" value='<%# Eval("sl") %>' min="1" max='<%# Eval("slTon") %>' required></asp:TextBox>
                            </td>
                            <td><%# Eval("thanhTien", "{0:0,00}") %> vnđ</td>
                            <td>
                                <asp:Button ID="lbtn_capNhat" CommandArgument='<%# Eval("MaSP") %>' CommandName="capNhat" class="btn btn-success btn-sm" runat="server" Text="Cập nhật"></asp:Button>
                                <asp:Button class="btn btn-danger btn-sm" ID="btn_delete" CommandArgument='<%# Eval("MaSP") %>' CommandName="xoa" OnClick="btn_delete_Click" OnClientClick="return confirm('Bạn có chắc xóa sản phẩm này khỏi giỏ hàng!')" runat="server" Text="Xóa"/>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
             </FooterTemplate>
    </asp:Repeater>
    <% if (Session["gioHang"] != null)
                    {
                %>
                <div class="text-right">
                    <asp:Label ID="lb_tongTien" runat="server" Style="font-size: 16pt; color: red;"></asp:Label>
                    <a class="ml-3 btn btn-primary" href="./dat-hang.aspx">Xác nhận giỏ hàng</a>
                </div>
                <%
                    }
                %>
</asp:Content>
