<?php

class Insert
{

   public function enviar($eixo, $programa, $compromisso, $problema, $causas, $acoes){
      global $conn;

      $sql = $conn->prepare("INSERT INTO medidas(eixo_relacionado, programa_relacionado, compromisso_relacionado,
      problema, causas_criticas, acoes_criticas) VALUES (:eixo_relacionado, :programa_relacionado,
      :compromisso_relacionado, :problema, :causas_criticas, :acoes_criticas)");
      $sql->bindValue(':eixo_relacionado', $eixo);
      $sql->bindValue(':programa_relacionado', $programa);
      $sql->bindValue(':compromisso_relacionado', $compromisso);
      $sql->bindValue(':problema', $problema);
      $sql->bindValue(':causas_criticas', $causas);
      $sql->bindValue(':acoes_criticas', $acoes);
      $sql->execute();      

      return $sql;
   }

}
?>