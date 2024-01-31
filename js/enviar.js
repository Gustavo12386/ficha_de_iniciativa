$(function () {
    $('.form').submit(function () {

      var problema = $('input[name="cod_problema"]').val();
      var causas = $('input[name="cod_causas"]').val();
      var acoes = $('input[name="cod_acoes"]').val();

      $.ajax({
        url: './post/Acao.php',
        type: 'POST',
        data: $(this).serialize(),
        success: function (data) {

            // Limpar campos específicos
            $('textarea[name="problema"]').val('');
            $('textarea[name="causas_criticas"]').val('');
            $('textarea[name="acoes_criticas"]').val('');
            
            var newproblema = parseInt(problema) + 1;
            $('input[name="cod_problema"]').val(newproblema);
            var newcausas = parseInt(causas) + 1;
            $('input[name="cod_causas"]').val(newcausas);
            var newacoes = parseInt(acoes) + 1;
            $('input[name="cod_acoes"]').val(newacoes);

            $('.inscricao').html(data);
            // Recrie o Select2
            $('.select2').select2();          

          Swal.fire({
            title: 'Dados enviados com sucesso!',
            icon: 'success',
            customClass: {
                popup: 'enviar', 
            }
          });        
        }      
      });
      return false;
    });  
  });