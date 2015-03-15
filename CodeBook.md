# Code Book

This describes the data columns and values for [tidy_data.txt](tidy_data.txt).  See the [README.md](README.md) for how the data was produced.

## Columns

* *subject* (numeric) - An identifier from 1 to 30 of the original volunteers for the Samsung experiment

* *activity* (character) - The action that the individuals were performing at the time of the measurements such as "Standing", "Sitting", "Laying", "Walking", "Walking Downstairs", "Walking Upstairs"

* *measurement* (character) - is the type of measurement in in the mean column.  This is from a device such as an Accelerometer or Gyroscope.  It is measured in either the Time domain or the Frequency domain (see [Fourier Transforms](http://en.wikipedia.org/wiki/Fourier_transform)).  Can be the magnitude of the vector with respect to the X, Y, or Z-Axis.  These values are either the mean or the standard deviation.  See [features_info.txt](features_info.txt) from the original data set for additional details.

* *mean* (numeric) - The average reading for a subject and activity from a particular measurement:  e.g. If a subject was sitting and 10 readings for the "frequency-Body-Gyroscope-Magnitude-mean" measurement, this field will be one average over all 10 readings.


#### Complete list of measurements
* frequency-Body-Accelerometer-Jerk-Magnitude-mean

* frequency-Body-Accelerometer-Jerk-Magnitude-std

* frequency-Body-Accelerometer-Jerk-mean-X-Axis

* frequency-Body-Accelerometer-Jerk-mean-Y-Axis

* frequency-Body-Accelerometer-Jerk-mean-Z-Axis

* frequency-Body-Accelerometer-Jerk-std-X-Axis

* frequency-Body-Accelerometer-Jerk-std-Y-Axis

* frequency-Body-Accelerometer-Jerk-std-Z-Axis

* frequency-Body-Accelerometer-Magnitude-mean

* frequency-Body-Accelerometer-Magnitude-std

* frequency-Body-Accelerometer-mean-X-Axis

* frequency-Body-Accelerometer-mean-Y-Axis

* frequency-Body-Accelerometer-mean-Z-Axis

* frequency-Body-Accelerometer-std-X-Axis

* frequency-Body-Accelerometer-std-Y-Axis

* frequency-Body-Accelerometer-std-Z-Axis

* frequency-Body-Gyroscope-Jerk-Magnitude-mean

* frequency-Body-Gyroscope-Jerk-Magnitude-std

* frequency-Body-Gyroscope-Magnitude-mean

* frequency-Body-Gyroscope-Magnitude-std

* frequency-Body-Gyroscope-mean-X-Axis

* frequency-Body-Gyroscope-mean-Y-Axis

* frequency-Body-Gyroscope-mean-Z-Axis

* frequency-Body-Gyroscope-std-X-Axis

* frequency-Body-Gyroscope-std-Y-Axis

* frequency-Body-Gyroscope-std-Z-Axis

* time-Body-Accelerometer-Jerk-Magnitude-mean

* time-Body-Accelerometer-Jerk-Magnitude-std

* time-Body-Accelerometer-Jerk-mean-X-Axis

* time-Body-Accelerometer-Jerk-mean-Y-Axis

* time-Body-Accelerometer-Jerk-mean-Z-Axis

* time-Body-Accelerometer-Jerk-std-X-Axis

* time-Body-Accelerometer-Jerk-std-Y-Axis

* time-Body-Accelerometer-Jerk-std-Z-Axis

* time-Body-Accelerometer-Magnitude-mean

* time-Body-Accelerometer-Magnitude-std

* time-Body-Accelerometer-mean-X-Axis

* time-Body-Accelerometer-mean-Y-Axis

* time-Body-Accelerometer-mean-Z-Axis

* time-Body-Accelerometer-std-X-Axis

* time-Body-Accelerometer-std-Y-Axis

* time-Body-Accelerometer-std-Z-Axis

* time-Body-Gyroscope-Jerk-Magnitude-mean

* time-Body-Gyroscope-Jerk-Magnitude-std

* time-Body-Gyroscope-Jerk-mean-X-Axis

* time-Body-Gyroscope-Jerk-mean-Y-Axis

* time-Body-Gyroscope-Jerk-mean-Z-Axis

* time-Body-Gyroscope-Jerk-std-X-Axis

* time-Body-Gyroscope-Jerk-std-Y-Axis

* time-Body-Gyroscope-Jerk-std-Z-Axis

* time-Body-Gyroscope-Magnitude-mean

* time-Body-Gyroscope-Magnitude-std

* time-Body-Gyroscope-mean-X-Axis

* time-Body-Gyroscope-mean-Y-Axis

* time-Body-Gyroscope-mean-Z-Axis

* time-Body-Gyroscope-std-X-Axis

* time-Body-Gyroscope-std-Y-Axis

* time-Body-Gyroscope-std-Z-Axis

* time-Gravity-Accelerometer-Magnitude-mean

* time-Gravity-Accelerometer-Magnitude-std

* time-Gravity-Accelerometer-mean-X-Axis

* time-Gravity-Accelerometer-mean-Y-Axis

* time-Gravity-Accelerometer-mean-Z-Axis

* time-Gravity-Accelerometer-std-X-Axis

* time-Gravity-Accelerometer-std-Y-Axis

* time-Gravity-Accelerometer-std-Z-Axis