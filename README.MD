# PL SQL Tables for countries with localized names

This project contains the DDL and inserts (DMLs) to create the tables and data for languages, countries, and country localized names.

The inserts has:

- 77 languages;
- 249 countries;

The localized names are translated in many languages. Neither all languages listed in the languages table has translations for the country names.

The SQL is written for PostgreSQL but it can be easily changed to fit any other relational database.

## Tables

### Languages

Contains the following columns:

- id
- name (in english)
- code (ISO code with two digits)
- available (if the language is available to the user. This column is optional)

### Countries

Contains the following columns:

- id
- code (ISO code with two digits)
- default_name (in english)
- idd_code (International Direct Dialing code)

### Country Localized Names

Contains the following columns:

- country_id
- language_id
- name (the name of the country related to the country_id translated in the language related to the language_id)

## Basic instructions...

1 - Create the tables in the 01-DML folder in the order specified in the file names starting by 01.

2 - Insert the data of the data from the 02-DML folder following the file names starting by 01.

Use it for free in your projects. If you do, please, give a star.
