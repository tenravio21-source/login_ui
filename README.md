#Run hot Reload with r
## Psate below in powershell
Get-Content -Path "flutter_input.txt" -Tail 0 -Wait | flutter run

#Run hot Reload with r
.\hot_reload_watcher.ps1

! info remove r from flutter_input.txt on new project
