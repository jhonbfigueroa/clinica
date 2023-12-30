<?php
require_once "Controladores/plantillaC.php";

require_once "Controladores/secretariasC.php";
require_once "Modelos/secretariasM.php";

require_once "Controladores/consultoriosC.php";
require_once "Modelos/consultoriosM.php";

require_once "Controladores/doctoresC.php";
require_once "Modelos/doctoresM.php";

require_once "Controladores/pacientesC.php";
require_once "Modelos/pacientesM.php";

require_once "Controladores/citasC.php";
require_once "Modelos/citasM.php";

require_once "Controladores/adminC.php";
require_once "Modelos/adminM.php";

require_once "Controladores/inicioC.php";
require_once "Modelos/inicioM.php";

$plantilla = new Plantilla();
$plantilla -> LlamarPlantilla();

// Incluye tus controladores y modelos aquí
require_once "Controladores/pacientesC.php";
require_once "Modelos/pacientesM.php";

// Obtén el estado de inicio de sesión y el tipo de usuario
$estaLogueado = // tu lógica para verificar si el usuario ha iniciado sesión
$esPaciente = // tu lógica para verificar si el usuario es un paciente

// Comprueba si el usuario está en la página de inicio y si es un paciente
if (!$estaLogueado || $esPaciente) {
    echo '<script src="//code.tidio.co/gksx5ii1y8r9hhajx00mmwhtfvprohnp.js" async></script>';
}
?>