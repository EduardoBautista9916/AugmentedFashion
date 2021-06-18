
var elInput = document.querySelector('#precio-min');
if (elInput) {
  var etiqueta = document.querySelector('#precio-min-label');
  if (etiqueta) {
    etiqueta.innerHTML = elInput.value;

    elInput.addEventListener('input', function() {
      etiqueta.innerHTML = elInput.value;
      if(elInput.value > elInputmax.value){
        elInputmax.value = elInput.value;
        etiquetamax.innerHTML = elInputmax.value;
      }
    }, false);
  }
}
var elInputmax = document.querySelector('#precio-max');
if (elInputmax) {
  var etiquetamax = document.querySelector('#precio-max-label');
  if (etiquetamax) {
    etiquetamax.innerHTML = elInputmax.value;

    elInputmax.addEventListener('input', function() {
      etiquetamax.innerHTML = elInputmax.value;
      if(elInputmax.value < elInput.value){
        elInput.value = elInputmax.value;
        etiqueta.innerHTML = elInput.value;
      }
    }, false);
  }
}