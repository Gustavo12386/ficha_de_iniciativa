var search = document.getElementById('pesquisar_compromisso');

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
     window.location = 'lista.php?compromisso='+search.value;
    } 
  }