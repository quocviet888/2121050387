<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bài 1</title>
</head>
<body>
    <?php 
    //1. cú pháp in ra màn hình
    echo "Hello word! <br>";

    echo "PHP <br>";

    //2. Biến
    // cú pháp: $ + tên biến = giá trị của biến
    $ten = "Quoc Viet";
    $tuoi = 22;

    echo $ten;
    echo "<br>";
    echo $tuoi;
    echo "xin chào". " ". $ten." ".$tuoi . "tuổi" . "<br>";

    //3. Hằng 
    define("soPi", "3.14");
    echo soPi . "<br>";

    //4. phân biệt " " và ' '
    echo '$ten' . "<br>";
    echo "$ten" . "<br>";

    //5. chuỗi
    //5.1 kiểm tra độ dài của chuỗi
    echo strlen($ten). "<br>";
    # 5.2 đếm số từ
    echo str_word_count ($ten). "<br>";
    #5.3 Tìm kiếm ký tự trong chuỗi
    echo strpos($ten, "i"). "<br>";
    #5.4 Thay thế ký tự trong chuỗi
    echo str_replace("Viet","Duc",$ten). "<br>";
    
    //6. toán tử
    $soThuNhat = 10;
    $soThuHai = 5;

    $Tong = $soThuNhat + $soThuHai;
    // + - * %
    echo $soThuNhat + $soThuHai.  "<br>";
    #+=/-=/*=/%=
    # so sánh == != > < >= <= ===
    echo $soThuNhat %= $soThuHai;// chia lấy dư

    // câu điều kiện
    //if("điều kiện"){
    //logic
    //}
    //elseif("điều kiện){
    //logic
    //}
    //else{
    //logic
    //}

    //kiểm tra tổng của số thứ nhất và số thứ 2
    // nếu <15, thì hiển thị tổng là ...  nhỏ hơn 15
    // nếu =15, thì hiển thị tổng là 15
    // nếu > 15, thì hiển thị tổng là .. lớn hơn 15

    if($Tong <15){
        echo "Tổng nhỏ hơn 15";
    }elseif($Tong==15){
        echo "Tổng bằng 15";
    }else{echo "tổng lớn hơn 15";
    }
    //8. switch case
    $color = "red";
    switch ($color){
        case "red";
        echo "is red";
        break;
        case "blue";
        echo "is blue";
        break;
        default:
        echo "no color";
        break;

    }
    //9. for
    for ($i=0; $i <100; $i++){
        echo $i . "<br>";
    }

    ?>
</body>
</html>