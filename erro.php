<?php
session_start();
if(empty($_GET['mensagem'])){
 echo "<script language='javascript' type='text/javascript'>window.location.href='index.php'</script>";
}
if(isset($_SESSION['error']) == false){
   unset($_SESSION['error']);
   echo "<script language='javascript' type='text/javascript'>window.location.href='index.php'</script>"; 
}
$error = $_SESSION['error'];
echo '<h1>Ocorreu um erro! Os dados não foram enviados.</h1>';
print '<a href="index.php"><button id="botao">Voltar</button></a>';
?>

<style>
 #botao
 { 
  width: 100px;
  height: 40px;
  cursor: pointer;
 }   
</style>