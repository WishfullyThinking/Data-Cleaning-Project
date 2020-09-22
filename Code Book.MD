This is the codebook for the Data Cleaning Project.

The data was downloaded and unzipped from the UCI HAR Dataset. There were separate datasets for training data and test data, containing values, subject name, and activity name.
The script bound them into one dataset, named all the variables appropriately, and selected only the variables which contained mean() and std().
Further, the mean for each combination of subject-activity-value was computed and finally a tidy data set was made.

The variables in the final tidy data set are the following:

subject: the ID number of the subject

activity: string indicating the activity.

Mean/standard deviation variables from the original dataset ONLY. Refer to original codebook for definitions. Each variable represents the MEAN of each subject-activity-variable combination.

tbodyaccmeanx

tbodyaccmeany

tbodyaccmeanz 

tgravityaccmeanx

tgravityaccmeany

tgravityaccmeanz

tbodyaccjerkmeanx

tbodyaccjerkmeany 

tbodyaccjerkmeanz

tbodygyromeanx

tbodygyromeany 

tbodygyromeanz 

tbodygyrojerkmeanx 

tbodygyrojerkmeany

tbodygyrojerkmeanz 

tbodyaccmagmean

tgravityaccmagmean 

tbodyaccjerkmagmean 

tbodygyromagmean 

tbodygyrojerkmagmean

fbodyaccmeanx 

fbodyaccmeany

fbodyaccmeanz 

fbodyaccjerkmeanx 

fbodyaccjerkmeany

fbodyaccjerkmeanz

fbodygyromeanx

fbodygyromeany

fbodygyromeanz 

fbodyaccmagmean

fbodybodyaccjerkmagmean

fbodybodygyromagmean 

fbodybodygyrojerkmagmean

tbodyaccstdx 

tbodyaccstdy 

tbodyaccstdz

tgravityaccstdx 

tgravityaccstdy

tgravityaccstdz 

tbodyaccjerkstdx 

tbodyaccjerkstdy

tbodyaccjerkstdz

tbodygyrostdx

tbodygyrostdy

tbodygyrostdz

tbodygyrojerkstdx 

tbodygyrojerkstdy

tbodygyrojerkstdz

tbodyaccmagstd 

tgravityaccmagstd

tbodyaccjerkmagstd 

tbodygyromagstd 

tbodygyrojerkmagstd

fbodyaccstdx 

fbodyaccstdy 

fbodyaccstdz

fbodyaccjerkstdx 

fbodyaccjerkstdy

fbodyaccjerkstdz

fbodygyrostdx

fbodygyrostdy

fbodygyrostdz

fbodyaccmagstd 

fbodybodyaccjerkmagstd 

fbodybodygyromagstd

fbodybodygyrojerkmagstd


