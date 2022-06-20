<?php
  $iden = $this->db->query("SELECT * FROM identitas")->row_array();
  $logo = $this->db->query("SELECT * FROM logo")->row_array();
  $file = fopen("rss.xml", "w");
  fwrite($file, '<?xml version="1.0"?> 
  <rss version="2.0">');

  fwrite($file, "<channel> 
				<title>$iden[nama_website] RSS</title> 
				<link>$iden[url]</link> 
				<image>
				<url>$iden[url]/asset/logo/logo-footer.png</url>
				<link>$iden[url]</link>
				<width>100</width>
				<height>35</height>
				</image>
				<language>id-id</language>");

  ?>
