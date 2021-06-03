<%@ Page Title="" Language="C#" MasterPageFile="~/site2.Master" AutoEventWireup="true" CodeBehind="QTSP.aspx.cs" Inherits="DA_CN.QTSP" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-control{
            width: 600px;
            height: 45px;
            border-radius: 15px;  
            border: 1px solid #dfe6e9;
            outline: none;
           
            margin-bottom: 1rem;         
        }
        @media(max-width: 700px){
            .form-control{
                width: 90%;
            }
        }
        .btn_edit{
            width: 150px;
            height: 35px;
            border: none;
            border-radius: 15px;
            background: #2ed573;
            color: white;
            margin-right: 1rem;
        }
        .btn_edit:hover{
            background-color: #ff4757;
        }
        .btn_up{
            width: 150px;
            height: 35px;
            border: none;
            border-radius: 15px;
            background: #1e90ff;
            color: white;
            margin-left: 1rem;
        }
        .btn_up:hover{
            background: red;

        }
        .d-flex{
            text-align: center;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="row">
			<div class="col-8 col-m-12 col-sm-12">
				<div class="card">
					<div class="card-header">
                        <label for="validationDefault01" class="form-label">Mã sản phẩm</label><br />
                        <asp:TextBox ID="TextBox1" CssClass="form-control"  runat="server" required=""></asp:TextBox><br />
                        <label for="validationDefault01" class="form-label">Tên sản phẩm</label><br />
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox><br />
        
                        <label for="validationDefault01" class="form-label">Mã loại hàng</label><br />
                        <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="TenLH" DataValueField="MaLH"></asp:DropDownList><br />
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DACNConnectionString5 %>" SelectCommand="SELECT * FROM [tbl_LoaiHang]"></asp:SqlDataSource>
                        <label for="validationDefault01" class="form-label">Mã Màu</label><br />
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="TenMau" DataValueField="MaMau"></asp:DropDownList><br />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DACNConnectionString4 %>" SelectCommand="SELECT [MaMau], [TenMau] FROM [tbl_MaMau]"></asp:SqlDataSource>
                        <label for="validationDefault01" class="form-label">Hình sản phẩm</label><br />
                        <asp:FileUpload ID="FileUpload1" runat="server" /><asp:ImageMap ID="ImageMap1" runat="server" Width="150px" Height="150px"></asp:ImageMap><br />
                        <label for="validationDefault01" class="form-label">Mô tả</label><br />
                        <CKEditor:CKEditorControl runat="server" ID="ckeditor1"  ToolbarLocation="Top"   Height="358px"></CKEditor:CKEditorControl><br />
                        <label for="validationDefault01" class="form-label">Đơn giá</label><br />
                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                        <div class="d-flex justify-content-center">
                            <asp:Button ID="Button1" runat="server" CssClass="btn_edit" Text="Thêm" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" CssClass="btn_up" Text="Sửa" OnClick="Button2_Click" />
                        </div>
        </div>
    </div>
</div>
    </div>
    
        <%--<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <table class="table"> 
                     <tr>
                         <th scope="col">Mã sản phẩm</th>
                         <th scope="col">Tên sản phẩm</th>
                         <th scope="col">Mã loại hàng</th>
                         <th scope="col">Mã Màu</th>
                         <th scope="col">Hình ảnh</th>
                         <th scope="col">Mô tả</th>
                         <th scope="col">Đơn giá</th>
                     </tr>
            </HeaderTemplate>
           <ItemTemplate>
                     <tbody>
                        <tr>
                          <td>
                              <%# Eval("MaSP") %>
                          </td>
                          <td>
                              <%# Eval("TenSP") %>
                          </td>
                          <td>
                              <%# Eval("MaLH") %>
                          </td>
                            <td>
                              <%# Eval("MaMau") %>
                          </td>
                            <td>
                              <%# Eval("HinhAnh") %>
                          </td>
                            <td>
                              <%# Eval("MoTa") %>
                          </td>
                            <td>
                              <%# Eval("DonGia") %>
                          </td>
                        </tr>
                         </tbody>   
                    </table>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DACNConnectionString3 %>" SelectCommand="SELECT * FROM [tbl_SanPham]"></asp:SqlDataSource>
    </div>--%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="MaSP" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" />
                <asp:BoundField DataField="MaMau" HeaderText="Màu sắc " />
                <asp:BoundField DataField="MaLH" HeaderText="Loại hàng" />
                <asp:ImageField DataImageUrlField="HinhAnh" HeaderText="Hình ảnh">
                    <ControlStyle Height="150px" Width="150px" />
                    <FooterStyle Height="150px" Width="150px" />
                    <HeaderStyle Height="150px" Width="150px" />
                    <ItemStyle Height="150px" Width="150px" />
                </asp:ImageField>
                <asp:BoundField DataField="MoTa" HeaderText="Mô tả" />
                <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" />
                <asp:CommandField HeaderText="Chọn" ShowSelectButton="True" />
                <asp:CommandField DeleteText="Xóa" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
      
</asp:Content>
