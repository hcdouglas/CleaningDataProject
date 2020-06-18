
x<-rbind(xTrain, xTest)
y<-rbind(yTrain, yTest)
subject<-rbind(subjectTrain, subjectTest)

merge<-cbind(x,y,subject)

tidy<-select(merge, code, subject, contains("mean"), contains("std"))
tidy<-merge(activities, tidy, by="code")

names(tidy)<-gsub("BodyBody", "Body", names(tidy))
names(tidy)<-gsub("Acc", "Acceleration", names(tidy))
names(tidy)<-gsub("Gyro", "Gyroscope", names(tidy))
names(tidy)<-gsub("Mag", "Magnitude", names(tidy))
names(tidy)<-gsub("^t", "Time", names(tidy))
names(tidy)<-gsub("^f", "Frequency", names(tidy))
names(tidy)<-gsub("angle", "Angle", names(tidy))
names(tidy)<-gsub("gravity", "Gravity", names(tidy))

final<-tidy %>%
    group_by(subject, activity) %>%
    summarize_all(mean)

write.table(final, file="TidyDataSet", row.names = FALSE)
