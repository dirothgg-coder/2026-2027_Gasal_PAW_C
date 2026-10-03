<?php

$matkul = ["PTI", "ALPRO", "DPW", "STRUKDAT", "JARKOM", "PAW", "PSBF", "RPL"];

	foreach ($matkul as $mk) {
		switch ($mk) {
		case "PTI":
			echo "sayasuka" . $mk ."<br>";
			break;

		case "ALPRO":
			echo "sayasuka" . $mk ."<br>";
			break;

		case "DPW":
			echo "sayasuka" . $mk ."<br>";
			break;

		case "STRUKDAT":
			echo "sayasuka" . $mk ."<br>";
			break;

		case "JARKOM":
			echo "sayasuka" . $mk ."<br>";
			break;

		case "PAW":
			echo "sayasuka" . $mk ."<br>";
			break;
		default:
			echo "saya tidak mengambil" . $mk ."<br>";
			break;
		}
	}
?>