$msiFiles = Get-ChildItem -Path "c:\azureCosmosEmulator\" -Recurse -Include *.msi

foreach($file in $msiFiles)
{
  Start-Process msiexec -ArgumentList "/i $file /quiet /log c:\install.log"
}
