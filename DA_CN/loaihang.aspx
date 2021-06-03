<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="loaihang.aspx.cs" Inherits="DA_CN.loaihang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card {
            width: 80%;
            margin: auto;
            margin-top: 2rem;
            height: 250px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <form>
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Mã loại hàng</label>
              <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
            
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Tên loại hàng</label>
              <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
          </div>
            <div class="d-flex justify-content-center">
                <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Thêm" OnClick="Button1_Click" />
                &nbsp; &nbsp; &nbsp;
                <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Sửa" OnClick="Button2_Click" />
                 &nbsp; &nbsp; &nbsp;
                <asp:Button ID="Button3" CssClass="btn btn-warning" runat="server" Text="Làm Mới" OnClick="Button3_Click" />
            </div>
        </form>
    </div>
    <div class="card">
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="700px" Height="250px" DataKeyNames="MaLH" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="MaLH" HeaderText="Mã loại hàng" />
                <asp:BoundField DataField="TenLH" HeaderText="Tên loại hàng" />
                <asp:CommandField HeaderText="Tác Vụ" ShowSelectButton="True" />
                <asp:CommandField DeleteText="Xóa" ShowDeleteButton="True" />
            </Columns>

            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

        </asp:GridView>
            </center>
    </div>
</asp:Content>
