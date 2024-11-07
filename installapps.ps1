$appsToInstall = @(
	"Microsoft.PowerShell"
	"Google.Chrome"
	"Mozilla.Firefox"
	"Giorgiotani.Peazip"
	"Adobe.Acrobat.Reader.64-bit"
)


foreach ($app in $appsToInstall) {
	Write-Host "Installing $app..."
	try {
			winget install --id $app --silent --accept-package-agreements --accept-source-agreements
			Write-Host "Successfully installed $app" -ForegroundColor Green
	}
	catch {
			Write-Host "Failed to install ${app}: $_" -ForegroundColor Red
	}
}
