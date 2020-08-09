features_list <- read.table("features.txt", col.names = c("no","features"))
activity <- read.table("activity_labels.txt", col.names = c("label", "activity"))


subject_test <- read.table("test/subject_test.txt", col.names = "subject")
x_test <- read.table("test/X_test.txt", col.names = features_list$features)
y_test <- read.table("test/Y_test.txt", col.names = "label")


tidy_test <- cbind(subject_test, y_test_label, x_test)
tidy_test <- select(tidy_test, -label)



subject_train <- read.table("train/subject_train.txt", col.names = "subject")
x_train <- read.table("train/X_train.txt", col.names = features_list$features)
y_train <- read.table("train/Y_train.txt", col.names = "label")
y_train_label <- left_join(y_train, activity, by = "label")