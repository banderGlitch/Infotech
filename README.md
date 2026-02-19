# Predictive Maintenance - Failure in 24 Hours

Predict whether a machine will fail within the next 24 hours using the [AI4I 2020 Predictive Maintenance Dataset](https://www.kaggle.com/datasets/stephanmatzka/predictive-maintenance-dataset-ai4i-2020).

## Requirements

- **Python 3.11**
- Jupyter

## Setup

**Requires Python 3.11** installed (e.g. from [python.org](https://www.python.org/downloads/) or `pyenv`).

```powershell
# 1. Create virtual environment with Python 3.11 (Windows: use py launcher)
py -3.11 -m venv venv

# 2. Activate (PowerShell)
.\venv\Scripts\Activate.ps1

# 3. Install dependencies
pip install -r requirements.txt

# 4. Register Jupyter kernel (run setup_kernel.ps1 or manually)
.\setup_kernel.ps1
```

On Linux/Mac, use `python3.11 -m venv venv` if Python 3.11 is installed.

**Connect notebooks to the environment:** After running `setup_kernel.ps1`, in Jupyter or VS Code select the kernel **"Python 3.11 (Predictive Maintenance)"** from the kernel picker. All three notebooks are pre-configured to use this kernel.

## Project Structure

```
Infotact_project/
├── archive/
│   └── ai4i2020.csv          # Raw data
├── data/                      # Created by 02_preprocessing.ipynb
│   ├── processed_data.csv
│   ├── X_train.csv, X_test.csv
│   ├── y_train.csv, y_test.csv
│   └── feature_cols.json
├── models/                    # Created by 03_modeling.ipynb
│   └── rf_model.joblib
├── 01_eda.ipynb               # Exploratory data analysis
├── 02_preprocessing.ipynb     # Target creation & feature engineering
├── 03_modeling.ipynb          # Train & evaluate models
├── requirements.txt
└── README.md
```

## Notebooks (Run in Order)

1. **01_eda.ipynb** – Explore data, distributions, failure patterns
2. **02_preprocessing.ipynb** – Create `failure_in_24h` target, engineer features, train/test split
3. **03_modeling.ipynb** – Train Random Forest (with SMOTE), evaluate, save model

## Target Definition

- **failure_in_24h** = 1 if any machine failure occurs in the next 24 records (rows)
- Assumes 1 record ≈ 1 hour (configurable via `HORIZON` in `02_preprocessing.ipynb`)

## Run

```bash
jupyter notebook
```

Open and run the notebooks in order: 01 → 02 → 03.
