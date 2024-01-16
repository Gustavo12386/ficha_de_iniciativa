<?php
if(empty($_GET['mensagem'])){
 echo "<script language='javascript' type='text/javascript'>window.location.href='index.php'</script>";
}
echo '<h1>Ocorreu um erro! Os dados não foram enviados.</h1>';
?>