<div class="widget">
<h3>Statistik Kunjungan</h3>
<div>
<ul class="list-group">
<?php 
$pengunjung       = $this->model_utama->pengunjung()->num_rows();
$totalpengunjung  = $this->model_utama->totalpengunjung()->row_array();
$hits             = $this->model_utama->hits()->row_array();
$totalhits        = $this->model_utama->totalhits()->row_array();
$pengunjungonline = $this->model_utama->pengunjungonline()->num_rows();
echo "<li style='margin-bottom:none' class='list-group-item'>User Online <span class='badge'>$pengunjungonline</span></li>
	<li style='margin-bottom:none' class='list-group-item'>Today Visitor <span class='badge'>$pengunjung</span></li>
	<li style='margin-bottom:none' class='list-group-item'>Hits hari ini  <span class='badge'>$hits[total]</span></li>
	<li style='margin-bottom:none' class='list-group-item'>Total Hits <span class='badge'>$totalhits[total]</span></li>
	<li style='background-color:#9d0000; color:#fff; padding-bottom:10px' class='list-group-item alert'>Total pengunjung <span class='badge'>$totalpengunjung[total]</span></li>";
?>
</ul>
</div>
</div>