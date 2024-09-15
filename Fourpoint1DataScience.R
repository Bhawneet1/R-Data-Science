#Q1
patientID<-c(1,2,3,4)
AdmDate<-c("10/15/2009","11/01/2009","10/21/2009","10/28/2009")
Age<-c(25,34,28,52)
Diabetes<-c("Type1","Type2","Type1","Type1")
Status<-c("Poor","Improved","Excellent","Poor")
df<-data.frame(patientID,AdmDate,Age,Diabetes,Status)
print(df)


#Q2
#a)
# Extract patientID and Age
subset1 <- df[, c("patientID", "Age")]
print(subset1)

#b)
# Identify Type1 patients
type1_patients <- subset(df, Diabetes == "Type1")
print(type1_patients)

#c)
# Count the number of patients with Poor status
count_poor_status <- sum(df$Status == "Poor")
print(count_poor_status)

#d)
# Print the summary of the data frame
summary(df)

#e)

avg_age<-aggregate(Age ~ Diabetes,data=df,FUN = mean)
print(avg_age)


#f)
# Input more patient data
new_patient <- data.frame(
  patientID = as.integer(readline(prompt = "Enter PatientID: ")),
  AdmDate = as.Date(readline(prompt = "Enter Admission Date (YYYY-MM-DD): ")),
  Age = as.integer(readline(prompt = "Enter Age: ")),
  Diabetes = readline(prompt = "Enter Diabetes Type (Type1/Type2): "),
  Status = readline(prompt = "Enter Status (Poor/Improved/Excellent): "),
  stringsAsFactors = FALSE
)

# Append the new patient to the existing data frame
df <- rbind(df, new_patient)

# Print the updated data frame
print(df)



#Q3

# Create the Age vector a
a <- c(12, 14, 16, 20)

# Create a two-dimensional matrix with 5 rows
# For simplicity, let's create a matrix with 5 rows and 3 columns
matrix_data <- matrix(1:15, nrow = 5, ncol = 3)

# Create the score vector s
s <- c("First", "Second", "Third")

# Create the list MyList
MyList <- list(
  title = "My First List",
  criteria = list(
    Age = a,
    Matrix = matrix_data,
    Score = s
  )
)

# Print MyList
print(MyList)

# Print criteria
print(MyList$criteria)

# Print vector a
print(MyList$criteria$Age)
