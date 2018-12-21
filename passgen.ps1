function Pass-Gen

# This is the menu part

{
Param (
[string]$Title = 'Hustle free password generator'
)
Clear-Host
Write-Host $Title
Write-Host ------------------------------------
Write-Host "1: Press '1' for easy password"
Write-Host "2: Press '2' for medium password"
Write-Host "3: Press '3' for hard password"
Write-Host "Q: Press 'Q' to quit."
}

function Password-Easy {
$lenght = Read-Host "How many characters long this should be? "
$allowed = ‘abcdefghiklmnprstuvwxyzABCDEFGHKLMNPRSTUVWXYZ123456789’
-join (Get-Random -InputObject $allowed.ToCharArray() -Count $lenght)
Read-Host "Press any key"
}

function Password-Medium {
$lenght = Read-Host "How many characters long this should be? "
$allowed = ‘abcdefghiklmnprstuvwxyzABCDEFGHKLMNPRSTUVWXYZ123456789!#$%&?@=:+/’
-join (Get-Random -InputObject $allowed.ToCharArray() -Count $lenght)
Read-Host "Press any key"
}

function Password-Hard {

$lenght = Read-Host "How many characters long this should be? "
$allowed = ‘abcdefghiklmnprstuvwxyzABCDEFGHKLMNPRSTUVWXYZ123456789!#$%&()*+,-./:;<=>?@[\]^_{|}~’
-join (Get-Random -InputObject $allowed.ToCharArray() -Count $lenght)
Read-Host "Press any key"
}

$selection = $null
do {
Pass-Gen
$selection = Read-Host "Select option"
switch ($selection){
'1' {Password-Easy}
'2' {Password-Medium}
'3' {Password-Hard}
'Q' {
Write-Host "Quitting"
}
default {
Read-Host "Wrong selection, try again."
}
}
} while ($selection -notlike "Q")
