# CODEBOOK

### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

Finally a Fast Fourier Transform (FFT) was applied to some of these signals. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* Time_Body_Acceleration_XYZ
* Time_Gravity_Acceleration_XYZ
* Time_Body_Acceleration_Jerk_XYZ
* Time_Body_Gyro_XYZ
* Time_Body_GyroJerk_XYZ
* Time_Body_Acceleration_Magnitude
* Time_Gravity_Acceleration_Magnitude
* Time_Body_Acceleration_Jerk_Magnitude
* Time_Body_Gyro_Magnitude
* Time_Body_Gyro_Jerk_Magnitude
* Frequency_Body_Acceleration-XYZ
* Frequency_Body_Acceleration_Jerk-XYZ
* Frequency_Body_Gyro-XYZ
* Frequency_Body_Acceleration_Magnitude
* Frequency_Body_Acceleration_Jerk_Magnitude
* Frequency_Body_Gyro_Magnitude
* Frequency_Body_Gyro_Jerk_Magnitude

### The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

### Factors in the Tidy Dataset
* Subject : Subject IDs
* Activity : Activity IDs
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

## All the Variables in the Final Tidy Dataset
- "subject"
- "activity"
- "Time_Body_Acceleration_Mean_Xdirection"
- "Time_Body_Acceleration_Mean_Ydirection"
- "Time_Body_Acceleration_Mean_Zdirection"
- "Time_Body_Acceleration_StdDev_Xdirection"
- "Time_Body_Acceleration_StdDev_Ydirection"
- "Time_Body_Acceleration_StdDev_Zdirection"
- "Time_Gravity_Acceleration_Mean_Xdirection"
- "Time_Gravity_Acceleration_Mean_Ydirection"
- "Time_Gravity_Acceleration_Mean_Zdirection"
- "Time_Gravity_Acceleration_StdDev_Xdirection"
- "Time_Gravity_Acceleration_StdDev_Ydirection"
- "Time_Gravity_Acceleration_StdDev_Zdirection"
- "Time_Body_Acceleration_Jerk_Mean_Xdirection"
- "Time_Body_Acceleration_Jerk_Mean_Ydirection"
- "Time_Body_Acceleration_Jerk_Mean_Zdirection"
- "Time_Body_Acceleration_Jerk_StdDev_Xdirection"
- "Time_Body_Acceleration_Jerk_StdDev_Ydirection"
- "Time_Body_Acceleration_Jerk_StdDev_Zdirection"
- "Time_Body_Gyro_Mean_Xdirection"
- "Time_Body_Gyro_Mean_Ydirection"
- "Time_Body_Gyro_Mean_Zdirection"
- "Time_Body_Gyro_StdDev_Xdirection"
- "Time_Body_Gyro_StdDev_Ydirection"
- "Time_Body_Gyro_StdDev_Zdirection"
- "Time_Body_Gyro_Jerk_Mean_Xdirection"
- "Time_Body_Gyro_Jerk_Mean_Ydirection"
- "Time_Body_Gyro_Jerk_Mean_Zdirection"
- "Time_Body_Gyro_Jerk_StdDev_Xdirection"
- "Time_Body_Gyro_Jerk_StdDev_Ydirection"
- "Time_Body_Gyro_Jerk_StdDev_Zdirection"
- "Time_Body_Acceleration_Magnitude_Mean"
- "Time_Body_Acceleration_Magnitude_StdDev"
- "Time_Gravity_Acceleration_Magnitude_Mean"
- "Time_Gravity_Acceleration_Magnitude_StdDev"
- "Time_Body_Acceleration_Jerk_Magnitude_Mean"
- "Time_Body_Acceleration_Jerk_Magnitude_StdDev"
- "Time_Body_Gyro_Magnitude_Mean"
- "Time_Body_Gyro_Magnitude_StdDev"
- "Time_Body_Gyro_Jerk_Magnitude_Mean"
- "Time_Body_Gyro_Jerk_Magnitude_StdDev"
- "Frequency_Body_Acceleration_Mean_Xdirection"
- "Frequency_Body_Acceleration_Mean_Ydirection"
- "Frequency_Body_Acceleration_Mean_Zdirection"
- "Frequency_Body_Acceleration_StdDev_Xdirection"
- Frequency_Body_Acceleration_StdDev_Ydirection"
- "Frequency_Body_Acceleration_StdDev_Zdirection"
- "Frequency_Body_Acceleration_Jerk_Mean_Xdirection"
- "Frequency_Body_Acceleration_Jerk_Mean_Ydirection"
- "Frequency_Body_Acceleration_Jerk_Mean_Zdirection"
- "Frequency_Body_Acceleration_Jerk_StdDev_Xdirection"
- "Frequency_Body_Acceleration_Jerk_StdDev_Ydirection"
- "Frequency_Body_Acceleration_Jerk_StdDev_Zdirection"
- "Frequency_Body_Gyro_Mean_Xdirection"
- "Frequency_Body_Gyro_Mean_Ydirection"
- "Frequency_Body_Gyro_Mean_Zdirection"
- "Frequency_Body_Gyro_StdDev_Xdirection"
- "Frequency_Body_Gyro_StdDev_Ydirection"
- "Frequency_Body_Gyro_StdDev_Zdirection"
- "Frequency_Body_Acceleration_Magnitude_Mean"
- "Frequency_Body_Acceleration_Magnitude_StdDev"
- "Frequency_Body_Body_Acceleration_Jerk_Magnitude_Mean"
- "Frequency_Body_Body_Acceleration_Jerk_Magnitude_StdDev"
- "Frequency_Body_Body_Gyro_Magnitude_Mean"
- "Frequency_Body_Body_Gyro_Magnitude_StdDev"
- "Frequency_Body_Body_Gyro_Jerk_Magnitude_Mean"
- "Frequency_Body_Body_Gyro_Jerk_Magnitude_StdDev"