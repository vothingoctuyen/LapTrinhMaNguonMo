<?php
	include("connection.php");
    include("header.php");
    //session_start();
?>

<?php
    if(isset($_GET['thongbao']) && $_GET['thongbao'] == "yes")
        $thongbao = "<div class=\"alert alert-danger alert-dismissible\" style=\"width: 45%;margin: auto;\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>Bạn đã đăng ký tài khoản thành công!</div></br>";
    if(isset($_POST['dangnhap']))
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
            foreach ($db as $k) {
                $tenkh = $k['TenKH'];
            }
            $_SESSION['status'] = $tenkh;
            header("location:index.php");
        }
        
    }
?>
    <hr>
    <h2 class="text-center">ĐĂNG NHẬP</h2>
    <hr>
    <?php if(isset($thongbao)) echo $thongbao; ?>
    <form method="post" action="signin.php" class="alert alert-success" style="width: 45%;margin: auto;">
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" name="email" class="form-control" id="email" required>
        </div>
        <div class="form-group">
            <label for="pwd">Mật khẩu</label>
            <input type="password" name="password" class="form-control" id="pwd" required>
        </div>
        <button type="submit" name="dangnhap" class="btn btn-primary">Đăng nhập</button>
    </form>
    </br>
    <div class="alert alert-success" style="width: 45%;margin: auto;">
        Bạn chưa có tài khoản? <a href="signup.php"><button name="dangky" class="btn btn-success">Đăng ký</button></a>
    </div>
    <hr>
<?php
	include("footer.php");
?>