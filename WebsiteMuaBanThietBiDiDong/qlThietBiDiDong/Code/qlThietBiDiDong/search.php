<?php
	include("connection.php");
	include("header.php");
?>

<?php
	//Lấy trang hiện tại
	if(isset($_GET['timkiem']))
		$search = $_GET['timkiem'];
	else
		$search = "";
	if($search =="")
		$search = "kongcosanpham";
	$sql = "select * from sanpham where TenSP like '%".$search."%'";
	$sql = $con->prepare($sql);
	$sql->execute();
	$products = $sql->fetchAll(PDO::FETCH_ASSOC);
	if($sql->rowcount() < 1)
		echo "<hr><h2 style=\"text-align: center;\">Tên sản phẩm bạn vừa tìm không có</h2>";
?>
<div class="products content-wrapper">
	<hr>
    <div class="products-wrapper">
        <div class="row">
        <?php foreach($products as $product) :?>
            <div class="col">
                <a href="product.php?id=<?=$product['MaSP']?>" class="product">
                    <img src="image/product/<?php echo $product['MaSP']?>.png" width="200px" height="200px"></br>
                    <span class="name"><?=$product['TenSP']?></span>
                    <span class="price">
                        <?=$product['DonGia']?> VND
                    </span>
                </a>
            </div>
        <?php endforeach;?>
        </div>
    </div>
    <hr><!--
    <div style="text-align: left; float: left;"><strong style="text-align: left;">Trang <?=$current_page?></strong></div>
    <div class="buttons" style="text-align: right;">
    	<?php //if($current_page > 1):?>
        <a href="category.php?p=<?//=$current_page-1 ?>"><button type="button" class="btn btn-primary">Trang trước</button></a>
        <?php //endif; ?>
        <?php //if($total_product > (count($products) + ($current_page-1)*$sotrangtren1page)):?>
        <a href="category.php?p=<?//=$current_page+1?>"><button type="button" class="btn btn-primary">Kế tiếp</button></a>
        <?php //endif; ?>
    </div>-->
    <hr>
</div>

<?php
	include("footer.php");
?>