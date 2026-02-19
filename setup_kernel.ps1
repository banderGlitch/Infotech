# Setup script: Activate venv and register Jupyter kernel
# Run this in PowerShell from the project folder

Write-Host "Activating virtual environment..." -ForegroundColor Cyan
& ".\venv\Scripts\Activate.ps1"

Write-Host "Installing ipykernel (if needed)..." -ForegroundColor Cyan
pip install ipykernel --quiet

Write-Host "Registering Jupyter kernel 'pm-env'..." -ForegroundColor Cyan
python -m ipykernel install --user --name=pm-env --display-name="Python 3.11 (Predictive Maintenance)"

Write-Host "`nDone! In Jupyter/VS Code, select kernel: 'Python 3.11 (Predictive Maintenance)'" -ForegroundColor Green
