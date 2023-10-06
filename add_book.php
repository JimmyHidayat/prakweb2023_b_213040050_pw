<?php
include('./conn.php');

if (isset($_POST["submit"])) {
    $bookTitle = $_POST['book_title'];
    $bookCategory = $_POST['book_category'];
    $bookAuthor = $_POST['book_author'];
    $bookAbstract = $_POST['book_abstract'];
    $bookTimeAdded = date("Y-m-d H:i:s");

    // Make sure to use $_FILES['book_image']['name'] for the file name
    $bookImageName = $_FILES['book_image']['name'];
    $bookImageTmpName = $_FILES['book_image']['tmp_name'];

    $target_dir = "image/";
    $target_file = $target_dir . basename($bookImageName);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Check if image file is a valid image
    $check = getimagesize($bookImageTmpName);
    if ($check === false) {
        $uploadOk = 0;
    }

    // Check if file already exists
    if (file_exists($target_file)) {
        $uploadOk = 0;
    }

    // Check file size
    if ($_FILES["book_image"]["size"] > 50000000) {
        $uploadOk = 0;
    }

    // Allow only certain image formats
    if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "JPEG" && $imageFileType != "gif") {
        $uploadOk = 0;
    }

    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "<script>
        alert('Upload failed. Please check the file and try again.'); 
        window.location.href = './index.php';
        </script>";
    } else {
        if (move_uploaded_file($bookImageTmpName, $target_file)) {
            $bookImage = $bookImageName;

            $stmt = $conn->prepare("INSERT INTO `tbl_book` (`tbl_book_id`,`book_image`, `book_title`, `book_category`, `book_author`, `book_abstract`, `time_added`) VALUES (NULL, :bookImage, :bookTitle, :bookCategory, :bookAuthor, :bookAbstract, :bookTimeAdded)");
            $stmt->bindParam(':bookImage', $bookImage);
            $stmt->bindParam(':bookTitle', $bookTitle);
            $stmt->bindParam(':bookCategory', $bookCategory);
            $stmt->bindParam(':bookAuthor', $bookAuthor);
            $stmt->bindParam(':bookAbstract', $bookAbstract);
            $stmt->bindParam(':bookTimeAdded', $bookTimeAdded);
            $stmt->execute();
            echo "<script>
            alert('Upload Success!'); 
            window.location.href = './index.php';
            </script>";
        } else {
            echo "<script>
            alert('Failed to upload the file.'); 
            window.location.href = './index.php';
            </script>";
        }
    }
}
