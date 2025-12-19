Get-ChildItem -Directory | ForEach-Object {
	echo "Updating: $_"
	Set-Location $_.Name
	if (Test-Path -Path ".git") {
		git pull
	} else {
		echo "Can't find .git, skipping..."
	}
	Set-Location ..
}