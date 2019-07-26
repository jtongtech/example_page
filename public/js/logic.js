var catsElements = document.getElementsByName("whtCrdContainerCat");
var birdsElements = document.getElementsByName("whtCrdContainerBird");

function checkState(item) {
   var catCheckState = document.getElementById("Cats").checked;
   var birdCheckState = document.getElementById("Birds").checked;
   
   if(document.getElementById("Cats").checked == true && document.getElementById("Birds").checked == true) {
      catsElements.forEach(function(element) {
         element.style.display = "block";
      });
      birdsElements.forEach(function(element) {
         element.style.display = "block";
      });
      document.getElementById("Cats").checked = false;
      document.getElementById("Birds").checked = false;
   } else if(item.id == "Birds") {
      onlyBirds();
   } else {
      onlyCats();
   }
}

function onlyBirds() {
   var birdCheckState = document.getElementById("Birds").checked;
   if(birdCheckState == true) {
      catsElements.forEach(function(element) {
         element.style.display = "none";
      });
   } else {
      catsElements.forEach(function(element) {
         element.style.display = "block";
      });
   }
}

function onlyCats() {
   var catCheckState = document.getElementById("Cats").checked;
   if(catCheckState == true) {
      birdsElements.forEach(function(element) {
         element.style.display = "none";
      });
   } else {
      birdsElements.forEach(function(element) {
         element.style.display = "block";
      });
   }
}