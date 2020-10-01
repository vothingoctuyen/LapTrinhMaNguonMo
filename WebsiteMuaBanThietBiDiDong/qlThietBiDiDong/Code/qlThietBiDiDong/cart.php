<?php
	include("connection.php");
    include("header.php");
    //session_start();
?>

<?php
    //Gở sản phẩm ra
    if(isset($_GET['remove']))
        unset($_SESSION['giohang'][$_GET['remove']]);
    //Thêm hàng vào giỏ hàng
	if(isset($_POST['soluong']) && isset($_POST['product_id']))
		if(isset($_SESSION['giohang']))
		{
            //Thêm product_id và soluong vào session giỏ hàng
            $_SESSION['giohang'][$_POST['product_id']] = $_POST['soluong'];
        }
        else
        {
            $_SESSION['giohang'] = array();
            $_SESSION['giohang'][$_POST['product_id']] = $_POST['soluong'];
            //$mang[$_POST['product_id']] = $_POST['soluong'];
            //$_SESSION['giohang'] = $mang;
        }
    //Cập nhật giỏ hàng
    if(isset($_POST['update']))
    {
        foreach($_POST as $k => $value) {
            $id = ltrim($k,'soluong-');
            $soluong = (int)$value;
            $_SESSION['giohang'][$id] = $soluong;
        }
    }
    //Lấy sản phẩm từ DB ra
    if(isset($_SESSION['giohang'])) {
        //Select lấy tất cả sản phẩm có trong sesion
        $sql = "select * from sanpham where";
        foreach ($_SESSION['giohang'] as $key => $value) {
            $sql .= " MaSP = '".$key."' or";
        }
        $sql = rtrim($sql," or");
        //echo var_dump($sql);
        //echo var_dump($_SESSION['giohang']);
        $sql = $con->prepare($sql);
        $sql->execute();
        $products = $sql->fetchAll(PDO::FETCH_ASSOC);
        $sl = $sql->rowCount(); 
    }
    else
        echo "<hr><h2 style=\"text-align: center;\">Không có sản phẩm nào trong giỏ hàng</h2>";
    
    //Chuyển hướng qua trang đặt hàng
    if(isset($_POST['order']))
    {
        header('location:order.php');
        exit;
    }
    //SESSION_DESTROY();
?>

<?php ?>
    <div class="cart content-wrapper">
    <hr>
    <h2>Giỏ hàng của bạn</h2>
    <hr>
    <form name="cart" method="POST" action="cart.php">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <td colspan="2">Sản phẩm</td>
                    <td>Giá</td>
                    <td>Số lượng</td>
                    <td>Tổng tiền</td>
                </tr>
            </thead>
            <tbody>
                <?php if($sl > 0): ?>
                <?php foreach ($products as $product): ?>
                <tr>
                    <td class="img text-center">
                        <a ahref="product.php?id=<?=$product['MaSP']?>">
                            <img src="image/product/<?=$product['MaSP']?>.png" width="50px" height="50px">
                        </a>
                    </td>
                    <td>
                        <a href="product.php?id=<?=$product['MaSP']?>"><?=$product['TenSP']?></a>
                        <br>
                        <a class="text-muted" href="cart.php?remove=<?=$product['MaSP']?>">Xóa</a>
                    </td>
                    <td class="price text-right">
                        <?=$product['DonGia']?>
                    </td>
                    <td class="quantity">
                        <input type="number" name="soluong-<?=$product['MaSP']?>" value="<?=$_SESSION['giohang'][$product['MaSP']]?>" min="1" required>
                    </td>
                    <td class="price text-right">
                        <?=$product['DonGia']*$_SESSION['giohang'][$product['MaSP']]?>
                    </td>
                </tr>
                <?php endforeach; endif; ?>
            </tbody>
        </table>
        <div class="text-center">
            <h4 class="">Thành tiền: <?php $thanhtien = 0; foreach ($products as $product){
                $thanhtien += $product['DonGia']*$_SESSION['giohang'][$product['MaSP']];
                }
                echo $thanhtien; 
            ?></h4>
        </div>
        <div class="text-right">
            <button type="submit" name="update" class="btn btn-primary" >Cập nhật giỏ hàng</button>
            <button type="submit" name="order" class="btn btn-success">Đặt hàng</button>
        </div>
    </form>

<hr>
<?php
	include("footer.php");
?>