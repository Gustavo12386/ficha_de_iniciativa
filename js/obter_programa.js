document.addEventListener('DOMContentLoaded', function() {
var selecteixo = document.getElementById('eixo_relacionado');

if (selecteixo && selecteixo.tagName === 'SELECT') {
    selecteixo.onchange = function() {
        let selectprograma = document.getElementById('programa_relacionado');
        let valor = selecteixo.value;

        fetch("./post/obter_programa.php?eixo=" + valor)
        .then( response => {
           return response.text();
        })
        .then( texto => {
            selectprograma.innerHTML = texto;
         });
    };
}
});



