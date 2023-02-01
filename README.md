# It's Not an Accident

## Team Members
* Amber Miller (www.linkedin.com/in/ambermiller15)
* Jacob Jennings (https://www.linkedin.com/in/jacob-jennings-/)
* Jessica Lunn (https://www.linkedin.com/in/jessicaannlunn/)
* Sarah Thieshen (https://www.linkedin.com/in/sarah-thieshen-65a2b255/)

## Purpose
### Topic and Rationale
The intent of this project is to understand traffic accidents in the US.  We will explore correlations in the data to understand factors that contribute to accidents such as the vehicles involved, the weather, and the location of the incidents. Using this analysis we hope to understand the factors that lead to the most severe accidents for the purpose of sharing information that helps drivers to avoid the worst accidents. 

The intent for this project is to understand how vehicle body types can determine the serverity of accidents in the US. We plan to explore the correlations that contribute to accidents that we've segmented into driver, external, and road factors:

    - Driver factors: was there alcohol involved, did the driver have a trailor attached, etc?
    - External factors: Time of day (day/night), week, month, weather conditions.
    - Road factors: speed limit, zoning, location on road. 
 
## Approach
### Data Sources
We used National Highway Trafffic Safety Administration's (NHTSA) 2019 Crash Report Sampling System (CRSS). The CRSS is a sample of police-reported crashes that include: motor vehicles, pedestrians, and even cyclists. This data is sampled from roughly 5-6 million police reports from 60 different geographic areas across the United States. (https://www.nhtsa.gov/crash-data-systems/crash-report-sampling-system)


### Database Structure

The data we utilized from the NHTSA 2019 CRSS was presented in large Excel files. The team first decided which columns from the files were applicable to our focus. From there, an Entity Relationship Diagram (ERD) was created to determine what data was relevant for our questions. To clean the data, irrelevant columns were removed, then filtering and reformatting content was required, so it could be properly analyzed. After the data was cleaned, it was imported to create the database on postgreSQL, with pgAdmin4 utilized to create two tables by exporting the ERD information. The two tables were linked by the case number to join the information.

### Machine Learning Model
The objective of the Machine Learning model is to predict serious accidents using accident and vehicle data to determine what factors best predict a serious accident and specifically the role vehicle type plays in predicting the severity. We use a Classification model (Random Forest method) with encoded discrete variables.  As a part of this exercise, three variations of our model were created to understand the different accuracy under scenarios with different variables. These models are our (1)core model (accident_ml.ipynb), our model with (2)no vehicle data (accident_no_veh_ml.ipynb), and our model using an imputed (3)binary variable representing serious and fatal accidents (accident_ml_binary.ipynb).  These versions are described in more detail below.

#### Design Rationale



(1) Core Model
The core model uses 58 accident and vehicle variables in an effort to predict the severity of the accident. The severity of the accident is represented by an encoded variable which uses the following values: Fatal(4), Suspected Serious Injury(3), Suspected Minor Injury(2), Possible Injury(1), and No Apparent Injury(0). 





. The initial challenges faced include:
1. Serious injury accidents are rare, but are represented in our data. However the model's ability to predict these outcomes are limited.
2. Our model is not converging with 400 iterations 
3. We have encoding with multiple scales that requires indexing

We will work to address these by iterating the model design in several ways.
- We will explore the use of an alternative classification model.
- We will use data analysis to eliminate non-value added variables that may be contributing to convergence issues and prediction errors.
- We will improve the indexing in the model

Other Key Work Outstanding
- We will update the data with the final data structure aligned and cleaned through our database
- Add vehicle data to the analysis


## Key Findings



## Appendix
### Presentations
January 25 Update Presentation:  https://docs.google.com/presentation/d/1NF9oe1QxJYiu_8N8k_AI97wcNYMQnN-bLninww34CDM/edit#slide=id.g1fc34cc6fd9_0_47

Final Presentation Storyboard:https://docs.google.com/presentation/d/18lHaoRxjXg3tlfUCewJTLqfA5zdFtMB4ntkWbTeGUn4/edit#slide=id.p

### Additional Resources
For more information and state by state accident breakdown : https://www.iihs.org/topics/fatality-statistics/detail/state-by-state#crash-types

Exploring data: https://public.tableau.com/app/profile/jacob.jennings8168/viz/FinalProject_16746241701870/Dashboard1?publish=yes

Body type group rough draft: https://public.tableau.com/app/profile/jacob.jennings8168/viz/FinalProject_16746241701870/Dashboard2?publish=yes
