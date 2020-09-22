# Data-Cleaning-Project
The final course project for the Johns Hopkins Data Science course.

The script named script_analysis does the following:

1) Reads the datasets into R
2) Combines the train and test datasets into one dataset
3) Renames the activities from numbers to names
4) Renames the default column variables to meaningful variable names
5) Selects only the variable names containing mean() and std()
6) Removes all dashes and parentheses, and converts uppercase letters to lowercase
7) Melts the data using subject and activity as ID variables, and recasts them to find the mean for each combination of subject-activity-variable
8) Writes the table as a tidy data variable.
