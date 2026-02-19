# Run this with notebook CLOSED to avoid file lock
# Double-click or: powershell -ExecutionPolicy Bypass -File install_requirements.ps1

Set-Location $PSScriptRoot
& ".\venv\Scripts\Activate.ps1"
pip install -r requirements.txt
Write-Host "`nDone. Now open the notebook and select kernel 'Python 3.11 (Predictive Maintenance)'" -ForegroundColor Green
