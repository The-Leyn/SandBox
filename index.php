<?php
require('db_connect.php');


$selectCarouselSlide = $bdd->prepare('SELECT * FROM carousel_slide');
$selectCarouselSlide->execute();

// Récupération des résultats sous forme de tableau
$products = $selectCarouselSlide->fetchAll(PDO::FETCH_ASSOC);

// Affichage des résultats (à des fins de démonstration)
// print_r($products);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>

<body>
    <div class="carousel">
        <?php
        $count = 0;
        foreach ($products as $product) {
            // echo $count;
            $count++;
        ?>
            <div data-img1="<?php echo $product['img1']; ?>" data-img2="<?php echo $product['img2']; ?>" class="slide <?php if ($count == 2) {
                                                                                                                            echo 'slide-active';
                                                                                                                        } ?>">
                <a href="<?php echo $product['link']; ?>" target="_blank">
                    <!-- Balise img avec une classe pour la manipulation JavaScript -->
                    <img class="image-produit" src="img/<?php echo $product['img1'] ?>" alt="Name Image 1">
                </a>
            </div>
        <?php
        }
        ?>
    </div>

    <script src="script.js"></script>
</body>

</html>