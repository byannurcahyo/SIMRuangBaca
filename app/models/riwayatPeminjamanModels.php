<?php 

class riwayatPeminjamanModels {
	public $conn;

	public $riwayatPeminjamanModel = [];

	public function conn () {
		$conn = mysqli_connect("localhost","root","","perpus");
		return $conn;
	}

	public function getRiwayatPeminjamanModel ($query = "SELECT * FROM riwayatPeminjaman") {


		$q = mysqli_query($this->conn(),$query);

		while ( $rows = mysqli_fetch_assoc($q) ) {
			$this->riwayatPeminjamanModel[] = $rows;
		}

		return $this->riwayatPeminjamanModel;
	}

	public function tambah($data) {
        $kodeTransaksi = htmlspecialchars($data["kodeTransaksi"]);
        $nama = htmlspecialchars($data["nama"]);
        $judul = htmlspecialchars($data["judul"]);
        $tanggalPeminjaman = htmlspecialchars($data["tanggalPeminjaman"]);
        $tanggalPengembalian = htmlspecialchars($data["tanggalPengembalian"]);
        $noBuku = htmlspecialchars($data["noBuku"]);
        $nis = htmlspecialchars($data["nis"]);
        $denda = htmlspecialchars($data["denda"]);
        $keterangan = htmlspecialchars($data["keterangan"]);
        $status = htmlspecialchars($data["status"]);

        $query = "INSERT INTO riwayatPeminjaman (kodeTransaksi, nama, judul, tanggalPeminjaman, tanggalPengembalian, noBuku, nis, denda, keterangan, status) 
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        $stmt = mysqli_prepare($this->conn(), $query);
        mysqli_stmt_bind_param($stmt, 'ssssssssss', $kodeTransaksi, $nama, $judul, $tanggalPeminjaman, $tanggalPengembalian, $noBuku, $nis, $denda, $keterangan, $status);

        $kodeTransaksi = $data["kodeTransaksi"];
        $nama = $data["nama"];
        $judul = $data["judul"];
        $tanggalPeminjaman = $data["tanggalPeminjaman"];
        $tanggalPengembalian = $data["tanggalPengembalian"];
        $noBuku = $data["noBuku"];
        $nis = $data["nis"];
        $denda = $data["denda"];
        $keterangan = $data["keterangan"];
        $status = $data["status"];

        if (mysqli_stmt_execute($stmt)) {
            return true; // Berhasil menambahkan data
        } else {
            return false; // Gagal menambahkan data
        }
    }
	

