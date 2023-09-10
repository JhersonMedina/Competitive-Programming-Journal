./gen.exe
./d.exe
./brute.exe

$VAR1 = Get-Content -path ./output.txt
$VAR2 = Get-Content -path ./outbrute.txt
 while ($VAR1 -eq $VAR2) {
    write-host "OK"
    ./gen.exe
    ./d.exe
    ./brute.exe

    $VAR1 = Get-Content -path ./output.txt
    $VAR2 = Get-Content -path ./outbrute.txt
 }

write-host "Wrong Answer, test case: "
cat input.txt
write-host "Answer: $VAR2"
write-host "output: $VAR1"
