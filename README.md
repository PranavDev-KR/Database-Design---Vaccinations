# COVID-19 Vaccinations Database

## Project Overview
This project constructs a robust database from the publicly available "Our World in Data COVID-19 vaccination" dataset, which includes comprehensive data on vaccination numbers, doses administered, and daily vaccination rates across 169 countries. The database is designed to aid policymakers and researchers in analyzing pandemic management and vaccine distribution patterns.

## Repository Contents
- `vaccinations.db`: A SQLite database file containing all processed data ready for queries.
- `database.sql`: SQL scripts for creating the database schema and inserting data.
- `model.pdf`: A PDF file containing the Entity-Relationship diagram of the database schema along with normalisation.
- README file
  
## Dataset Source
The data is sourced from the Our World in Data article on COVID-19 vaccinations, which can be accessed [here](https://www.nature.com/articles/s41562-021-01122-8). The dataset is maintained and updated regularly, providing insights into global vaccination efforts.

## Features
- **Global Coverage**: Data from 169 countries detailing the scale and rate of vaccine rollout.
- **Regular Updates**: Dataset includes daily updates on total vaccinations, dose segmentation (first and second doses), and population-adjusted coverage.
- **Accessibility**: Data is available in CSV and JSON formats from the [Our World in Data GitHub repository](https://github.com/owid/covid-19-data/tree/master/public/data/vaccinations).

## ER Diagram
The Entity-Relationship (ER) diagram provides a visual representation of the database schema, facilitating an understanding of the data structure and relationships. (Include image or link to ER diagram here if possible.)

## Database Schema
The database schema is normalized to 3NF to ensure data integrity and reduce redundancy:
1. **Vaccine**: Stores vaccine names and associated ISO codes.
2. **Location**: Records ISO codes and location names.
3. **Source**: Contains source names and URLs.
4. **Date**: Tracks date-specific data.
5. **Vaccination Records**: Details about vaccinations administered, fully vaccinated individuals, and booster doses.
6. **Manufacturer Data**: Information on doses provided by different vaccine manufacturers.

## Installation and Setup
Instructions on setting up the project locally:
1. Clone the repository:
   ```bash
   git clone [[repository-url](https://github.com/PranavDev-KR/Database-Design---Vaccinations)]
