New-Alias VBoxManage "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe"

# Get the path of the home directory
$WORKSHOP_DIR = (Get-Item $script:MyInvocation.MyCommand.Path).Directory
Write-Host $WORKSHOP_DIR

IF(!$Env:DOCKER_MACHINE_NAME) {
  $Env:DOCKER_MACHINE_NAME = "dev"
}

VBoxManage sharedfolder add "$Env:DOCKER_MACHINE_NAME" -name docker_workshop -hostpath $WORKSHOP_DIR
