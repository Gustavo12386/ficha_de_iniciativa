<?php
include('config.php');

$categoria = $_GET['programa'];

$stmt = $conn->prepare('SELECT id_compromisso, cod_compromisso, desc_compromisso
FROM compromisso WHERE cod_des_programa=:cod_des_programa');
$data = ['cod_des_programa' => $categoria];
$stmt->execute($data);

$resultados = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo '<option value="">Selecione um Compromisso:</option>';

foreach ($resultados as $option) {   
?>
    <option value="<?php echo $option['cod_compromisso'] . '-' . $option['desc_compromisso'];?>">
    <?php echo $option['cod_compromisso'] . '-' . $option['desc_compromisso'];?></option>   
<?php
}
?>

