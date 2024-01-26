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

          // Redefina os valores dos selects para as opções padrão
          $('#eixo_relacionado').val('');
          $('#programa_relacionado').val('');
          $('#compromisso_relacionado').val('');

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