$(function () {
    $('.form').submit(function () {
      var eixo = $('#eixo_relacionado').val();
      var programa = $('#programa_relacionado').val();
      var compromisso = $('#compromisso_relacionado').val();

      $.ajax({
        url: './post/Acao.php',
        type: 'POST',
        data: $(this).serialize(),
        success: function (data) {
          $('.inscricao').html(data);

          $('#eixo_relacionado').val('').trigger('change'); 
          $('#programa_relacionado').val('').trigger('change');
          $('#compromisso_relacionado').val('').trigger('change');

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