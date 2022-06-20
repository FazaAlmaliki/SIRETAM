<?php 
echo "<div class='paragraph-row'>
	
</div>
<br>

<div class='row hidden-xs'>";
$kategori_button = $this->db->query("SELECT * FROM rb_kategori_produk ORDER BY RAND() DESC LIMIT 8");
foreach ($kategori_button->result_array() as $rows) {
	echo "<div class='col-md-3 col-xs-6' style='margin-bottom:5px'>
		<a style='border-radius:0px; text-align:left' class='btn btn-block btn-default' href='".base_url()."produk/kategori/$rows[kategori_seo]'> 
		<span class='glyphicon glyphicon-th-large'></span> $rows[nama_kategori]
		</a>
	</div>";
}
echo "</div><hr>";

$no = 1;
foreach ($kategori->result_array() as $kat) {
	$produk = $this->model_reseller->produk_perkategori(0,0,$kat['id_kategori_produk'],6);
		

		echo "<p class='sidebar-title text-danger produk-title'><a href='".base_url()."produk/kategori/$kat[kategori_seo]'>$kat[nama_kategori]</a></p>
			<div class='container'>";
	    foreach ($produk->result_array() as $row){
	    $ex = explode(';', $row['gambar']);
	    if (trim($ex[0])==''){ $foto_produk = 'no-image.png'; }else{ $foto_produk = $ex[0]; }
	    if (strlen($row['nama_produk']) > 38){ $judul = substr($row['nama_produk'],0,38).',..';  }else{ $judul = $row['nama_produk']; }
	    $jual = $this->model_reseller->jual_reseller($row['id_supplier'],$row['id_produk'])->row_array();
	    $beli = $this->model_reseller->beli_reseller($row['id_supplier'],$row['id_produk'])->row_array();
	    if ($beli['beli']-$jual['jual']<1){ $stok = '<b style="color:#000">Stok Habis</b>'; }else{ $stok = "<span style='color:green'>Stok ".($beli['beli']-$jual['jual'])." $row[satuan]</span>"; }

	    $disk = $this->model_app->view_where("rb_produk_diskon",array('id_produk'=>$row['id_produk']))->row_array();
	    $diskon = rupiah(($disk['diskon']/$row['harga_konsumen'])*100,0)."%";
	    if ($diskon>0){ $diskon_persen = "<div class='top-right'>$diskon</div>"; }else{ $diskon_persen = ''; }
	    if ($diskon>=1){ 
	    	$harga =  "<del style='color:#8a8a8a'><small>Rp ".rupiah($row['harga_konsumen'])."</small></del> Rp ".rupiah($row['harga_konsumen']-$disk['diskon']);
	    }else{
	    	$harga =  "Rp ".rupiah($row['harga_konsumen']);
	    }
	    echo "<div class='produk col-md-2 col-xs-6'>
	              <center>
	                
	                <div style='height:140px; overflow:hidden'>
	                  <a title='$row[nama_produk]' href='".base_url()."produk/detail/$row[produk_seo]'><img style=' min-height:140px; width:100%' src='".base_url()."asset/foto_produk/$foto_produk'></a>
	                  		$diskon_persen
	                </div>
	                <h4 class='produk-title'><a title='$row[nama_produk]' href='".base_url()."produk/detail/$row[produk_seo]'>$judul</a></h4>
	                <span class='harga'>$harga</span><br>
	                <i>$stok</i>
	                <br><small>$row[nama_kota]</small>";
	                
	                echo "</center>
	          </div>";

	      
	    }
	    echo "</div>";

	  echo "<div style='clear:both'><br></div>";

	$no++;
	  
}
?>
<br><br>
<div class="block">
<div class="block-content">
	<ul class="article-block-big">
		<?php 
			$no = 1;
			$hot = $this->model_utama->view_join_two('users','kategori','username','id_kategori',array('utama' => 'Y','status' => 'Y'),'DESC',0,6);
			foreach ($hot->result_array() as $row) {	
			$tgl = tgl_indo($row['tanggal']);
			}
		?>
	</ul>
</div>
</div>

