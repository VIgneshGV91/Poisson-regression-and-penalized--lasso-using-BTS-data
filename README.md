# Poisson-regression-and-penalized--lasso-using-BTS-data
Analyze BTS Dataset and develop a Poisson regression model and penalized -lasso model using BTS data

This problem is divided into 5 parts:

Part 1
Generated an individualized random subset of the BTS201505 dataset using SAS program shell.
Generated a customized subset of the full dataset.

Part 2

Used an appropriate SAS PROC to impute missing values for MNAR
variables DepDelay, ArrDelay, and Distance.
Created Lag1 variables for ArrDelay, Distance, and Cancelled, ArrDelayLagInd and ArrDelayLagCum, ArrDelay
Generated standard OLS parameter estimates from the dataset. and also by CARRIER.

Part 3
Created a new data set  that contains one summary observation for every CARRIER/TAILNUM/FLIGHTDATE combination
Each record contains the following variables:
SeqNum: max SeqNum for a CARRIER/TAILNUM/FLIGHTDATE combination (hint: use the DATA step BY group processing to find this value)
LnSeqNUM: natural log of the max SeqNum MaxCRSDepTime: max CRSDepTime:
DistanceCum: cumulative Distance flown by the aircraft across all flights during a given day
CancelledCount: Count of Cancelled=1 flights for each CARRIER/TAILNUM/FLIGHTDATE combination
A Poisson regression model is fit for the following model specification: DelayCount= Carrier MaxCRSDepTime DistanceCum CancelledCount Specify the natural log of SeqNum as the offset
Estimated the same model BY CARRIER for the following model specification: DelayCount= MaxCRSDepTime DistanceCum CancelledCount Specify LnSeqNum as the OFFSET

Part 4

Used an appropriate SAS PROC to estimate a penalized regression model using the LASSO method.
Used appropriate SAS syntax to score the dataset in the same PROC that estimates the LASSO parameters.
Separately, for the same data set and model specification, generate a model average across 10 samples from the input dataset using the LASSO selection method

Part 5
Created a new dataset that contains one summary
record for every uninterrupted sequence of flights that meet the following conditions:
- each flight in the sequence is delayed more than 15 minutes
- any flight that is less than 15 minutes delayed ends a sequence
- the end of a FlightDate for a given TailNum also ends a sequence
- any subsequent delay > 15 begins a new sequence
- the cause of delay for the first flight in the sequence
- the total number of miles flown in the sequence
- a variable called EndSeq with the sequence number of the last flight in any delay
sequence (the flight that returns the TailNum to "on time" status)
- the Origin of the first flight in the sequence
- Produced summary statistics of the new variable EndSeq
- A Poisson regression model is fit that fits the log-linear model 
ln(EndSeq) = SequenceDistance FirstDelayCause FirstOrigin

