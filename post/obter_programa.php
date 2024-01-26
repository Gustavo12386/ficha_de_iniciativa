<?php
include('config.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Receber o valor do eixo selecionado
    
    $eixoSelecionado = $_POST['select1'];

    try {
        // Consulta ao banco de dados para obter programas específicos
        
        $stmt = $conn->prepare('SELECT cod_programa_governo, desc_programa_governo FROM programa
            WHERE cod_nome_eixo = :cod_nome_eixo');
        $stmt->bindParam(':cod_nome_eixo', $eixoSelecionado);
        $stmt->execute();
        
        $programas = [];
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $programas[] = [
                'valor' => $row['cod_programa_governo'] . ' - ' . $row['desc_programa_governo'],
                'texto' => $row['cod_programa_governo'] . ' - ' . $row['desc_programa_governo']
            ];
        }

        header('Content-Type: application/json');
        echo json_encode($programas);
    }
 catch (PDOException $e) {
        // Erro na conexão ou na consulta
        header('HTTP/1.1 500 Internal Server Error');
        echo "Erro interno no servidor: " . $e->getMessage();
    }
} 

else {
    // Requisição inválida
    header('HTTP/1.1 400 Bad Request');
    echo "Requisição inválida.";
}

?>