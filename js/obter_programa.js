document.addEventListener('DOMContentLoaded', function() {
var selecteixo = document.getElementById('eixo_relacionado');

if (selecteixo && selecteixo.tagName === 'SELECT') {
    selecteixo.onchange = function() {
        let selectprograma = document.getElementById('programa_relacionado');
        fetch("./post/obter_programa.php?eixo=1")
        .then( response => {
           return response.text();
        })
        .then( texto => {
           console.log(texto);
         });
    };
}
});



