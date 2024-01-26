$(function () {
    $('.form').submit(function () {

      $.ajax({
        url: './post/Acao.php',
        type: 'POST',
        data: $(this).serialize(),
        success: function (data) {
          $('.inscricao').html(data);       

          // Recrie o Select2
          $('.select2').select2();

          $('.form')[0].reset();

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