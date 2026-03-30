# Installation Guide

## 1. Clone the repository
```bash
git clone https://github.com/SofiaLizunova/CSE525.git
cd CSE525
```

## 2. Create a virtual environment
```bash
python -m venv venv
source venv/bin/activate
```
On Windows:
```bash
venv\Scripts\activate
```

## 3. Install dependencies
```bash
pip install -r requirements.txt
```

## 4. Add the Excel source file
Place the input Excel file in:
```text
data/sample/
```

## 5. Run the setup
```bash
python src/import_excel.py
python src/pipeline.py
python src/app.py
```

## 6. Optional PostgreSQL setup
If you later migrate to PostgreSQL, fill in `.env` using `.env.example` and update the DB connection logic in `src/db.py`.
