<div class="widget">
	<?php
	  $pasangiklan2 = $this->model_utama->view_ordering_limit('pasangiklan','id_pasangiklan','ASC',1,1);
	  foreach ($pasangiklan2->result_array() as $b) {
		$string = $b['gambar'];
		if ($b['gambar'] != ''){
			if(preg_match("/swf\z/i", $string)) {
				echo "<embed src='".base_url()."asset/foto_pasangiklan/$b[gambar]' width=300 height=240 quality='high' type='application/x-shockwave-flash'>";
			} else {
				echo "<a href='$b[url]' target='_blank'><img style='width:250px;' src='".base_url()."asset/foto_pasangiklan/$b[gambar]' alt='$b[judul]' /></a>
					  <a href='$b[url]' class='ad-link'><span class='icon-text'>&#9652;</span>$b[judul]<span class='icon-text'>&#9652;</span></a>";
			}
		}
	  }
	?>
</div>
<div class="widget">
	<h3>Komentar Terakhir</h3>
	<div class="widget-comments">
		<ul>
			<?php
				$komentar = $this->model_utama->view_where_ordering_limit('komentar',array('aktif' => 'Y'),'id_komentar','DESC',0,5);
			  	foreach ($komentar->result_array() as $r) {
					$tgl = tgl_indo($r['tgl']);
					$isi_komentar = strip_tags($r['isi_komentar']); 
					$isi = substr($isi_komentar,0,100); 
					$isi = substr($isi_komentar,0,strrpos($isi," "));
					$avatar = md5(strtolower(trim($r['email'])));

					echo "<li>
						<div class='comment-photo'>
							<span class='hover-effect'>";
								if ($r['email'] == ''){
									echo "<img style='width:50px; height:50px;' src='".base_url()."asset/foto_user/blank.png' alt='avatar-1' />";
								}else{
									echo "<img style='width:50px; height:50px;' src='http://www.gravatar.com/avatar/$avatar.jpg?s=100'/>";
								}
							echo "</span>
						</div>
						<div class='comment-content'>
							<h3>$r[nama_komentar]</h3>
							<p>$isi ...</p>
							<span class='meta'>
								<a href='".base_url()."$b[judul_seo]'><span class='icon-text'>&#59212;</span>View Article</a>
							</span>
						</div>
					 </li>";
				}
				
			?>
			
		</ul>
	</div>
</div>
</div>