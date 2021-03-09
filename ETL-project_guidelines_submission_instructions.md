# ETL-project

# Guidelines for ETL Project

This document contains guidelines, requirements, and suggestions for Project 1.

## Team Effort

Due to the short timeline, teamwork will be crucial to the success of this project! Work closely with your team through all phases of the project to ensure that there are no surprises at the end of the week.

Working in a group enables you to tackle more difficult problems than you'd be able to working alone. In other words, working in a group allows you to **work smart** and **dream big**. Take advantage of it!

## Project Proposal

Before you start writing any code, remember that you only have one week to complete this project. View this project as a typical assignment from work. Imagine a bunch of data came in and you and your team are tasked with migrating it to a production data base.

Take advantage of your Instructor and TA support during office hours and class project work time. They are a valuable resource and can help you stay on track.

## Finding Data

Your project must use 2 or more sources of data. We recommend the following sites to use as sources of data:

* [data.world](https://data.world/)

* [Kaggle](https://www.kaggle.com/)

You can also use APIs or data scraped from the web. However, get approval from your instructor first. Again, there is only a week to complete this!

## Data Cleanup & Analysis

Once you have identified your datasets, perform ETL on the data. Make sure to plan and document the following:

* The sources of data that you will extract from.

* The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).

* The type of final production database to load the data into (relational or non-relational).

* The final tables or collections that will be used in the production database.

You will be required to submit a final technical report with the above information and steps required to reproduce your ETL process.

## Project Report

At the end of the week, your team will submit a Final Report that describes the following:

* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

* **T**ransform: what data cleaning or transformation was required.

* **L**oad: the final database, tables/collections, and why this was chosen.

Please upload the report to Github and submit a link to Bootcampspot.

- - -

### Copyright

Coding Boot Camp © 2019. All Rights Reserved.

# ETL Project Submission Guidelines:

You'll need to create a public Github repository where the code, extracted data, and report are available. The link to the repository is what each team member will be uploading into bootcampspot.

## Suggested Repo Structure:
Let's say I have two datasources I am pulling from Red and Blue - this structure is a guideline (i.e. you dont have to follow it).

\
|-- 00_input\
|-- 00_config\
|-- 01_extract_blue\
|-- 01_extract_red\
|-- 02_transform_blue\
|-- 02_transform_red\
|-- 03_load\
|--- schema.sql
|-- report
|- 01_extract_blue.ipynb
|- 01_extract_red.ipynb
|- 02_transform_blue.ipynb
|- 02_transform_red.ipynb
|- 03_load.ipynb
|- report.ipynb

## Why Do It This Way?
Using a structure like this where we separate the output from each step keeps things manageable:

If you need to delete the outputs of a particular step you won't accidentally delete things you want to keep

It makes it a LOT easier for your team and for the instructors to know where they should look for a particular file.

Using the numbering convention gives an indication as to the order in which steps were done.

## Folder Purposes
The **00_input** folder you will put any files that you downloaded from the internet (if any) e.g. you found a csv on the internet that you want to use as one of your datasources.

The **00_config** folder is where on your local machine you might want to store any app secrets (passwords, api keys) these individual files you'll want to tell git to ignore them.

The **01_extract_** folders will be where your respective notebooks/python scripts will store the data they extract (e.g. 01_extract_blue.ipynb -> 01_extract_blue\*.csv)

The **02_transform_** folder will be where the respective notebooks/python scripts will store the transformed data read in from the the 01_extract_ folder. (e.g. 02_transform_blue.ipynb will read in the files from 01_extract_blue folder, then transform it, placing the result in the 02_transform_blue folder)

The **03_load** folder will contain a schema.sql if you are using a sql database.

The **03_load** folder will be where the respect notebook/python script will store the data prior to inserting it into your database engine of choice. For example if I have a customer table/collection in my target database then in this folder there will be a customer.csv or customer.json that contains the data I will be inserting into my database engine.

## Report
In the report folder I might have any images (HINT: Having a diagrammatic representation of your database and a another of the dataflows from source to destination is something I would put in here) that are referenced by your report.
The report itself doesn't have to be a notebook, you can author it elsewhere and generate a PDF.

*Credit: Ryan Collingwood*


 
