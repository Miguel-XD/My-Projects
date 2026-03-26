var num1 = document.getElementById('num1');
var num2 = document.getElementById('num2');
var result = document.getElementById('resultado');

var btnSomar = document.getElementById('btn-somar');
var btnSubtrair = document.getElementById('btn-subtrair');
var btnMultiplicar = document.getElementById('btn-multiplicar');
var btnDividir = document.getElementById('btn-dividir');

btnSomar.addEventListener('click', function() {
    const soma = Number(num1.value) + Number(num2.value);
    result.innerHTML = `<strong> ${soma} <strong>`;
});

btnSubtrair.addEventListener('click', function() {
    const sub = Number(num1.value) - Number(num2.value);
    result.innerHTML = `<strong> ${sub} <strong>`;
});

btnMultiplicar.addEventListener('click', function() {
    const mult = Number(num1.value) * Number(num2.value);
    result.innerHTML = `<strong> ${mult} <strong>`;
})

btnDividir.addEventListener('click', function() {
    const divi = Number(num1.value) / Number(num2.value);
    result.innerHTML = `<strong> ${divi} <strong>`;
})