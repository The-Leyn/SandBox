// Récupère toutes les slides et tous les liens dans slides dans deux variables
const allCarouselSlide = document.querySelectorAll(".slide");
const allCarouselSlideLinks = document.querySelectorAll(".slide a");

//Si la largeur de la fenêtre est supérieur à 800px alors désactive tous les liens sauf celui de la slide active au chargement.
// Sinon active tous liens.
function disableAllLinksExceptActiveSlide() {
  const windowWidth = window.innerWidth;

  if (windowWidth > 800) {
    allCarouselSlideLinks.forEach((link) => link.classList.add("disable"));

    const activeSlideLink = document.querySelector(".slide-active a");
    if (activeSlideLink) {
      activeSlideLink.classList.remove("disable");
    }

    changeImgSlide();
  } else {
    // Si la largeur de la fenêtre est inférieure à 800 pixels, active tous les liens.
    allCarouselSlideLinks.forEach((link) => link.classList.remove("disable"));

    changeImgSlide();
  }
}
disableAllLinksExceptActiveSlide();

// Pour chaque slide retire la calss slide-active et ne la donne que a la slide qui est cliquée. + Désactive les liens sauf celui auquel on vient de mettre la class active.
allCarouselSlide.forEach((slide) => {
  slide.addEventListener("click", () => {
    allCarouselSlide.forEach((otherSlide) =>
      otherSlide.classList.remove("slide-active")
    );

    slide.classList.add("slide-active");

    disableAllLinksExceptActiveSlide();
  });
});

// Mettre à jour la désactivation des liens lors du redimensionnement de la fenêtre
window.addEventListener("resize", () => {
  // Utiliser un délai pour attendre que le redimensionnement soit terminé
  clearTimeout(window.resizeTimer);
  window.resizeTimer = setTimeout(() => {
    disableAllLinksExceptActiveSlide();
  }, 5);
});

// Fonction pour changer l'image des slides en fonction de la largeur d'écran
function changeImgSlide() {
  const imagesProduit = document.querySelectorAll(".image-produit");
  imagesProduit.forEach(function (image) {
    const imgProduit = image.closest(".slide").getAttribute("data-img1");
    const imgProduit2 = image.closest(".slide").getAttribute("data-img2");
    const windowWidth = window.innerWidth;

    // // Définir la source en fonction de la largeur de l'écran
    if (windowWidth < 800) {
      image.src = "img/" + imgProduit2;
    } else {
      image.src = "img/" + imgProduit;
    }
  });
}
