# UCI-HAR-Dataset
############################### run_analysis.R ##########################################
## This R script is used to import raw data from "*.txt" documents and clean the data. ##
## In the final, export tidy dataset to a "txt" document.                              ##
#########################################################################################
# Step1: Set work Directory in my laptop
# Step2: Import Train data from "*.txt" files in "train" folder
# Step3: Import Test data from "*.txt" files in "test" folder
# Step4: Train data processing
        1. Extracts only the measurements on the mean and standard deviation for each measurement of train data;
        2. Merges the measurements of train data sets to create one data set
        3. Uses descriptive activity names to name the activities in the data set
# Step5: Test data processing
        1. Extracts only the measurements on the mean and standard deviation for each measurement of test data;
        2. Merges the measurements of test data sets to create one data set
        3. Uses descriptive activity names to name the activities in the data set
# Step6: Merges the training and the test sets to create one data set: TidyData
# Step7: Delete unuseful variables and release memory
# Step8: From the data set in step 6, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
