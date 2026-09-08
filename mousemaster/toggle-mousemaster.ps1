<#
Toggle / restart mousemaster.
It normally runs headless via the "Mousemaster" scheduled task (conhost --headless),
so toggling has to stop the live process and, to turn it back on, re-fire that task
rather than just launching the exe directly (that would pop a console window and
skip the working-directory setup the task provides).

Usage:
  .\toggle-mousemaster.ps1            # running -> stop it; stopped -> start it
  .\toggle-mousemaster.ps1 -Restart   # force stop+start (fixes stuck-key / "weird" states)
#>
param(
    [switch]$Restart
)

$proc = Get-Process -Name mousemaster -ErrorAction SilentlyContinue

if ($Restart) {
    if ($proc) { $proc | Stop-Process -Force }
    Start-Sleep -Milliseconds 300
    Start-ScheduledTask -TaskName 'Mousemaster'
    Write-Host 'mousemaster restarted'
}
elseif ($proc) {
    $proc | Stop-Process -Force
    Write-Host 'mousemaster stopped'
}
else {
    Start-ScheduledTask -TaskName 'Mousemaster'
    Write-Host 'mousemaster started'
}
