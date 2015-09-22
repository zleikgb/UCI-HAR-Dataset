#Set work Dic
setwd("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset")

#Import data from "*.txt" files
#Train Data
Feature_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
ActivityLabel_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
Identifier_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_acc_x_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_acc_y_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_acc_z_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_gyro_x_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_gyro_y_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_gyro_z_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
total_acc_x_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
total_acc_y_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
total_acc_z_train <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)

#Test Data
Feature_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
ActivityLabel_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
Identifier_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_acc_x_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_acc_y_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_acc_z_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_gyro_x_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_gyro_y_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
body_gyro_z_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
total_acc_x_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
total_acc_y_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
total_acc_z_test <- read.table("D:/Users/Ryan/Documents/GitHub/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)

#Merges the training and the test sets to create one data set
#Extracts only the measurements on the mean and standard deviation for each measurement.
#Uses descriptive activity names to name the activities in the data set
TidyData_train <- data.frame(Identifier_train,
                             ActivityLabel_train,
                             MeanData_Feature_train <- apply(Feature_train, 1, mean, na.rm = TRUE),
                             SdData_Feature_train <- apply(Feature_train, 1, sd, na.rm = TRUE),
                             MeanData_body_acc_x_train <- apply(body_acc_x_train, 1, mean, na.rm = TRUE),
                             SdData_body_acc_x_train <- apply(body_acc_x_train, 1, sd, na.rm = TRUE),
                             MeanData_body_acc_y_train <- apply(body_acc_y_train, 1, mean, na.rm = TRUE),
                             SdData_body_acc_y_train <- apply(body_acc_y_train, 1, sd, na.rm = TRUE),
                             MeanData_body_acc_z_train <- apply(body_acc_z_train, 1, mean, na.rm = TRUE),
                             SdData_body_acc_z_train <- apply(body_acc_z_train, 1, sd, na.rm = TRUE),
                             MeanData_body_gyro_x_train <- apply(body_gyro_x_train, 1, mean, na.rm = TRUE),
                             SdData_body_gyro_x_train <- apply(body_gyro_x_train, 1, sd, na.rm = TRUE),
                             MeanData_body_gyro_y_train <- apply(body_gyro_y_train, 1, mean, na.rm = TRUE),
                             SdData_body_gyro_y_train <- apply(body_gyro_y_train, 1, sd, na.rm = TRUE),
                             MeanData_body_gyro_z_train <- apply(body_gyro_z_train, 1, mean, na.rm = TRUE),
                             SdData_body_gyro_z_train <- apply(body_gyro_z_train, 1, sd, na.rm = TRUE),
                             MeanData_total_acc_x_train <- apply(total_acc_x_train, 1, mean, na.rm = TRUE),
                             SdData_total_acc_x_train <- apply(total_acc_x_train, 1, sd, na.rm = TRUE),
                             MeanData_total_acc_y_train <- apply(total_acc_y_train, 1, mean, na.rm = TRUE),
                             SdData_total_acc_y_train <- apply(total_acc_y_train, 1, sd, na.rm = TRUE),
                             MeanData_total_acc_z_train <- apply(total_acc_z_train, 1, mean, na.rm = TRUE),
                             SdData_total_acc_z_train <- apply(total_acc_z_train, 1, sd, na.rm = TRUE))
colnames(TidyData_train) <- c("Identifier",
                              "Activity",
                              "Feature_Average",
                              "Feature_Standard_Deviation",
                              "body_acc_x_Average",
                              "body_acc_x_Standard_Deviation",
                              "body_acc_y_Average",
                              "body_acc_y_Standard_Deviation",
                              "body_acc_z_Average",
                              "body_acc_z_Standard_Deviation",
                              "body_gyro_x_Average",
                              "body_gyro_x_Standard_Deviation",
                              "body_gyro_y_Average",
                              "body_gyro_y_Standard_Deviation",
                              "body_gyro_z_Average",
                              "body_gyro_z_Standard_Deviation",
                              "total_acc_x_Average",
                              "total_acc_x_Standard_Deviation",
                              "total_acc_y_Average",
                              "total_acc_y_Standard_Deviation",
                              "total_acc_z_Average",
                              "total_acc_z_Standard_Deviation"
                              )

TidyData_test <- data.frame(Identifier_test,
                             ActivityLabel_test,
                             MeanData_Feature_test <- apply(Feature_test, 1, mean, na.rm = TRUE),
                             SdData_Feature_test <- apply(Feature_test, 1, sd, na.rm = TRUE),
                             MeanData_body_acc_x_test <- apply(body_acc_x_test, 1, mean, na.rm = TRUE),
                             SdData_body_acc_x_test <- apply(body_acc_x_test, 1, sd, na.rm = TRUE),
                             MeanData_body_acc_y_test <- apply(body_acc_y_test, 1, mean, na.rm = TRUE),
                             SdData_body_acc_y_test <- apply(body_acc_y_test, 1, sd, na.rm = TRUE),
                             MeanData_body_acc_z_test <- apply(body_acc_z_test, 1, mean, na.rm = TRUE),
                             SdData_body_acc_z_test <- apply(body_acc_z_test, 1, sd, na.rm = TRUE),
                             MeanData_body_gyro_x_test <- apply(body_gyro_x_test, 1, mean, na.rm = TRUE),
                             SdData_body_gyro_x_test <- apply(body_gyro_x_test, 1, sd, na.rm = TRUE),
                             MeanData_body_gyro_y_test <- apply(body_gyro_y_test, 1, mean, na.rm = TRUE),
                             SdData_body_gyro_y_test <- apply(body_gyro_y_test, 1, sd, na.rm = TRUE),
                             MeanData_body_gyro_z_test <- apply(body_gyro_z_test, 1, mean, na.rm = TRUE),
                             SdData_body_gyro_z_test <- apply(body_gyro_z_test, 1, sd, na.rm = TRUE),
                             MeanData_total_acc_x_test <- apply(total_acc_x_test, 1, mean, na.rm = TRUE),
                             SdData_total_acc_x_test <- apply(total_acc_x_test, 1, sd, na.rm = TRUE),
                             MeanData_total_acc_y_test <- apply(total_acc_y_test, 1, mean, na.rm = TRUE),
                             SdData_total_acc_y_test <- apply(total_acc_y_test, 1, sd, na.rm = TRUE),
                             MeanData_total_acc_z_test <- apply(total_acc_z_test, 1, mean, na.rm = TRUE),
                             SdData_total_acc_z_test <- apply(total_acc_z_test, 1, sd, na.rm = TRUE))

colnames(TidyData_test) <- c("Identifier",
                              "Activity",
                              "Feature_Average",
                              "Feature_Standard_Deviation",
                              "body_acc_x_Average",
                              "body_acc_x_Standard_Deviation",
                              "body_acc_y_Average",
                              "body_acc_y_Standard_Deviation",
                              "body_acc_z_Average",
                              "body_acc_z_Standard_Deviation",
                              "body_gyro_x_Average",
                              "body_gyro_x_Standard_Deviation",
                              "body_gyro_y_Average",
                              "body_gyro_y_Standard_Deviation",
                              "body_gyro_z_Average",
                              "body_gyro_z_Standard_Deviation",
                              "total_acc_x_Average",
                              "total_acc_x_Standard_Deviation",
                              "total_acc_y_Average",
                              "total_acc_y_Standard_Deviation",
                              "total_acc_z_Average",
                              "total_acc_z_Standard_Deviation"
)

TidyData <- merge(TidyData_train, TidyData_test, all = TRUE, sort = FALSE)

rm(Feature_train,
   ActivityLabel_train,
   Identifier_train,
   body_acc_x_train,
   body_acc_y_train,
   body_acc_z_train,
   body_gyro_x_train,
   body_gyro_y_train,
   body_gyro_z_train,
   total_acc_x_train,
   total_acc_y_train,
   total_acc_z_train,
   Feature_test,
   ActivityLabel_test,
   Identifier_test,
   body_acc_x_test,
   body_acc_y_test,
   body_acc_z_test,
   body_gyro_x_test,
   body_gyro_y_test,
   body_gyro_z_test,
   total_acc_x_test,
   total_acc_y_test,
   total_acc_z_test,
   TidyData_test,
   TidyData_train)

#From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
TidyData_final <- data.frame()
for (i in min(TidyData$Identifier):max(TidyData$Identifier)) {
  x <- split(TidyData, TidyData$Identifier)
  y <- as.data.frame(x[i])
  colnames(y) <- c("Identifier",
                               "Activity",
                               "Feature_Average",
                               "Feature_Standard_Deviation",
                               "body_acc_x_Average",
                               "body_acc_x_Standard_Deviation",
                               "body_acc_y_Average",
                               "body_acc_y_Standard_Deviation",
                               "body_acc_z_Average",
                               "body_acc_z_Standard_Deviation",
                               "body_gyro_x_Average",
                               "body_gyro_x_Standard_Deviation",
                               "body_gyro_y_Average",
                               "body_gyro_y_Standard_Deviation",
                               "body_gyro_z_Average",
                               "body_gyro_z_Standard_Deviation",
                               "total_acc_x_Average",
                               "total_acc_x_Standard_Deviation",
                               "total_acc_y_Average",
                               "total_acc_y_Standard_Deviation",
                               "total_acc_z_Average",
                               "total_acc_z_Standard_Deviation"
  )
  for (j in min(TidyData$Activity):max(TidyData$Activity)) {
    z <- split(y, y$Activity)
    a <- as.data.frame(z[j])
    TidyData_final <- rbind(TidyData_final, sapply(a, mean))

  }
}
colnames(TidyData_final) <- c("Identifier",
                 "Activity",
                 "Feature_Average",
                 "Feature_Standard_Deviation",
                 "body_acc_x_Average",
                 "body_acc_x_Standard_Deviation",
                 "body_acc_y_Average",
                 "body_acc_y_Standard_Deviation",
                 "body_acc_z_Average",
                 "body_acc_z_Standard_Deviation",
                 "body_gyro_x_Average",
                 "body_gyro_x_Standard_Deviation",
                 "body_gyro_y_Average",
                 "body_gyro_y_Standard_Deviation",
                 "body_gyro_z_Average",
                 "body_gyro_z_Standard_Deviation",
                 "total_acc_x_Average",
                 "total_acc_x_Standard_Deviation",
                 "total_acc_y_Average",
                 "total_acc_y_Standard_Deviation",
                 "total_acc_z_Average",
                 "total_acc_z_Standard_Deviation"
)
#Export Data to a txt docoment
write.table(TidyData_final, file = "Smartphones Dataset.txt", row.names = FALSE)