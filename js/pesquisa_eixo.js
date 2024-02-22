var search = document.getElementById('pesquisar_eixo');
 
if (search !== null) {
    search.addEventListener("keydown", function(event){
      if(event.key == "Enter")
      {
        searchData();
      }
    });
  }

function searchData()
{
 if (search !== null) {   
   window.location = 'lista.php?eixo='+search.value;
 }
}