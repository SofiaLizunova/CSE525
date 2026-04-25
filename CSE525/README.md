# CSE525 – Decision Support Platform for Overhead Line Ampacity using TMY-STR

## Project Overview
This project develops a data science decision-support prototype for estimating overhead line ampacity using **Typical Meteorological Year Static Thermal Rating (TMY-STR)**.

The case study focuses on the **Dhekelia – Agios Nikolaos 132 kV overhead line in Cyprus**. The system is designed to:
- ingest line and weather data,
- store them in a structured SQL database,
- execute scenario-based calculations,
- support reproducible analysis through Python,
- and present results through a lightweight dashboard.

The project is based on the Phase A report and extends the engineering case study into a reproducible data workflow.

## Research Goal
Can a TMY-STR-based analytics pipeline provide evidence that the existing line can support higher renewable-energy transfer before a full physical upgrade is required?

## Main Data Sources
- **PVGIS / TMY weather data**
- **Technical line parameters** from the Electricity Authority of Cyprus (EAC)
- **Excel-based validated source dataset** used as the starting point for ingestion and SQL processing

## Proposed Architecture
**Excel / source file → SQL tables / views → Python code → dashboard / analysis**

1. Source data are provided in Excel format.
2. Python imports the Excel data into SQL tables.
3. SQL scripts perform transformations and calculations.
4. Python queries the database and prepares outputs.
5. Results are presented in the prototype/dashboard.
   
The excel file can be found in this link: https://alucutac-my.sharepoint.com/:x:/g/personal/soa_christodoulou_edu_cut_ac_cy/IQBEkI91Gj4zQKqZhfydRxjnAZ1x9IVpzLLgxyRyWmZbpkw?e=XP8uiA

## Repository Structure
```text
CSE525/
├── README.md
├── requirements.txt
├── .gitignore
├── .env.example
├── data/
│   ├── README.md
│   └── sample/
├── sql/
│   ├── schema.sql
│   ├── calculations.sql
│   └── queries.sql
├── src/
│   ├── config.py
│   ├── db.py
│   ├── import_excel.py
│   ├── pipeline.py
│   └── app.py
├── docs/
│   └── INSTALL.md
└── notebooks/
```

## Requirements
- Python 3.11+
- pip
- SQLite for local demo
- Optional: PostgreSQL for extended deployment

## Installation
```bash
git clone https://github.com/SofiaLizunova/CSE525.git
cd CSE525

python -m venv venv
source venv/bin/activate   # Windows: venv\Scripts\activate

pip install -r requirements.txt
```

## Local Database Setup (SQLite)
```bash
python src/import_excel.py
python src/pipeline.py
```

This will:
- create the SQLite database,
- import Excel data into raw tables,
- create SQL views / processed tables,
- and prepare the final dataset for analysis.

## Run the Prototype
```bash
python src/app.py
```

If you use Streamlit later, replace the previous command with:
```bash
streamlit run src/app.py
```

## Minimum README Requirements Covered
This repository includes:
- project documentation,
- installation instructions,
- run instructions,
- data pipeline explanation,
- suggested SQL/database structure,
- and a reproducible local setup.

## Notes
- If the repository is private, invite the username **gerasimou**.
- If full data cannot be shared, provide a sample Excel file and document the hidden files in `data/README.md`.
