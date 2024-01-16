<?php

class Insert
{

   public function enviar($eixo, $problema_relacionado, $compromisso, $problema, $causas, $acoes){
      global $conn;

      $sql = $conn->prepare("INSERT INTO medidas(eixo_relacionado, problema_relacionado, compromisso_relacionado,
      problema, causas_criticas, acoes_criticas) VALUES (:eixo_relacionado, :problema_relacionado,
      :compromisso_relacionado, :problema, :causas_criticas, :acoes_criticas)");
      $sql->bindValue(':eixo_relacionado', $eixo);
      $sql->bindValue(':problema_relacionado', $problema_relacionado);
      $sql->bindValue(':compromisso_relacionado', $compromisso);
      $sql->bindValue(':problema', $problema);
      $sql->bindValue(':causas_criticas', $causas);
      $sql->bindValue(':acoes_criticas', $acoes);
      $sql->execute();      

      return $sql;
   }

}
?>