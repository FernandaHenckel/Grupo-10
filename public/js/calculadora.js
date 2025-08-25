function calculadora(){

    nome = ipt_nome.value;
    valor = ipt_valorInserido.value

    // formatar moeda 
    
    calculo = valor * 0.11;

    var moeda = calculo.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});
    
    outputCalculadora.innerHTML = `olá, ${nome}. \n Com nosso monitoramento sua empresa evita um prejuízo de ${moeda} anual.  `
}