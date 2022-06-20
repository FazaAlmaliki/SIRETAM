						<div class="full-width">
							<div class="block">
								<div class="block-title">
									<a href="<?php echo base_url(produk); ?>" class="right">Kembali ke Beranda</a>
									<h2>Kontak Kami</h2>
								</div>
								<div class="block-content">
									<div class="paragraph-row">
										<div class="column6">
											<?php echo "$rows[alamat]";?>
										</div>
										<div class="column6">
											<div style="width:370px" id="writecomment">
												<form action="<?php echo base_url(); ?>hubungi/kirim" method="POST">
													<p class="contact-form-user">
														<label for="c_name">Nama<span class="required">*</span></label>
														<input type="text" placeholder="Nama Anda" name='a' id="c_name" required/>
													</p>
													<p class="contact-form-email">
														<label for="c_email">E-mail<span class="required">*</span></label>
														<input type="text" placeholder="E-mail" name='b' id="c_email" required/>
													</p>
													<p class="contact-form-message">
														<label for="c_message">Pesan<span class="required">*</span></label>
														<textarea style='width:430px' name='c' placeholder="Pesan Anda..." id="c_message" required></textarea>
													</p>
													<p class="contact-form-message">
														<label for="c_message">
														<?php echo $image; ?><br></label>
														<input name='security_code' maxlength=6 type="text" class="required" placeholder="Masukkkan kode di sebelah kiri..">
													</p>
													<p><input type="submit" name="submit" class="styled-button" value="Kirim" onclick="return confirm('Pesan anda ini akan kami balas melalui email ?')"/></p>
												</form>
												
											</div>
										</div>
									</div>
									
								</div>
							</div>

						</div>