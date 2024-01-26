document.addEventListener('DOMContentLoaded', function() {
    let programa = document.getElementById('programa_relacionado');
    
    if (programa && programa.tagName === 'SELECT') {
        programa.onchange = function() {
            let compromisso = document.getElementById('compromisso_relacionado');
            let valor = programa.value;

            fetch("./post/obter_compromisso.php?programa=" + valor)
                .then(response => {
                    return response.text();
                })
                .then(texto => {
                    compromisso.innerHTML = texto;
                });
        }
    }
});

