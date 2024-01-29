$(function () {
    $('.form').submit(function () {

      $.ajax({
        url: './post/Acao.php',
        type: 'POST',
        data: $(this).serialize(),
        success: function (data) {

            // Limpar campos específicos
            $('textarea[name="problema"]').val('');
            $('textarea[name="causas_criticas"]').val('');
            $('textarea[name="acoes_criticas"]').val('');

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