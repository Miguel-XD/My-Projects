// 1. CAPTURANFO OS ELELMENTOS DA TELA  (FAMOSO DOM)
// Aqui estamos "linkando" o HTML com o JS através dos IDs
const inputNum1 = document.getElementById('num1');
const inputNum2 = document.getElementById('num2');
const visorResu = document.getElementById('resultado');

// Capturando os botões
const btnSomar = document.getElementById('btn-somar');
const btnSubtr = document.getElementById('btn-subtrair');
const btnMulti = document.getElementById('btn-multiplicar');
const btnDivid = document.getElementById('btn-dividir');

// 2. FUNÇÃO AUXILIAR PARA PEGAR OS NÚMEROS
function pegarValores() {
    const valor1 = Number(inputNum1.value);
    const valor2 = Number(inputNum2.value);
    return {valor1, valor2};
};

// 3. O CLIQUE DOS BOTÕES
btnSomar.addEventListener ('click', function() {
    const valores = pegarValores();
    const resultado = valores.valor1 + valores.valor2;
    visorResu.textContent = resultado;
});

btnSubtr.addEventListener ('click', function() {
    const valores = pegarValores();
    const resultado = valores.valor1 - valores.valor2;
    visorResu.textContent = resultado;
});

btnMulti.addEventListener ('click', function() {
    const valores = pegarValores();
    const resultado = valores.valor1 * valores.valor2;
    visorResu.textContent = resultado;
});

btnDivid.addEventListener ('click', function() {
    const valores = pegarValores();
    if (valores.valor2 === 0) {
        visorResu.textContent = 'Erro!'
        return; //Para a execução aqui
    }
    
    const resultado = valores.valor1 / valores.valor2;
    visorResu.textContent = resultado;
});
