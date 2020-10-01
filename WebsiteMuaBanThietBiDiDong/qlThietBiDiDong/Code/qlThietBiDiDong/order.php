<?php
	include("connection.php");
    include("header.php");
    //session_start();
?>

<?php
    
    //SESSION_DESTROY();
?>

<?php ?>
    <div class="cart content-wrapper">
    <hr>
    <h2 class="text-center">Cảm ơn bạn đã đặt hàng!</h2>
    <hr>
    <form name="order" method="POST" action="order.php">
        
        <!-- <div class="text-right">
            <button type="submit" name="order" class="btn btn-success">Tiến hành đặt hàng</button>
        </div> -->
    </form>

<hr>







<!-- <div class="products content-wrapper">
	<hr>
    <div class="products-wrapper">
        <div class="row">
        <?php //foreach($products as $product) :?>
            <div class="col">
                <a href="product.php?id=<?//=$product['MaSP']?>" class="product">
                    <img src="image/product/<?php //echo $product['MaSP']?>.png" width="200px" height="200px"></br>
                    <span class="name"><?//=$product['TenSP']?></span>
                    <span class="price">
                        <?//=$product['DonGia']?> VND
                    </span>
                </a>
            </div>
        <?php //endforeach;?>
        </div>
    </div>
    <hr>
</div>
 -->
<?php
	include("footer.php");
?>