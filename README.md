
# ELT Project Technical Report
The goal of this project was to use existing csv files from three (3) different museum artist and artwork collections then prep the data using ETL methodology.  We chose to create a artwork collections database to then run queries on.

Below was our process:

## Extract/Data Utilized
#
The data was received from Kaggle in the form of CSV files :
- https://www.kaggle.com/mfrancis23/museum-of-modern-art-collection
- https://www.kaggle.com/mfrancis23/carnegie-museum-of-art
- https://www.kaggle.com/rtatman/the-tate-collection. 

Each file had at least one csv that contained information on the artists and the artwork contained within the museums. We chose these datasets as they had higher usability ratings on Kaggle.

## Transform
#
Once the files were extracted from Kaggle, the data was cleaned using Python and Jupyter Notebooks. The Carnegie and Tate data files included artist and artwork information in one file each, while MoMa had two separate files - one for artists and one for artwork. We created two (2) separate dataframes for each museum - one for artists and one for artwork. Then we merged the three (3) artist dataframes into one and exported it to a single csv file, and did the same for the three (3) artwork files as well. Lastly, we created a small table for museum information in pandas and exported it as csv. These are the three (3) csv files we loaded into PGAdmin. We opted to use Museum ID, Artist ID to use as keys tying into the Artwork table. 


The following columns were used in the artist transformation:
- Artist ID 
- Artist Name 
- Artist Role 
- Nationality 
- Gender 
- Birth Year 
- Birth Place 
- Death Year 
- Death Place 
- Wiki 
- Ulan

The following columns were used in the artist transformation:
- Artist ID 
- Title 
- Museum Code 
- Accension Number
- Title 
- Medium  
- Acq 
- Create year 
- Acquisition Date 
- Thumb Url 
- Web_Url  
- Artist Name 
- Department 
- Ulan  
- Donor Name
- Classification
- Donor Type
- Donor Id
- Copyright 
- Wiki

Wiki and ULAN were kept, even though mostly blank as they are universal identifiers for WikiData and Union List of Artists Names of Book by Getty Conservation Institute. Columns were renamed for brevity.


## Load
#
Two of the three csv files uploaded PostGres SQL via PGAdmin with no problems, the third would not load. We attempted to resolve errors the following ways:
- Eliminated "NOT NULL" constraint in the table creation
- Removed all the commas, in case the delimiter setting was causing the error.
- We investigated individual row
- We tried uploading without a delimiter
- We converted the csv into a txt file - to change the delimiter
- We removed columns from the schema as well

### None of the above resolved the import error

## Outliers
#
We encountered different formats used in the birth and death dates of artists that required additional cleaning steps. We used text to columns in excel to remove hyphen, forward slash and delimiters to results in a single year output. 

## Next Steps
#
The next steps would be to rework the data cleaning of the artwork files and remerge to try to resolve the import error in PostGres SQL. Some datasets had more comprehensive fields than others, including WikiData links and ULAN a unique artist identifier among others. The next step would be to either locate or scrape from the web the missing data and add it to the database to provide a more compete dataset, that could be built upon over time as new information becomes available. 

Lessons Learned:
Rather than rely upon PostGres SQL contraints we may have been more successful had we used Mongo instead. Also, the key takeaway is that no matter how clean you think your dataset is, you'll find out just how clean when you try into PostGres SQL!