	public function tambahh($data) {
		var_dump($data);
		date_default_timezone_set('Asia/Jakarta');
		$query1 = "SELECT * FROM siswa WHERE nis = '$data[nis]'";
    	$result1 = mysqli_query($this->conn(), $query1);

		if ($result1) {
			$row = mysqli_fetch_assoc($result1);
			// Jika data ditemukan, ambil nilai cookie dari hasil query
			if ($row) {
				$cookie = $row['cookie'];
				$nis = $row['nis'];
				$nama = $row['nama'];
			}
		}
		// $cookie = htmlspecialchars($data["cookie"]);
		// $nis = htmlspecialchars($data["nis"]);
		// $nama = htmlspecialchars($data["nama"]);

		$query2 = "SELECT * FROM buku WHERE judul = '$data[judul]'";
		$result2 = mysqli_query($this->conn(), $query2);

		if ($result2) {
			$row = mysqli_fetch_assoc($result2);
			if ($row) {
				$noBuku = $row['no'];
				$judul = $row['judul'];
				$jumlahBuku = $row['jumlahBuku'];
				$jumlahBukuDipinjam = $row['bukuDipinjam'];
			}
		}
		// $noBuku = htmlspecialchars($data["noBuku"]);
		// $judul = htmlspecialchars($data["judul"]);
		$tanggalPeminjaman = date("d-m-Y");
		$tanggalPengembalian = date("d-m-Y",time()+3600 * 24 * 3);
		// $jumlahBuku = htmlspecialchars($data["jumlahBuku"]);
		// $jumlahBukuDipinjam = htmlspecialchars($data["jumlahBukuDipinjam"]);
		// $nis = $_POST["identitas"]["nis"];
		// $cookie = $_SESSION["identitas"]["cookie"];
		// $nama = $_POST["identitas"]["nama"];
		// $noBuku = $_POST["noBuku"];
		// $judul = $_POST["judul"];
		// $tanggalPeminjaman = date("d-m-Y");
		// $tanggalPengembalian = date("d-m-Y",time()+3600 * 24 * 3);
		// $jumlahBuku = $_POST["jumlahBuku"];
		// $jumlahBukuDipinjam = $_POST["jumlahBukuDipinjam"];
		$jumlahBukuDipinjam = $jumlahBukuDipinjam + 1;
		$isiPesanUser = "Anda Berhasil Melakukan Transaksi Peminjaman Buku, Harap mengembalikan buku sebelum batas waktu yang ditentukan";
		$isiPesanAdmin = "Siswa Berhasil Melakukan Transaksi Peminjaman";

		
		// mysqli_query($this->conn(),"INSERT INTO riwayatPeminjaman VALUES ('$cookie','$nama','$judul','$tanggalPeminjaman','$tanggalPengembalian','$noBuku','$nis','0','','O')");

		// mysqli_query($this->conn(),"UPDATE buku SET bukuDipinjam = '$jumlahBukuDipinjam' WHERE no = '$noBuku'");

		// mysqli_query($this->conn(),"INSERT INTO pesanUser VALUES ('$nis','$isiPesanUser','$tanggalPeminjaman','belum','') ");

		// mysqli_query($this->conn(),"INSERT INTO pesanAdmin VALUES ('$nis','$isiPesanAdmin','$tanggalPeminjaman','belum','') ");

		// return mysqli_affected_rows($this->conn());
	}

	public function insert ($data) {
		$query = "SELECT * FROM siswa INNER JOIN praPeminjaman ON siswa.cookie = praPeminjaman.kodePraPeminjaman INNER JOIN buku ON praPeminjaman.noBuku = buku.no WHERE noBuku = '$data' ";
		$kode = mysqli_query($this->conn(),$query);
		$kode = mysqli_fetch_assoc($kode);

		if ( $kode["jumlahBuku"] == $kode["bukuDipinjam"] ) {
			return -1;
		}

		date_default_timezone_set('Asia/Jakarta');
		$nis = $kode["nis"];
		$kodeTransaksi = $kode["cookie"];
		$nama = $kode["nama"];
		$judulBuku = $kode["judul"];
		$tanggalPeminjaman = date("d-m-Y");
		$tanggalPengembalian = date("d-m-Y",time()+3600 * 24 * 3);
		$noBuku = $kode["noBuku"];
		$bukuDipinjam = $kode["bukuDipinjam"] + 1;
		$isiPesanUser = "Anda Berhasil Melakukan Transaksi Peminjaman Buku, Harap mengembalikan buku sebelum batas waktu yang ditentukan";
		$isiPesanAdmin = "Siswa Berhasil Melakukan Transaksi Peminjaman";

		mysqli_query($this->conn(),"INSERT INTO riwayatPeminjaman VALUES ('$kodeTransaksi','$nama','$judulBuku','$tanggalPeminjaman','$tanggalPengembalian','$noBuku','$nis','0','','O')");

		mysqli_query($this->conn(),"UPDATE buku SET bukuDipinjam = '$bukuDipinjam' WHERE no = '$noBuku'");

		mysqli_query($this->conn(),"DELETE FROM praPeminjaman WHERE nis = '$nis' AND noBuku = '$noBuku' ");

		mysqli_query($this->conn(),"INSERT INTO pesanUser VALUES ('$nis','$isiPesanUser','$tanggalPeminjaman','belum','') ");

		mysqli_query($this->conn(),"INSERT INTO pesanAdmin VALUES ('$nis','$isiPesanAdmin','$tanggalPeminjaman','belum','') ");

		return mysqli_affected_rows($this->conn());

	}
}