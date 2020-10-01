<?php
	include("connection.php");
	include("header.php");
?>

<?php
	//Lấy trang hiện tại
	$masanpham = isset($_GET['id']) ? $_GET['id']:0;
	$sql = "select * from sanpham where MaSP = \"".$masanpham."\"";
	$sql = $con->prepare($sql);
	$sql->execute();
	$products = $sql->fetchAll(PDO::FETCH_ASSOC);
	if($sql->rowcount() != 1)
		echo "<hr><h2 style=\"text-align: center;\">Không có sản phẩm để hiển thị</h2>";
		foreach($products as $products):
?>
<hr>
<div class="product content-wrapper">
	<div class="row"><div class="col"><img src="image/product/<?=$products['MaSP']?>.png" width="400px" height="400px"></div>
    <div class="col" style="text-align: left;margin: 0;border: none;">
    	<h1 class="name"><?=$products['TenSP']?></h1>
        <span class="price">
        	<?=$products['DonGia']?> VND
        </span></br></br>
        <form action="cart.php" method="post">
        	<input class="form-control" type="number" name="soluong" value="1" min="1" placeholder="Số lượng">
            <input type="hidden" name="product_id" value="<?=$products['MaSP']?>">
            </br><button type="submit" class="btn btn-primary">Thêm vào giỏ hàng</button>
        </form>
    </div></div>
</div>
<?php  endforeach; ?>
<hr>

<?php
	include("footer.php");
?>