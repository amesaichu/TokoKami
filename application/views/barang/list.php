<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Barang</title>
    <?php $this->load->view('partials/head.php') ?>
    <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
​    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<!-- load Topbar -->
    <style>

.mainproduct{
    margin-top: 10px;
    width: 100%;
    height: 100%;

}
/* .cart{
    margin-top: 10px;
    width: 30%;
    height: 100%;
    float:left;

} */
.listproduk {
    width: 200px;
    height: 280px;
    float:left;
    margin:5px 7px 6px 7px;
    box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
    
    }
.thumbnail {
    width: 100%;
    height: 50%;
}
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}
    </style>
</head>
<body id="page-top">
	<div id="wrapper">
		<!-- load sidebar -->
		<?php $this->load->view('partials/sidebar.php') ?>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content" data-url="<?= base_url('barang') ?>">
            <?php $this->load->view('partials/topbar.php') ?>
				<div class="container-fluid">
				<div class="clearfix">
					<div class="float-left">
						<h1 class="h3 m-0 text-gray-800"><?= $title ?></h1>
					</div>
					<div class="float-right">
						<a href="<?= base_url('barang') ?>" class="btn btn-secondary btn-sm"><i class="fa fa-reply"></i>&nbsp;&nbsp;Kembali</a>
					</div>
				</div>
				<hr>
                <div id="container">
                    <div class="mainproduct">
                        <div class="listproduk" v-for="barangku in barang">
                        <div class="thumbnail"> 
                        <img v-bind:src="barangku.image" width="180px" height="150px" ></div>
                    <hr>
                    <b>{{barangku.nama_barang}}</b><br>
                    Harga  : {{barangku.harga_jual}}<br>
                    Stok   : {{barangku.stok}}<br>
                    Satuan : {{barangku.satuan}}<br>

            </div>
        </div>
    </div>
<script>
    var vm = new Vue({   
             el: '#container',
             data: {
                //  motor:[
                //  {merek:'supra',harga:5500000,image:'supra.png'}
                //   ,{merek:'mio',harga:3400000,image:'supra.png'}
                //  ,{merek:'NMax',harga:2500000,image:'supra.png'}
                //   ,{merek:'Shogun',harga:3400000, image:'supra.png'}
                //   ,{merek:'Satria',harga:1400000,image:'supra.png'}
                //  ],
                 barang:[],
                 keranjangharga_jual:[],
                 keranjangnama_barang:[],
                 qty:0,
                //  total:0
               
             },

           computed: {
    total() {
      return this.keranjangharga_jual.reduce(function (sum, item) {
          return sum + item
      }, 0)
    }
  },  
          
     methods: {
    
                 addCart:function(nama_barang,harga_jual){
                    //  this.keranjangharga_jual.push(harga_jual);
                    //  this.keranjangnama_barang.push(nama_barang);
                    //  this.qty+=1;
                 },
                 removeCart:function(index){
                    //  this.keranjangnama_barang.splice(index,1)
                    //  this.keranjangharga_jual.splice(index,1)
                 
                 },

                 upDate: function() {

                    axios.get('http://localhost/TokoKami/api.php').then(response => this.barang=response.data['result'])
}
             }   ,

                mounted() {
                // axios.get('https://jsonplaceholder.typicode.com/todos/1').then(response => console.log(response));
            
      this.upDate();
      this.timer = setInterval(this.upDate, 1000)


            //    axios.get('https://my-json-server.typicode.com/almaasrh99/TugasVueJsAPI/db').then(response => this.motor=response.data['produk']);
            }


        })
        var btn=document.getElementById("button_data");
        btn.onclick=function(){
        popup.style.display="block"
        }
    
    </script>
            </div>
    </div>
    <?php $this->load->view('partials/footer.php') ?>
    </div>
    </div>
</body>
<?php $this->load->view('partials/js.php') ?>
	<script src="<?= base_url('sb-admin/js/demo/datatables-demo.js') ?>"></script>
	<script src="<?= base_url('sb-admin') ?>/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="<?= base_url('sb-admin') ?>/vendor/datatables/dataTables.bootstrap4.min.js"></script>
</html>
