<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Auth extends CI_Controller {
	function city(){
		$state_id = $this->input->post('stat_id');
		$data['kota'] = $this->model_app->view_where_ordering('rb_kota',array('provinsi_id' => $state_id),'kota_id','DESC');
		$this->load->view(template().'/reseller/view_city',$data);		
	}

	public function register(){
		if (isset($_POST['submit1'])){
			$data = array('username'=>$this->input->post('a'),
	        			  'password'=>hash("sha512", md5($this->input->post('b'))),
	        			  'nama_lengkap'=>$this->input->post('c'),
	        			  'email'=>$this->input->post('d'),
	        			  'alamat_lengkap'=>$this->input->post('e'),
	        			  'kota_id'=>$this->input->post('h'),
	        			  'kecamatan'=>$this->input->post('i'),
						  'no_hp'=>$this->input->post('j'),
						  'tanggal_daftar'=>date('Y-m-d H:i:s'));
			$this->model_app->insert('rb_konsumen',$data);
			$id = $this->db->insert_id();
			$this->session->set_userdata(array('id_konsumen'=>$id, 'level'=>'konsumen'));

			if ($this->session->idp!=''){
				$data = array('kode_transaksi'=>$this->session->idp,
			        		  'id_pembeli'=>$id,
			        		  'id_penjual'=>$this->session->supplier,
			        		  'status_pembeli'=>'konsumen',
			        		  'status_penjual'=>'supplier',
			        		  'waktu_transaksi'=>date('Y-m-d H:i:s'),
			        		  'proses'=>'0');
				$this->model_app->insert('rb_penjualan',$data);
				$idp = $this->db->insert_id();

				$keranjang = $this->model_app->view_where('rb_penjualan_temp',array('session'=>$this->session->idp));
				foreach ($keranjang->result_array() as $row) {
					$dataa = array('id_penjualan'=>$idp,
				        		   'id_produk'=>$row['id_produk'],
				        		   'jumlah'=>$row['jumlah'],
				        		   'harga_jual'=>$row['harga_jual'],
				        		   'satuan'=>$row['satuan']);
					$this->model_app->insert('rb_penjualan_detail',$dataa);
				}

				$this->db->query("DELETE FROM rb_penjualan_temp where session='".$this->session->idp."'");
				$this->session->unset_userdata('reseller');
				$this->session->unset_userdata('idp');
				$this->session->set_userdata(array('idp'=>$idp));
			}
			redirect('members/profile');

		}elseif (isset($_POST['submit2'])){
			$cek  = $this->model_app->view_where('rb_supplier',array('username'=>$this->input->post('a')))->num_rows();
			if ($cek >= 1){
				$username = $this->input->post('a');
				echo "<script>window.alert('Maaf, Username $username sudah dipakai oleh orang lain!');
                                  window.location=('".base_url()."/auth/register')</script>";
			}else{
				$route = array('administrator','auth','contact','download','konfirmasi','main','members','page','produk','reseller');
				if (in_array($this->input->post('a'), $route)){
					$username = $this->input->post('a');
					echo "<script>window.alert('Maaf, Username $username sudah dipakai oleh orang lain!');
	                                  window.location=('".base_url()."/".$this->input->post('i')."')</script>";
				}else{
				$data = array('username'=>$this->input->post('a'),
		        			  'password'=>hash("sha512", md5($this->input->post('b'))),
		        			  'nama_supplier'=>$this->input->post('c'),
		        			  'jenis_kelamin'=>$this->input->post('d'),
		        			  'kota_id'=>$this->input->post('kota'),
		        			  'alamat_lengkap'=>$this->input->post('e'),
		        			  'no_telpon'=>$this->input->post('f'),
							  'email'=>$this->input->post('g'),
							  'kode_pos'=>$this->input->post('h'),
							  'referral'=>$this->input->post('i'),
							  'tanggal_daftar'=>date('Y-m-d H:i:s'));
				$this->model_app->insert('rb_supplier',$data);
				$id = $this->db->insert_id();
				$this->session->set_userdata(array('id_supplier'=>$id, 'level'=>'supplier'));
				redirect('reseller/home');
				}
			}
		}else{
			$data['title'] = 'Formulir Pendaftaran';
			$data['provinsi'] = $this->model_app->view_ordering('rb_provinsi','provinsi_id','ASC');
			$this->template->load(template().'/template',template().'/reseller/view_register',$data);
		}
	}

	public function login(){
		if (isset($_POST['login'])){
				$username = strip_tags($this->input->post('a'));
				$password = hash("sha512", md5(strip_tags($this->input->post('b'))));
				$cek = $this->db->query("SELECT * FROM rb_konsumen where username='".$this->db->escape_str($username)."' AND password='".$this->db->escape_str($password)."'");
			    $row = $cek->row_array();
			    $total = $cek->num_rows();
				if ($total > 0){
					$this->session->set_userdata(array('id_konsumen'=>$row['id_konsumen'], 'level'=>'konsumen'));
					if ($this->session->idp!=''){
						$data = array('kode_transaksi'=>$this->session->idp,
			        			  'id_pembeli'=>$row['id_konsumen'],
			        			  'id_penjual'=>$this->session->reseller,
			        			  'status_pembeli'=>'konsumen',
			        			  'status_penjual'=>'supplier',
			        			  'waktu_transaksi'=>date('Y-m-d H:i:s'),
			        			  'proses'=>'0');
						$this->model_app->insert('rb_penjualan',$data);
						$id = $this->db->insert_id();

						$query_temp = $this->db->query("SELECT * FROM rb_penjualan_temp where session='".$this->session->idp."'");
						foreach ($query_temp->result_array() as $r) {
							$data = array('id_penjualan'=>$id,
			        			  'id_produk'=>$r['id_produk'],
			        			  'jumlah'=>$r['jumlah'],
			        			  'diskon'=>$r['diskon'],
			        			  'harga_jual'=>$r['harga_jual'],
			        			  'satuan'=>$r['satuan']);
							$this->model_app->insert('rb_penjualan_detail',$data);
						}
						$this->db->query("DELETE FROM rb_penjualan_temp where session='".$this->session->idp."'");

						$this->session->unset_userdata('reseller');
						$this->session->unset_userdata('idp');
						$this->session->set_userdata(array('idp'=>$id));
					}
					redirect('members/profile');
				}else{
					$data['title'] = 'Gagal Login';
					echo $this->session->set_flashdata('message', '<div class="alert alert-danger"><center>Maaf, Username atau password salah!</center></div>');
					redirect('auth/login');
				}
		}else{
			$data['title'] = 'User Login';
			$this->template->load(template().'/template',template().'/reseller/view_login',$data);
		}
	}

}
