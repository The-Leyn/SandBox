<?php
// Paramètres de la base de données
$dsn = 'mysql:host=localhost;dbname=carousel_eneba';
$username = 'root';
$password = '';

try {
    // Création de l'objet PDO
    $bdd = new PDO($dsn, $username, $password);

    // Configuration des options de PDO
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

    // Vous êtes maintenant connecté à la base de données

} catch (PDOException $e) {
    // En cas d'erreur de connexion, affichez l'erreur
    echo 'Erreur de connexion : ' . $e->getMessage();
}
?>
