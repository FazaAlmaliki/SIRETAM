<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Distributor</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/edit_supplier',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' value='$rows[id_supplier]' name='id'>
                    <tr><th width='130px' scope='row'>Nama Distributor</th>  <td><input class='form-control' type='text' name='a' value='$rows[nama_supplier]'></td></tr>
                    <tr><th scope='row'>Kontak Person</th>                <td><input class='form-control' type='text' name='b' value='$rows[kontak_person]'></td></tr>
                    <tr><th scope='row'>Alamat Lengkap</th>               <td><textarea class='form-control' name='c'>$rows[alamat_lengkap]</textarea></td></tr>
                    <tr><th scope='row'>No Hp</th>                        <td><input class='form-control' type='number' name='d' value='$rows[no_hp]'></td></tr>
                    <tr><th scope='row'>Alamat Email</th>                 <td><input class='form-control' type='email' name='e' value='$rows[alamat_email]'></td></td></tr>
                    <tr><th scope='row'>Kode Pos</th>                     <td><input class='form-control' type='number' name='f' value='$rows[kode_pos]'></td></tr>
                    <tr><th scope='row'>No Telpon</th>                    <td><input class='form-control' type='number' name='g' value='$rows[no_telpon]'></td></tr>
                    <tr><th scope='row'>Fax</th>                    <td><input class='form-control' type='number' name='h' value='$rows[fax]'></td></tr>
                    <tr><th scope='row'>Keterangan</th>                   <td><textarea class='form-control' name='i'>$rows[keterangan]</textarea></td></tr>
                    
                    <tr><th scope='row'>Ganti Foto</th>                         <td><input type='file' class='form-control' name='gg'>";
                                                                               if ($rows['foto'] != ''){ echo "<i style='color:red'>Foto Profil saat ini : </i><a target='_BLANK' href='".base_url()."asset/foto_user/$rows[foto]'>$rows[foto]</a>"; } echo "</td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='".base_url().$this->uri->segment(1)."/supplier'><button type='button' class='btn btn-default pull-right'>Batal</button></a>
                  </div>
            </div>";
