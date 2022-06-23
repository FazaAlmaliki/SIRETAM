            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Stok Produk Anda</h3>
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>reseller/tambah_produk'>Tambahkan Data</a>
                </div><!-- /.box-header -->
                <div class="box-body">
                <div class='table-responsive'>
                  <table id="example1" class="table table-bordered table-striped table-condensed">
                    <thead>
                      <tr>
                        <th style='width:30px'>No</th>
                        <th>Nama Produk</th>
                        <th>Harga Modal</th>
                        <th>Harga Jual</th>
                        <th>Satuan</th>
                        <th>Berat (Kilogram)</th>
                        <th>Diskon (Rp)</th>
                        <th style='width:80px'>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record as $row){
                      $jual = $this->model_reseller->jual_reseller($this->session->id_supplier,$row['id_produk'])->row_array();
                      $beli = $this->model_reseller->beli_reseller($this->session->id_supplier,$row['id_produk'])->row_array();
                      $disk = $this->model_app->edit('rb_produk_diskon',array('id_produk'=>$row['id_produk'],'id_supplier'=>$this->session->id_supplier))->row_array();
                      if ($disk['diskon']=='' OR $disk['diskon']=='0'){ $diskon = '0'; $line = ''; $harga = ''; }else{ $diskon = $disk['diskon']; $line = 'line-through'; $harga = "/ <span style='color:red'>".rupiah($row['harga_konsumen']-$disk['diskon'])."</span>";}
                      if ($row['id_produk_perusahaan']!='0'){ $perusahaan = "<small><i style='color:green'>(Perusahaan)</i></small>"; }else{ $perusahaan = ''; }
                      if ($row['id_produk_perusahaan']=='0'){ $modal = $row['harga_suppliers'];} else{ $modal = $row['harga_suppliers']; }
                    echo "<tr><td>$no</td>
                              <td>$row[nama_produk] $perusahaan</td>
                              <td>Rp ".rupiah($modal)."</td>
                              <td>Rp <span style='text-decoration:$line'>".rupiah($row['harga_konsumen'])."</span> $harga</td>
                              <td>$row[satuan]</td>
                              <td>$row[berat]</td>
                              <td>$diskon</td>
                              <td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."reseller/edit_produk/$row[id_produk]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."reseller/delete_produk/$row[id_produk]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table></div><hr>
              </div>