# Air Boltic
Air Boltic marketplace analytics.

## Project structure
```
├── README.md
├── analytics
│   ├── air_boltic_analytics
│   │   ├── analyses
│   │   ├── dbt_project.yml
│   │   ├── logs
│   │   ├── macros
│   │   ├── models
│   │   ├── seeds
│   │   ├── snapshots
│   │   ├── target
│   │   └── tests
│   ├── analytics_report.html
│   ├── analytics_report.ipynb
│   ├── dev.duckdb
│   └── logs
│       └── dbt.log
├── docs
│   └── analytics_architecture.png
├── pyproject.toml
├── samples
│   ├── aeroplane.csv
│   ├── aeroplane_model.json
│   ├── customer.csv
│   ├── customer_group.csv
│   ├── order.csv
│   └── trip.csv
└── uv.lock
```

- `README.md`: General project info
- `analytics`
  - `air_boltic_analytics`: dbt project
  - `analytics_report.html`: HTML version of the report for sharing with business stakeholders
  - `analytics_report.ipynb`: Jupyter notebook with the report
  - `dev.duckdb`: analytics database used in the project
  - `logs`: dbt logs
- `docs`: files for documentation
- `pyproject.toml`: project settings and libraries
- `samples`: Sample datasets in CSV and JSON formats
- `uv.lock`: Python environment state

## Technology stack
This project is based on modern open-source technologies:
- Analytics database: [DuckDB](https://duckdb.org/)
- Data analysis library: [Polars](https://pola.rs/)
- Data transformation framework: [dbt](https://www.getdbt.com/)
- Python packages management: [uv](https://docs.astral.sh/uv/)
- Diagrams: [Mermaid](https://mermaid.js.org/)

## Specification
[Analytics report](https://nbviewer.org/github/dmitrydoni/air-boltic/blob/main/analytics/analytics_report.html)

