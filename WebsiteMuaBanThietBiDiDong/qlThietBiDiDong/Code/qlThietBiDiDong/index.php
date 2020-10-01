<?php
	include("connection.php");
	include("header.php");
?>

<?php
	//$sql = 'select * from sanpham';
	$sql = $con->prepare('select * from sanpham limit 8');
	$sql->execute();
	$product = $sql->fetchAll(PDO::FETCH_ASSOC);
?>
<!-- <img src="image/header-bg.jpg" width="100%" height="500px"> -->
<div class="products content-wrapper">
	<hr>
	<h2 style="text-align: center;">Sản phẩm được thêm vào gần đây nhất</h2>
    <hr>
    <div class="products-wrapper">
        <div class="row">
        <?php foreach($product as $product) :?>
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
</div>

<?php
	include("footer.php");
?>