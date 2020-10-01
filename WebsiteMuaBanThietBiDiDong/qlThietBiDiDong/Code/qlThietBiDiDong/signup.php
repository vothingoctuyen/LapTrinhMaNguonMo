<?php
	include("connection.php");
    include("header.php");
    //session_start();
?>

<?php
    //code lấy mã khách hàng cuối cùng + 1
    $sql = "select * from khachhang";
    $sql = $con->prepare($sql);
    $sql->execute();
    $sl = $sql->rowCount() - 1;
    $sql = "select MaKH from khachhang limit ".$sl.",1";
    $sql = $con->prepare($sql);
    $sql->execute();
    $db = $sql->fetchAll(PDO::FETCH_ASSOC);
    foreach ($db as $key) {
        $makh = $key['MaKH'];
    }
    //Lấy số thứ tự khách hàng + 1
    $makh = "KH".(((int)ltrim($makh,"KH")+1)<100? ("0".((int)ltrim($makh,"KH")+1)):((int)ltrim($makh,"KH")+1));
    //Tiến hành insert vào cơ sở dữ liệu
    if(isset($_POST['dangky']) )
    if($_POST['password-1'] == $_POST['password-2'])
    {
        $email = $_POST['email'];
        $password = $_POST['password-1'];
        $tenkh = $_POST['tenkhachhang'];
        $phai = $_POST['phai'];
        $tel = $_POST['tel'];
        $sql = "INSERT INTO khachhang VALUES ('".$makh."',N'".$tenkh."','".$phai."','".$tel."','".$email."','".$password."')";
        try{
            $sql = $con->prepare($sql);
            $sql->execute();
            header("location:signin.php?thongbao=yes");
        }
        catch(PDOException $exception) {
            $thongbao = "<div class=\"alert alert-danger alert-dismissible\" style=\"width: 45%;margin: auto;\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>Đăng ký không thành công!</div></br>";
        }
        echo var_dump($sql);
    }
    else
        $thongbao = "<div class=\"alert alert-danger alert-dismissible\" style=\"width: 45%;margin: auto;\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>Mật khẩu không khớp!</div></br>";
    /* if(isset($_POST['dangky']))
    {
        $email = $_POST['email'];
        $password = $_POST['password'];
        $sql = "select * from khachhang where Mail = '".$email."' and password = '".$password."'";
        $sql = $con->prepare($sql);
        $sql->execute();
        $db = $sql->fetchAll(PDO::FETCH_ASSOC);
        //echo var_dump($sql);
        //echo var_dump($db);
        if($sql->rowCount() == 0)
        {
            $thongbao = "<div class=\"alert alert-danger alert-dismissible\" style=\"width: 45%;margin: auto;\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>Email hoặc mật khẩu chưa đúng!</div></br>";
        }
        else
        {
            header("location:signin.php");
        }
        
    } */
    //if(isset($_POST['dangky']))
?>
    <hr>
    <h2 class="text-center">ĐĂNG KÝ</h2>
    <hr>
    <?php if(isset($thongbao)) echo $thongbao; ?>
    <form method="post" action="signup.php" class="alert alert-success" style="width: 45%;margin: auto;">
        <div class="form-group">
            <label>Mã khách hàng</label>
            <input type="text" name="makh" class="form-control" value="<?=$makh?>" disabled>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" name="email" class="form-control" id="email" required>
        </div>
        <div class="form-group">
            <label for="pwd">Mật khẩu</label>
            <input type="password" name="password-1" class="form-control" id="pwd" required>
        </div>
        <div class="form-group">
            <label for="pwd">Xác nhận mật khẩu</label>
            <input type="password" name="password-2" class="form-control" id="pwd" required>
        </div>
        <div class="form-group">
            <label>Tên khách hàng</label>
            <input type="text" name="tenkhachhang" class="form-control" required>
        </div>
        <div class="form-group">
            <label >Phái</label>
            <div class="form-check">
                <label class="form-check-label" for="radio1">
                <input type="radio" class="form-check-input" name="phai" value="Nam" checked> Nam
                </label>
            </div>
            <div class="form-check">
                <label class="form-check-label" for="radio2">
                <input type="radio" class="form-check-input" name="phai" value="Nữ"> Nữ
                </label>
            </div>
        </div>    
        <div class="form-group">
            <label>Số điện thoại</label>
            <input type="number" name="tel" class="form-control" required>
        </div>
        <button type="submit" name="dangky" class="btn btn-primary">Đăng ký</button>
    </form>
    <hr>
<?php
	include("footer.php");
?>