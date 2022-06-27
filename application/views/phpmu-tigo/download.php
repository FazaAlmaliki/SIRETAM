<div class="main-page left">
	<div class="single-block">
		<div class="content-block main left">
			<div class="block">
				<div class="block-title" style="background: #bf4b37;">
					<a href="<?php echo base_url(); ?>" class="right">Kembali</a>
					<h2>Semua daftar / List File Download</h2>
				</div>
				<div class="block-content">
					<div class="shortcode-content">
						<div class="paragraph-row">
							<div class="column12">
								<table class='table-download' style='font-weight:bold; border:1px solid #f5f5f5;' width='100%'>
									<tr style='background:#8a8a8a'>
										<th>No</th>
										<th>Nama File</th>
										<th>Hits</th>
										<th style='width:70px'></th>
									</tr>
									<?php
										$no=$this->uri->segment(3)+1;
										foreach ($download->result_array() as $r) {	
										if(($no % 2)==0){ $warna="#ffffff";}else{ $warna="#E1E1E1"; }
											echo "<tr bgcolor=$warna>
													<td>$no</td>
												  	<td>$r[judul]</td>
												  	<td>$r[hits] Kali</td>
												  	<td><a class='button' style='background:#29b332; color:#ffffff; padding:2px 10px' href='".base_url()."download/file/$r[nama_file]'>Download</a></td>
												  </tr>";
										$no++;
										}
									?>
								</table>
								<div class="pagination">
									<?php echo $this->pagination->create_links(); ?>
								</div>
							</div>
						</div>
						
						<div class="article-title">
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class='main-sidebar right'>
	<?php include "sidebar_halaman.php"; ?>
</div>