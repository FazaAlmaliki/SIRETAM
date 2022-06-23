<a style='color:#000' href='<?php echo base_url().$this->uri->segment(1); ?>/konsumen'>
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-blue"><i class="fa fa-users"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Konsumen</span>
        <?php $jmlb = $this->model_app->view('halamanstatis')->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmlb; ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>

<a style='color:#000' href='<?php echo base_url().$this->uri->segment(1); ?>/supplier'>
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-yellow"><i class="fa fa-truck"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Supplier</span>
        <?php $jmlb = $this->model_app->view('halamanstatis')->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmlb; ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>

  <a style='color:#000' href='<?php echo base_url().$this->uri->segment(1); ?>/halamanbaru'>
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-green"><i class="fa fa-file"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Halaman</span>
        <?php $jmlb = $this->model_app->view('halamanstatis')->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmlb; ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>

  <a style='color:#000' href='<?php echo base_url().$this->uri->segment(1); ?>/manajemenuser'>
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-red"><i class="fa fa-users"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Admin</span>
        <?php $jmld = $this->model_app->view('users')->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmld; ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>

<section class="col-lg-7 connectedSortable">
  <?php 
    $jmlpesan = $this->model_app->view_where('hubungi', array('dibaca'=>'N'))->num_rows();
  ?>
  <div class='box'>
    <div class='box-header'>
      <h3 class='box-title'>Pengelolaan Tombol Menu</h3>
    </div>
    <div class='box-body'>
      <p>Silahkan klik menu pilihan yang berada di sebelah kiri untuk mengelola konten website anda 
          atau pilih ikon-ikon pada Panel Kontrol di bawah ini : </p>
      <a href="<?php echo base_url().$this->uri->segment(1); ?>/identitaswebsite" class='btn btn-app'><i class='fa fa-th'></i> Identitas</a>
      <a href="<?php echo base_url().$this->uri->segment(1); ?>/menuwebsite" class='btn btn-app'><i class='fa fa-th-large'></i> Menu</a>
      <a href="<?php echo base_url().$this->uri->segment(1); ?>/halamanbaru" class='btn btn-app'><i class='fa fa-file-text'></i> Halaman</a>
      <a href="<?php echo base_url().$this->uri->segment(1); ?>/logowebsite" class='btn btn-app'><i class='fa fa-circle-thin'></i> Logo</a>
      <a href="<?php echo base_url().$this->uri->segment(1); ?>/templatewebsite" class='btn btn-app'><i class='fa fa-file'></i> Template</a>
      <a href="<?php echo base_url().$this->uri->segment(1); ?>/background" class='btn btn-app'><i class='fa fa-circle'></i> Background</a>
      <a href="<?php echo base_url().$this->uri->segment(1); ?>/download" class='btn btn-app'><i class='fa fa-download'></i> Download</a>
      <a href="<?php echo base_url().$this->uri->segment(1); ?>/alamat" class='btn btn-app'><i class='fa fa-bed'></i> Alamat</a>
      <a href="<?php echo base_url().$this->uri->segment(1); ?>/pesanmasuk" class='btn btn-app'><span class='badge bg-yellow'><?php echo $jmlpesan; ?></span><i class='fa fa-envelope'></i> Pesan</a>
      <a href="<?php echo base_url().$this->uri->segment(1); ?>/manajemenuser" class='btn btn-app'><i class='fa fa-users'></i> Users</a>
    </div>
  </div>
</section><!-- /.Left col -->

<section class="col-lg-5 connectedSortable">
    <?php include "grafik.php"; ?>
</section><!-- right col -->
