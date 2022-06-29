  <p class='sidebar-title text-danger produk-title'> Login Pengguna</p> 

            <div class='alert alert-info'>Masukkan username dan password pada form berikut untuk login,...</div>
            <br>
            <?php 
                echo $this->session->flashdata('message'); 
                $this->session->unset_userdata('message');
            ?>
            <div class="logincontainer">
                <form method="post" action="<?php echo base_url(); ?>auth/login" role="form" id='formku'>
                    <div class="form-group">
                        <label for="inputEmail">Username</label>
                        <input type="text" name="a" class="required form-control" placeholder="Masukkan Username" autofocus=""  minlength='5' onkeyup="nospaces(this)" required>
                    </div>

                    <div class="form-group">
                        <label for="inputPassword">Password</label>
                        <input type="password" name="b" class="form-control required" placeholder="Masukkan Password" autocomplete="off" required>
                    </div>

                    <div align="center">
                        <input name='login' type="submit" class="btn btn-primary" value="Login"> <br><br> Anda Belum Punya akun? <a href="<?php echo base_url(); ?>auth/register" title="Mari gabung bersama Kami" class="link">Daftar Disini.</a>
                    </div><br>
                    
                    <div align="center">
                        <button><a href='<?php echo base_url(); ?>reseller'>Login Supplier</a></button>
                        <button><a href='<?php echo base_url(); ?>administrator'>Login Admin</a></button>
                    </div>
                </form>
            </div>
</div>
</div>