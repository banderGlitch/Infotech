# Create virtual environment with Python 3.11
# Run from project folder. Requires Python 3.11 installed.

$py311 = $null
if (Get-Command py -ErrorAction SilentlyContinue) {
    $py311 = py -3.11 -c "import sys; print(sys.executable)" 2>$null
}
if (-not $py311 -and (Get-Command python3.11 -ErrorAction SilentlyContinue)) {
    $py311 = (Get-Command python3.11).Source
}

if (-not $py311) {
    Write-Host "Python 3.11 not found. Install from https://www.python.org/downloads/" -ForegroundColor Red
    Write-Host "Or on Windows: winget install Python.Python.3.11" -ForegroundColor Yellow
    exit 1
}

Write-Host "Using: $py311" -ForegroundColor Cyan
if (Test-Path venv) {
    Write-Host "Removing existing venv..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force venv
}
& $py311 -m venv venv
Write-Host "Created venv with Python 3.11. Run: .\venv\Scripts\Activate.ps1; pip install -r requirements.txt" -ForegroundColor Green
