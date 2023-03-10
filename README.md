# It's Not an Accident

# Team Members
* Amber Miller (www.linkedin.com/in/ambermiller15)
* Jacob Jennings (https://www.linkedin.com/in/jacob-jennings-/)
* Jessica Lunn (https://www.linkedin.com/in/jessicaannlunn/)
* Sarah Thieshen (https://www.linkedin.com/in/sarah-thieshen-65a2b255/)

# Purpose
## Topic and Rationale
The intent of this project is to understand traffic accidents in the US.  We will explore correlations in the data to understand factors that contribute to accidents such as the vehicles involved, the weather, and the location of the incidents. Using this analysis we hope to understand the factors that lead to the most severe accidents for the purpose of sharing information that helps drivers to avoid the worst accidents. 

The intent for this project is to understand how vehicle body types can determine the serverity of accidents in the US. We plan to explore the correlations that contribute to accidents that we've segmented into driver, external, and road factors:

    - Driver factors: was there alcohol involved, did the driver have a trailor attached, etc.
    - External factors: Time of day (day/night), week, month, weather conditions.
    - Road factors: speed limit, zoning, location on road. 
 
# Approach
## Data Sources
We used National Highway Trafffic Safety Administration's (NHTSA) 2020 Crash Report Sampling System (CRSS). The CRSS is a sample of police-reported crashes that include: motor vehicles, pedestrians, and even cyclists. This data is sampled from roughly 5-6 million police reports from 60 different geographic areas across the United States. (https://www.nhtsa.gov/crash-data-systems/crash-report-sampling-system)


## Database Structure

The data we utilized from the NHTSA 2020 CRSS was presented in large Excel files. The team first decided which columns from the files were applicable to our focus. From there, an Entity Relationship Diagram (ERD) was created to determine what data was relevant for our questions. To clean the data, irrelevant columns were removed, then filtering and reformatting content was required, so it could be properly analyzed. After the data was cleaned, it was imported to create the database on postgreSQL, with pgAdmin4 utilized to create two tables by exporting the ERD information. The two tables were linked by the case number to join the information and then a third table was created from the joined data. 

We hosted our database on Amazon Web Services (AWS) Relational Database Service (RDS) to have a publicly accessible database to integrate into our other platforms. This is hosted using a DB.T2.Micro Instance, utilizing Amazon's 20GB of storage, 12 months, free-tier. 


## Dashboard
The goal for our dashboard is to effectively visualize our sample data to help our viewers identify correlations in our data. To do so, we created our dashboard in Tableau Public since it allows for simple graph creation especially with a large dataset. The only limitation to our dashboard is that you can not connect Tableau Public directly to a database since they only allows local files and Google Sheets.


## Machine Learning Model
The objective of the Machine Learning model is to predict serious accidents using accident and vehicle data to determine what factors best predict a serious accident and specifically the role vehicle type plays in predicting the severity. We use a Classification model (Random Forest method) with encoded discrete variables.  As a part of this exercise, three variations of our model were created to understand the different accuracy under scenarios with different variables. These models are our (1) core model (accident_ml.ipynb), our model with (2) no vehicle data (accident_no_veh_ml.ipynb), and our model using an imputed (3) binary variable representing serious and fatal accidents (accident_ml_binary.ipynb).  These versions are described in more detail below.

### Design Rationale

#### Data Preprocessing
As a general rule, we worked to avoid preprocessing data in the ML model itself in order to enable the data cleaning to occur in the database. However, there was a limited amount of preprocessing done in the model as the model design was iterated. We preprocessed data in the model in two instances. First, removing data records where the accident severity was not determined. Because the severity of accidents is not known, it would not be possible to add to the predictive value or address our key questions with those records. Second, we created the binary variable for the binary version of the model, which is described below. This was done in the model to ensure that we could control for differences in the model in order to have a valid comparison between the two approaches.

#### Random Forest Selection
The decision to use a Random Forest Classification model was driven by three factors. First, it allowed us to avoid rescaling our variables. Our data set contained a large number of nonlinear variable that were already encoded. However, they used varying scales from binary (e.g., yes or no) to having hundreds of values (e.g., unique vehicle models). Second, it handles outliers and non linear data. None of our variables are linear and many of our variables had values that occurred rarely. Third, our dataset is not balanced with higher severity accidents occuring in lower numbers. Recognizing this as a key issue in testing early model alternatives, we wanted to ensure this did not present a predictive issues.

The major drawback of the Random Forrest Classification model is that it is a black box. This meant that a single model would not allow us to explore our key question as to the role vehicle types play in predicting serious accidents. This resulted in an approach using multiple models where we could compare the prediction accuracy to draw insights in this area.

#### Oversampling
As indicated above, out dataset is not balanced with fatal accidents occuring representing 2.6% of the unique accidents and other serious injuries accounting for another 11.7%. As a result, we used an oversampling methodology. To evaluate whether this added value beyond simply using a Random Forrest model, we A/B tested the model with and without using the resampled data. While oversampling did not improve the overall accuracy of the model, it did improve recall for higher severity predictions, meaning it reduced the the instances where high severity accidents were predicted at lower severity levels.

#### Training Data
Our dataset was split into 80% training data and 20% test data.  While there are numerous different positions on the correct split of training and test data sets, our main trade off was having enough serious accidents in each data set to train the model and to test the outcome. As a result, we selected a split in the middle of various ranges that parties recommend (ranging from mid-60%s to 90%). Further we avoided using formulaic approaches based on the number of variables because we were evaluating models with differing numbers of variables.

### Model Variations
(1) Core Model - The core model uses 58 accident and vehicle variables in an effort to predict the severity of the accident. The severity of the accident is represented by an encoded variable which uses the following values: Fatal(4), Suspected Serious Injury(3), Suspected Minor Injury(2), Possible Injury(1), and No Apparent Injury(0). 

(2) No Vehicle Data Model - This model uses 16 accident variables and excludes any vehicle-specific variables in an effort to predict the severity of the accident. The severity of the accident is represented by the same encoded variable as the core model. 

(3) Binary Model - The binary model uses the same 58 accident and vehicle variables as the core model in an effort to predict the severity of the accident. The severity of the accident is represented by a binary variable that is translated from the original severity variable. In this case the severity levels of 3 and 4 are represented as a severe accident (binary variable =1) and values of 0, 1, and 2 are represented as not a sever accident (binary variable =0). 

# Key Findings

All three models did not perform well. In terms of accuracy, the Binary Model performed best (accuracy = 0.88) compared to the Core Model (accuracy = 0.55) and the No Vehicle Data Model (accuracy = 0.41). The limited improvement of the Core Model over the No Vehicle Data Model suggests that vehicle data does add some predictive value in determining the overall severity of injuries. However, the core question of predicting severe injuries [Fatal(4) and Suspected Serious Injury(3)] requires a look deeper at Recall for these variables. Recall is a focus because the most important factor in predicting high severity injuries is avoiding false negatives (i.e. instances of a severe injury that are predicted not to be severe).  In this area, all models performed poorly with recall scores for high severity values ranging from 0.11 to 0.32. The model fit comparison below shows the relevant metrics for each model.

Model Fit Comparison
![Model Fit Comparison](https://github.com/AmberMiller15/DV-Proj-2023/blob/Jessica1258/ML%20Model/Model%20Fit%20Comparison.png)

With additional time and resources, we would consider the following opportunity areas for additional modeling and analysis.
1) Consider additional model variations including using other ensemble classification models.
2) Expand data to include additional data (e.g. driver, impairment, violations) from the National Highway Traffic Safety Administration.
3) Collect broader vehicle driving data on vehicle use for comparative purposes.
4) Explore data from other years to control for the potential that 2020 is an outlier. 

# Appendix
## Presentations & Dashboards

Final Presentation: https://docs.google.com/presentation/d/18lHaoRxjXg3tlfUCewJTLqfA5zdFtMB4ntkWbTeGUn4/edit#slide=id.p

Final Dashboard: https://public.tableau.com/views/FinalProjectDashboard-Final/VehicleDataHitRunandRollover?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

## Additional Resources
For more information and state by state accident breakdown : https://www.iihs.org/topics/fatality-statistics/detail/state-by-state#crash-types

Exploring data: https://public.tableau.com/views/FinalProjectDashboard_16752985716440/SummaryDashboard?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link



Body type group rough draft: https://public.tableau.com/app/profile/jacob.jennings8168/viz/FinalProject_16746241701870/Dashboard2?publish=yes
