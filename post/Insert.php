<?php

class Insert
{

   public function enviar($eixo, $programa, $compromisso,
   $cod_problema, $problema, $cod_causas, $causas, $cod_acoes, $acoes)
   {
      global $conn;

      $sql = $conn->prepare("INSERT INTO medidas(eixo_relacionado, programa_relacionado, compromisso_relacionado,
      cod_problema, problema, cod_causas, causas_criticas, cod_acoes, acoes_criticas) VALUES (:eixo_relacionado, :programa_relacionado,
      :compromisso_relacionado, :cod_problema, :problema, :cod_causas, :causas_criticas, :cod_acoes, :acoes_criticas)");
      $sql->bindValue(':eixo_relacionado', $eixo);
      $sql->bindValue(':programa_relacionado', $programa);
      $sql->bindValue(':compromisso_relacionado', $compromisso);
      $sql->bindValue(':cod_problema', $cod_problema);
      $sql->bindValue(':problema', $problema);
      $sql->bindValue(':cod_causas', $cod_causas);
      $sql->bindValue(':causas_criticas', $causas);
      $sql->bindValue(':cod_acoes', $cod_acoes);
      $sql->bindValue(':acoes_criticas', $acoes);
      $sql->execute();      

      return $sql;
   }

}
?>