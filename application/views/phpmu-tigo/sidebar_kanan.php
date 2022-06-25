<div class="widget" style='overflow:hidden'>
<center>Yuk Temukan Supplier Terdekat Agar Transaksi lebih mudah. <a class='btn btn-danger btn-block' href='<?php echo base_url(); ?>produk/reseller'><span class='glyphicon glyphicon-search'></span> Klik / Cari Disini</a></center>
</div>

<?php 
$yahoo = $this->model_utama->view('mod_chat');
if ($yahoo->num_rows() >= 1){
echo "<div class='widget'>
	<h3>Online Support (Chat)</h3>";
	foreach ($yahoo->result_array() as $chat) {	
		echo "<center>$chat[nama]<br>
				<a href='ymsgr:sendIM?$chat[username]'> 
				<img src='http://opi.yahoo.com/online?u=$chat[username]&amp;m=g&amp;t=$chat[chat_icon]&amp;l=us'/></a></center><hr>";
	}
echo "</div>";
}
?>
<hr>
</div>