<div class="main-page left">
	<div class="single-block">
		<div class="content-block main left">
			<div class="block">
				<div class="block-content">
					<div class="shortcode-content">
						<div class="paragraph-row">
							<div class="column9">
								<?php 
									if (trim($rows['gambar'])!=''){
										echo "<img style='width:100%' src='".base_url()."asset/foto_statis/$rows[gambar]'>";
									}
									if ($rows['isi_halaman']==''){
										echo "<center style='padding:15%; font-weight:bold; color:red'>Maaf, Belum ada Informasi pada Halaman ini.</center>"; 
									}else{
										echo "$rows[isi_halaman]";
									} 
								?>
							</div>
						</div><br>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class='main-sidebar right'>
	<?php include "sidebar_halaman.php"; ?>
</div>