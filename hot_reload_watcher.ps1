# Set the path to watch (current directory by default)
$watchPath = "."  # Change to a specific subfolder if needed, e.g., "./lib"

# Create a FileSystemWatcher
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = Resolve-Path $watchPath
$watcher.IncludeSubdirectories = $true
$watcher.Filter = "*.dart"  # Watch only Dart files; add more filters if needed (e.g., "*.yaml")
$watcher.EnableRaisingEvents = $true

# Define the action to take on file change
$action = {
    # Append 'r' to the input file to trigger hot reload
    Add-Content -Path "flutter_input.txt" -Value "r"
    Write-Host "File changed - triggering hot reload..."
}

# Register the event
Register-ObjectEvent $watcher "Changed" -Action $action

# Keep the script running (press Ctrl+C to stop)
Write-Host "Watching for changes in $watchPath. Press Ctrl+C to stop."
while ($true) { Start-Sleep -Seconds 1 }
