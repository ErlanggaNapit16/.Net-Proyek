<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Perpustakaan_kel11.View.Admin.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* CSS tambahan untuk judul halaman */
        .page-title {
            color: #dc3545; /* Warna judul */
            text-align: center; /* Posisi teks ke tengah */
            margin-bottom: 20px; /* Jarak bawah */
        }

        /* CSS tambahan untuk ikon user */
        .user-icon {
            width: 52px; /* Lebar ikon */
        }

        /* CSS tambahan untuk tombol */
        .btn {
            border-radius: 5px; /* Sudut tombol */
            font-weight: bold; /* Ketebalan teks */
            margin-right: 5px; /* Jarak antar tombol */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-8">
                <!-- Judul halaman -->
                <img src="../../Asset/Images/books-stack-of-three.png" class="user-icon">
                <h4 class="text-danger page-title">Kelola User</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h2 class="text-danger">Detail User</h2>
                <div class="mb-3">
                    <label for="UNameTb" class="form-label">Nama User</label>
                    <input type="text" class="form-control" id="UNameTb" runat="server">
                </div>

                <div class="mb-3">
                    <label for="UEmailTb" class="form-label">Email User</label>
                    <input type="email" class="form-control" id="UEmailTb" runat="server">
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Password User</label>
                    <input type="text" class="form-control" id="UserPassTb" runat="server">
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Telepon Pengguna</label>
                    <input type="text" class="form-control" id="PhoneTb" runat="server">
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Alamat Pengguna</label>
                    <input type="text" class="form-control" id="UserAddressTb" runat="server">
                </div>

                <!-- Pesan kesalahan -->
                <label id="ErrMsg" runat="server" class="text-danger"></label>
                <br />
                <!-- Tombol untuk edit, tambah, dan hapus -->
                <asp:Button Text="Edit" class="btn btn-primary" runat="server" ID="EditBtn" OnClick="EditBtn_Click"  />
                <asp:Button Text="Add" class="btn btn-warning" runat="server" ID="SaveBtn" OnClick="SaveBtn_Click" />
                <asp:Button Text="Delete" class="btn btn-danger" runat="server" ID="DeleteBtn" OnClick="DeleteBtn_Click" />
            </div>
            <div class="col-md-8">
                <!-- Tabel user -->
                <asp:GridView runat="server" class="table table-hover" ID="UserGV"  OnSelectedIndexChanged="UserGv_SelectedIndexChanged" AutoGenerateSelectButton="True">
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
