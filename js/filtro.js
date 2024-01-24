$(document).ready(function () {
    // Inicialize o Select2 para todos os selects
    $('.select2').select2();

     // Função para carregar opções dinamicamente
     function carregarProgramas(select1Valor) {
        // Limpar opções existentes
        $('#programa_relacionado').empty();
        // Adicionar uma opção padrão
        $('#programa_relacionado').append('<option value="">Selecione um Programa:</option>');

        // Fazer uma requisição AJAX para obter os programas dinamicamente do servidor
        $.ajax({
            url: './post/obter_programa.php',
            type: 'POST',
            data: {
                select1: select1Valor
            },
            dataType: 'json',
            success: function (data) {
                // Adicionar as opções ao selectProgramas
                $.each(data, function (key, value) {
                    $('#programa_relacionado').append('<option value="' + value.valor + '">' + value.texto + '</option>');
                });
            },
            error: function (error) {
                console.error("Erro ao obter programas:", error);
            }
        });
    }    
    // Quando o valor de eixo_relacionado for alterado
    $('select[name="eixo_relacionado"]').change(function () {
        var eixoValor = $(this).val();

        // Carregar programas para o selectProgramas
        carregarProgramas(eixoValor);
    });

});