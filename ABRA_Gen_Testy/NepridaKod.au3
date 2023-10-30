#include <Date.au3>

;Aktivuje okno ABRA Gen
MouseClick("Left", 610, 10, 1)

;Otevre okono Nový
MouseClick("Left", 1448, 121, 1)

;Klikne do "Název"
MouseClick("Left", 201, 142, 1)
Send("Vymyšlená Firma")

;Klikne do "IČO"
MouseClick("Left", 628, 119, 1)
Send("125987")

;Klikne do "DIČ"
MouseClick("Left", 628, 142, 1)
Send("36954")

;Klikne do "IČD"
MouseClick("Left", 839, 119, 1)
Send("3698")

;Klikne do "Číslo EORI"
MouseClick("Left", 839, 142, 1)
Send("36986598")

;Klikne do "Uložit"
MouseClick("Left", 1448, 637, 1)
Sleep(4000)

;Označit vše
MouseClick("Right", 293, 351, 1)
MouseClick("Left", 357, 359, 1)

;Kopírovat do schranky
MouseClick("Right", 230, 158, 1)
MouseClick("Left", 262, 238, 1)

;Exportuje data
Sleep(5000)
$variable = ClipGet()
$datum = _Now()

$NazevSouboru = StringReplace($datum, ".", "-")
$NazevSouboru = StringReplace($NazevSouboru, ":", "-")
$NazevSouboru = $NazevSouboru & ".txt"

FileWrite($NazevSouboru, $variable)

;Odznačit vše
MouseClick("Right", 293, 351, 1)
MouseClick("Left", 377, 379, 1)

;Označí poslední řádek
Send("{PGDN}")

;Vymaže řádek
MouseClick("Left", 1446, 190, 1)

;Potvrdí pomocí "a"
Send("a")
Send("{ENTER}")



