<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Perpustakaan_kel11.View.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Gaya tambahan untuk judul halaman */
        .page-title {
            color: #dc3545; /* Warna judul */
            text-align: center; /* Posisi teks ke tengah */
        }

        /* Gaya tambahan untuk card */
        .card {
            border-radius: 15px; /* Sudut elemen card */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Bayangan lembut */
            transition: box-shadow 0.3s ease; /* Transisi bayangan */
        }

        /* Efek bayangan tambahan saat hover */
        .card:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        /* Background untuk card Jumlah Produk */
        .bg-produk {
            background-color: #dc3545; /* Warna latar belakang */
        }

        /* Background untuk card Jumlah Kategori */
        .bg-kategori {
            background-color: #ffc107; /* Warna latar belakang */
        }

        /* Background untuk card Keuangan */
        .bg-keuangan {
            background-color: #007bff; /* Warna latar belakang */
        }

        /* Background untuk card Jumlah User */
        .bg-user {
            background-color: #28a745; /* Warna latar belakang */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h2 class="page-title mt-3">Dashboard Admin</h2>
                <hr class="bg-danger">
            </div>
        </div>
        <!-- Konten Dashboard -->
        <!-- Konten Jumlah Produk -->
        <div class="row mt-5">
            <div class="col-md-4">
                <div class="card bg-success rounded">
                    <div class="card-body">
                        <div class="d-flex justify-content-center">
                            <img src="../../Asset/Images/rak_buku.png" style="width: 65px;" />
                        </div>
                        <h3 class="text-center text-white mt-3">Jumlah Produk</h3>
                        <h1 class="text-center text-white" runat="server" id="PNumTb">...</h1>
                    </div>
                </div>
            </div>
            <!-- Konten Jumlah Kategori -->
            <div class="col-md-4">
                <div class="card bg-warning rounded">
                    <div class="card-body">
                        <div class="d-flex justify-content-center">
                            <img src="../../Asset/Images/books-stack-of-three.png" style="width: 65px;" />
                        </div>
                        <h3 class="text-center text-white mt-3">Jumlah Kategori</h3>
                        <h1 class="text-center text-white" runat="server" id="CatNumTb">...</h1>
                    </div>
                </div>
            </div>
            <!-- Konten Keuangan -->
            <div class="col-md-4">
                <div class="card bg-primary rounded">
                    <div class="card-body">
                        <div class="d-flex justify-content-center">
                            <img src="../../Asset/Images/rupiah.png" style="width: 65px;" />
                        </div>
                        <h3 class="text-center text-white mt-3">Pemasukan</h3>
                        <h1 class="text-center text-white" runat="server" id="FinanceTb">...</h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- Konten Jumlah User -->
        <div class="row mt-5">
            <div class="col-md-4 offset-md-4">
                <div class="card bg-info rounded">
                    <div class="card-body">
                        <div class="d-flex justify-content-center">
                            <img src="../../Asset/Images/user.png" style="width: 65px;" />
                        </div>
                        <h3 class="text-center text-white mt-3">Jumlah User</h3>
                        <h1 class="text-center text-white" runat="server" id="UserNumTb">...</h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- Konten Gambar Perpustakaan -->
        <div class="row mt-5">
            <div class="col-md-12 d-flex justify-content-center">
                <img src="../../Asset/Images/perpustakaan.jpg" style="height: 450px;" />
            </div>
        </div>
    </div>
</asp:Content>
