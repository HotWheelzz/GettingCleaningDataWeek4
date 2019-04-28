{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf400
{\fonttbl\f0\froman\fcharset0 Times-Roman;\f1\fnil\fcharset0 HelveticaNeue;\f2\fmodern\fcharset0 Courier;
\f3\fnil\fcharset0 HelveticaNeue-Bold;\f4\fnil\fcharset0 LucidaGrande;\f5\fnil\fcharset0 HelveticaNeue-Italic;
}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red0\green0\blue0;\red0\green0\blue0;
\red33\green91\blue198;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c20000\c20000\c20000;\cssrgb\c0\c0\c0;\csgray\c0\c0;
\cssrgb\c16078\c44706\c81961;\cssrgb\c0\c0\c0\c3922;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{circle\}}{\leveltext\leveltemplateid2\'01\uc0\u9702 ;}{\levelnumbers;}\fi-360\li1440\lin1440 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl320\sa200\partightenfactor0

\f0\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CodeBook.md describe how the code works and flows\
*Note: Download the dataset from
\fs24  {\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"}}{\fldrslt \cf3 \cb4 \strokec5 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip}}\cf3 \cb4 \strokec5  and store in your working directory.\
**Note: Create data frame to import the data downloaded. 
\fs28 \cf2 \cb1 \strokec2 \
Step1: Mergers the training and test data into single files.\
Step2: Extract the mean and standards deviation from from each measurement.\
Step3: Assigns names to the data that are descriptive to each variable being used.\
Step4: Create a sub track data set from the original data with the average of each activity and each subject. \
\

\f1 \
\
\
\
\
\
The\'a0
\f2\fs25\fsmilli12600 \cb6 run_analysis.R
\f1\fs28 \cb1 \'a0script performs the data preparation and then followed by the 5 steps required as described in the course project\'92s definition.\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl340\partightenfactor0
\ls1\ilvl0
\f3\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	1.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Download the dataset\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\sl320\partightenfactor0
\ls1\ilvl1
\f1\b0 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f1 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Dataset downloaded and extracted under the folder called\'a0
\f2\fs25\fsmilli12600 \cb6 UCI HAR Dataset
\f1\fs28 \cb1 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl320\partightenfactor0
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	2.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \uc0\u8232 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl340\partightenfactor0
\ls1\ilvl0
\f3\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	3.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Assign each data to variables\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\sl300\partightenfactor0
\ls1\ilvl1
\f2\b0\fs25\fsmilli12600 \cf2 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 features
\f1\fs28 \cb1 \'a0<-\'a0
\f2\fs25\fsmilli12600 \cb6 features.txt
\f1\fs28 \cb1 \'a0: 561 rows, 2 columns\'a0\uc0\u8232 
\f5\i The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
\f1\i0 \
\ls1\ilvl1
\f2\fs25\fsmilli12600 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 activities
\f1\fs28 \cb1 \'a0<-\'a0
\f2\fs25\fsmilli12600 \cb6 activity_labels.txt
\f1\fs28 \cb1 \'a0: 6 rows, 2 columns\'a0\uc0\u8232 
\f5\i List of activities performed when the corresponding measurements were taken and its codes (labels)
\f1\i0 \
\ls1\ilvl1
\f2\fs25\fsmilli12600 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 subject_test
\f1\fs28 \cb1 \'a0<-\'a0
\f2\fs25\fsmilli12600 \cb6 test/subject_test.txt
\f1\fs28 \cb1 \'a0: 2947 rows, 1 column\'a0\uc0\u8232 
\f5\i contains test data of 9/30 volunteer test subjects being observed
\f1\i0 \
\ls1\ilvl1
\f2\fs25\fsmilli12600 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 x_test
\f1\fs28 \cb1 \'a0<-\'a0
\f2\fs25\fsmilli12600 \cb6 test/X_test.txt
\f1\fs28 \cb1 \'a0: 2947 rows, 561 columns\'a0\uc0\u8232 
\f5\i contains recorded features test data
\f1\i0 \
\ls1\ilvl1
\f2\fs25\fsmilli12600 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 y_test
\f1\fs28 \cb1 \'a0<-\'a0
\f2\fs25\fsmilli12600 \cb6 test/y_test.txt
\f1\fs28 \cb1 \'a0: 2947 rows, 1 columns\'a0\uc0\u8232 
\f5\i contains test data of activities\'92code labels
\f1\i0 \
\ls1\ilvl1
\f2\fs25\fsmilli12600 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 subject_train
\f1\fs28 \cb1 \'a0<-\'a0
\f2\fs25\fsmilli12600 \cb6 test/subject_train.txt
\f1\fs28 \cb1 \'a0: 7352 rows, 1 column\'a0\uc0\u8232 
\f5\i contains train data of 21/30 volunteer subjects being observed
\f1\i0 \
\ls1\ilvl1
\f2\fs25\fsmilli12600 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 x_train
\f1\fs28 \cb1 \'a0<-\'a0
\f2\fs25\fsmilli12600 \cb6 test/X_train.txt
\f1\fs28 \cb1 \'a0: 7352 rows, 561 columns\'a0\uc0\u8232 
\f5\i contains recorded features train data
\f1\i0 \
\ls1\ilvl1
\f2\fs25\fsmilli12600 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 y_train
\f1\fs28 \cb1 \'a0<-\'a0
\f2\fs25\fsmilli12600 \cb6 test/y_train.txt
\f1\fs28 \cb1 \'a0: 7352 rows, 1 columns\'a0\uc0\u8232 
\f5\i contains train data of activities\'92code labels
\f1\i0 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl320\partightenfactor0
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	4.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \uc0\u8232 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl340\partightenfactor0
\ls1\ilvl0
\f3\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	5.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Merges the training and the test sets to create one data set\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\sl300\partightenfactor0
\ls1\ilvl1
\f2\b0\fs25\fsmilli12600 \cf2 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 X
\f1\fs28 \cb1 \'a0(10299 rows, 561 columns) is created by merging\'a0
\f2\fs25\fsmilli12600 \cb6 x_train
\f1\fs28 \cb1 \'a0and\'a0
\f2\fs25\fsmilli12600 \cb6 x_test
\f1\fs28 \cb1 \'a0using\'a0
\f3\b rbind()
\f1\b0 \'a0function\
\ls1\ilvl1
\f2\fs25\fsmilli12600 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Y
\f1\fs28 \cb1 \'a0(10299 rows, 1 column) is created by merging\'a0
\f2\fs25\fsmilli12600 \cb6 y_train
\f1\fs28 \cb1 \'a0and\'a0
\f2\fs25\fsmilli12600 \cb6 y_test
\f1\fs28 \cb1 \'a0using\'a0
\f3\b rbind()
\f1\b0 \'a0function\
\ls1\ilvl1
\f2\fs25\fsmilli12600 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Subject
\f1\fs28 \cb1 \'a0(10299 rows, 1 column) is created by merging\'a0
\f2\fs25\fsmilli12600 \cb6 subject_train
\f1\fs28 \cb1 \'a0and\'a0
\f2\fs25\fsmilli12600 \cb6 subject_test
\f1\fs28 \cb1 \'a0using\'a0
\f3\b rbind()
\f1\b0 \'a0function\
\ls1\ilvl1
\f2\fs25\fsmilli12600 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Merged_Data
\f1\fs28 \cb1 \'a0(10299 rows, 563 column) is created by merging\'a0
\f2\fs25\fsmilli12600 \cb6 Subject
\f1\fs28 \cb1 ,\'a0
\f2\fs25\fsmilli12600 \cb6 Y
\f1\fs28 \cb1 \'a0and\'a0
\f2\fs25\fsmilli12600 \cb6 X
\f1\fs28 \cb1 \'a0using\'a0
\f3\b cbind()
\f1\b0 \'a0function\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl320\partightenfactor0
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	6.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \uc0\u8232 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl340\partightenfactor0
\ls1\ilvl0
\f3\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	7.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Extracts only the measurements on the mean and standard deviation for each measurement\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\sl300\partightenfactor0
\ls1\ilvl1
\f2\b0\fs25\fsmilli12600 \cf2 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 TidyData
\f1\fs28 \cb1 \'a0(10299 rows, 88 columns) is created by subsetting\'a0
\f2\fs25\fsmilli12600 \cb6 Merged_Data
\f1\fs28 \cb1 , selecting only columns:\'a0
\f2\fs25\fsmilli12600 \cb6 subject
\f1\fs28 \cb1 ,\'a0
\f2\fs25\fsmilli12600 \cb6 code
\f1\fs28 \cb1 \'a0and the measurements on the\'a0
\f2\fs25\fsmilli12600 \cb6 mean
\f1\fs28 \cb1 \'a0and\'a0
\f5\i standard deviation
\f1\i0 \'a0(
\f2\fs25\fsmilli12600 \cb6 std
\f1\fs28 \cb1 ) for each measurement\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl320\partightenfactor0
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	8.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \uc0\u8232 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl340\partightenfactor0
\ls1\ilvl0
\f3\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	9.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Uses descriptive activity names to name the activities in the data set\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\sl320\partightenfactor0
\ls1\ilvl1
\f1\b0 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f1 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Entire numbers in\'a0
\f2\fs25\fsmilli12600 \cb6 code
\f1\fs28 \cb1 \'a0column of the\'a0
\f2\fs25\fsmilli12600 \cb6 TidyData
\f1\fs28 \cb1 \'a0replaced with corresponding activity taken from second column of the\'a0
\f2\fs25\fsmilli12600 \cb6 activities
\f1\fs28 \cb1 \'a0variable\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl320\partightenfactor0
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	10.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \uc0\u8232 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl340\partightenfactor0
\ls1\ilvl0
\f3\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	11.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Appropriately labels the data set with descriptive variable names\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\sl300\partightenfactor0
\ls1\ilvl1
\f2\b0\fs25\fsmilli12600 \cf2 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 code
\f1\fs28 \cb1 \'a0column in\'a0
\f2\fs25\fsmilli12600 \cb6 TidyData
\f1\fs28 \cb1 \'a0renamed into\'a0
\f2\fs25\fsmilli12600 \cb6 activities
\f1\fs28 \cb1 \
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\sl320\partightenfactor0
\ls1\ilvl1\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f1 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 All\'a0
\f2\fs25\fsmilli12600 \cb6 Acc
\f1\fs28 \cb1 \'a0in column\'92s name replaced by\'a0
\f2\fs25\fsmilli12600 \cb6 Accelerometer
\f1\fs28 \cb1 \
\ls1\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f1 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 All\'a0
\f2\fs25\fsmilli12600 \cb6 Gyro
\f1\fs28 \cb1 \'a0in column\'92s name replaced by\'a0
\f2\fs25\fsmilli12600 \cb6 Gyroscope
\f1\fs28 \cb1 \
\ls1\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f1 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 All\'a0
\f2\fs25\fsmilli12600 \cb6 BodyBody
\f1\fs28 \cb1 \'a0in column\'92s name replaced by\'a0
\f2\fs25\fsmilli12600 \cb6 Body
\f1\fs28 \cb1 \
\ls1\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f1 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 All\'a0
\f2\fs25\fsmilli12600 \cb6 Mag
\f1\fs28 \cb1 \'a0in column\'92s name replaced by\'a0
\f2\fs25\fsmilli12600 \cb6 Magnitude
\f1\fs28 \cb1 \
\ls1\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f1 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 All start with character\'a0
\f2\fs25\fsmilli12600 \cb6 f
\f1\fs28 \cb1 \'a0in column\'92s name replaced by\'a0
\f2\fs25\fsmilli12600 \cb6 Frequency
\f1\fs28 \cb1 \
\ls1\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f1 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 All start with character\'a0
\f2\fs25\fsmilli12600 \cb6 t
\f1\fs28 \cb1 \'a0in column\'92s name replaced by\'a0
\f2\fs25\fsmilli12600 \cb6 Time
\f1\fs28 \cb1 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl320\partightenfactor0
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	12.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \uc0\u8232 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl340\partightenfactor0
\ls1\ilvl0
\f3\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	13.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\sl300\partightenfactor0
\ls1\ilvl1
\f2\b0\fs25\fsmilli12600 \cf2 \cb6 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f2 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 FinalData
\f1\fs28 \cb1 \'a0(180 rows, 88 columns) is created by sumarizing\'a0
\f2\fs25\fsmilli12600 \cb6 TidyData
\f1\fs28 \cb1 \'a0taking the means of each variable for each activity and each subject, after groupped by subject and activity.\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\sl320\partightenfactor0
\ls1\ilvl1\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	
\f4 \uc0\u9702 
\f1 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Export\'a0
\f2\fs25\fsmilli12600 \cb6 FinalData
\f1\fs28 \cb1 \'a0into\'a0
\f2\fs25\fsmilli12600 \cb6 FinalData.txt
\f1\fs28 \cb1 \'a0file.\
}