$(function () {
    $('.form').submit(function () {
      var currentCodProblemaValue = $('input[name="cod_problema"]').val();
      $.ajax({
        url: './post/Acao.php',
        type: 'POST',
        data: $(this).serialize(),
        success: function (data) {

            // Limpar campos específicos
            $('textarea[name="problema"]').val('');
            $('textarea[name="causas_criticas"]').val('');
            $('textarea[name="acoes_criticas"]').val('');
            
            var newCodProblemaValue = parseInt(currentCodProblemaValue) + 1;
            $('input[name="cod_problema"]').val(newCodProblemaValue);
            
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