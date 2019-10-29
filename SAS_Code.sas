%let UID= 670664553 ;
%let libpath=C:\Users\vigne\mysas;
%let pdfpath=C:\Users\vigne\mysas; 

libname HW3 "&libpath." ;
ods pdf file="&pdfpath.\HW3-&UID..pdf" ;

title "&SYSUSERID. - &UID. - Final Exericse" ;



/***************************************************************************************/
/***************************************************************************************/
/***************************** Macrotize Long Strings **********************************/
/***************************************************************************************/
/***************************************************************************************/

%let droprenamemv = (drop = CRSDepTime DepTime CRSArrTime ArrTime FirstDepTime WheelsOff WheelsOn Div1WheelsOn Div1WheelsOff Div2WheelsOn 
Div2WheelsOff Div3WheelsOn Div3WheelsOff Div4WheelsOn Div4WheelsOff Div5WheelsOn Div5WheelsOff 
rename =(CRSDepTimeF=CRSDepTime DepTimeF=DepTime CRSArrTimeF=CRSArrTime ArrTimeF=ArrTime FirstDepTimeF=FirstDepTime 
WheelsOffF=WheelsOff WheelsOnF=WheelsOn Div1WheelsOnF=Div1WheelsOn Div1WheelsOffF=Div1WheelsOff Div2WheelsOnF=Div2WheelsOn 
Div2WheelsOffF=Div2WheelsOff Div3WheelsOnF=Div3WheelsOn Div3WheelsOffF=Div3WheelsOff Div4WheelsOnF=Div4WheelsOn 
Div4WheelsOffF=Div4WheelsOff Div5WheelsOnF=Div5WheelsOn Div5WheelsOffF=Div5WheelsOff) ) ;

%let lengthmv = length Year 4. Quarter 4. Month 4. DayofMonth 4. DayOfWeek 4. FlightDate 8. UniqueCarrier $8. AirlineID  $4. 
Carrier  $4. TailNum  $10. FlightNum  4. OriginAirportID  $8. OriginAirportSeqID  $8. OriginCityMarketID  $6. Origin  $32. 
OriginCityName  $32. OriginState  $32. OriginStateFips  $32. OriginStateName  $32. OriginWac  $32. DestAirportID  $6. 
DestAirportSeqID  $6. DestCityMarketID  $6. Dest  $32. DestCityName  $32. DestState  $32. DestStateFips  $32. 
DestStateName  $32. DestWac  $32. CRSDepTime  $8. CRSDepTimeF 8. DepTime  $8. DepTimeF  8. DepDelay 4. DepDelayMinutes 4. 
DepDel15 4. DepartureDelayGroups 4. DepTimeBlk  $9. TaxiOut 4. WheelsOff  $8. WheelsOffF  8. WheelsOn  $8. WheelsOnF  8. 
TaxiIn 4. CRSArrTime  $8. CRSArrTimeF  8. ArrTime  $8. ArrTimeF  8. ArrDelay 4. ArrDelayMinutes 4. ArrDel15 4. 
ArrivalDelayGroups  4. ArrTimeBlk  $9. Cancelled 4. CancellationCode  $8. Diverted  4. CRSElapsedTime 4. ActualElapsedTime 4. 
AirTime 4. Flights 4. Distance 4. DistanceGroup 4. CarrierDelay 4. WeatherDelay 4. NASDelay 4. SecurityDelay 4. LateAircraftDelay 4. 
FirstDepTime  $8. FirstDepTimeF  8. TotalAddGTime 4. LongestAddGTime 4. DivAirportLandings 4. DivReachedDest 4. DivActualElapsedTime 4. DivArrDelay 4. 
DivDistance 4. Div1Airport  $8. Div1AirportID  $8. Div1AirportSeqID  $8. Div1WheelsOn  $8. Div1WheelsOnF  8. Div1TotalGTime 4. Div1LongestGTime 4. 
Div1WheelsOff  $8. Div1WheelsOffF  8. Div1TailNum  $8. Div2Airport  $8. Div2AirportID  $8. Div2AirportSeqID  $8. Div2WheelsOn  $8. Div2WheelsOnF  8. Div2TotalGTime 4. 
Div2LongestGTime 4. Div2WheelsOff  $8. Div2WheelsOffF  8. Div2TailNum  $8. Div3Airport  $8. Div3AirportID  $8. Div3AirportSeqID  $8. Div3WheelsOn  $8. Div3WheelsOnF  8. 
Div3TotalGTime 4. Div3LongestGTime 4. Div3WheelsOff  $8. Div3WheelsOffF  8. Div3TailNum  $8. Div4Airport  $8. Div4AirportID  $8. Div4AirportSeqID  $8. 
Div4WheelsOn  $8. Div4WheelsOnF  8. Div4TotalGTime 4. Div4LongestGTime 4. Div4WheelsOff  $8. Div4WheelsOffF  8. Div4TailNum  $8. Div5Airport  $8. Div5AirportID  $8. 
Div5AirportSeqID  $8. Div5WheelsOn  $8. Div5WheelsOnF  8. Div5TotalGTime 4. Div5LongestGTime 4. Div5WheelsOff  $8. Div5WheelsOffF  8. Div5TailNum   $8.  ; 

%let inputmv = input Year Quarter Month DayofMonth DayOfWeek FlightDate :mmddyy10. UniqueCarrier $ AirlineID $ Carrier $ TailNum $ FlightNum 
OriginAirportID $ OriginAirportSeqID $ OriginCityMarketID $ Origin $ OriginCityName $ OriginState $ OriginStateFips $ 
OriginStateName $ OriginWac $ DestAirportID $ DestAirportSeqID $ DestCityMarketID $ Dest $ DestCityName $ DestState $ 
DestStateFips $ DestStateName $ DestWac $ CRSDepTime $ DepTime $ DepDelay DepDelayMinutes DepDel15 DepartureDelayGroups 
DepTimeBlk $ TaxiOut WheelsOff $ WheelsOn $ TaxiIn CRSArrTime $ ArrTime $ ArrDelay ArrDelayMinutes ArrDel15 ArrivalDelayGroups 
ArrTimeBlk $ Cancelled CancellationCode $ Diverted CRSElapsedTime ActualElapsedTime AirTime Flights Distance DistanceGroup 
CarrierDelay WeatherDelay NASDelay SecurityDelay LateAircraftDelay FirstDepTime $ TotalAddGTime LongestAddGTime 
DivAirportLandings DivReachedDest DivActualElapsedTime DivArrDelay DivDistance Div1Airport $ Div1AirportID $ Div1AirportSeqID $ 
Div1WheelsOn $ Div1TotalGTime Div1LongestGTime Div1WheelsOff $ Div1TailNum $ Div2Airport $ Div2AirportID $ Div2AirportSeqID $ 
Div2WheelsOn $ Div2TotalGTime Div2LongestGTime Div2WheelsOff $ Div2TailNum $ Div3Airport $ Div3AirportID $ Div3AirportSeqID $ 
Div3WheelsOn $ Div3TotalGTime Div3LongestGTime Div3WheelsOff $ Div3TailNum $ Div4Airport $ Div4AirportID $ Div4AirportSeqID $ 
Div4WheelsOn $ Div4TotalGTime Div4LongestGTime Div4WheelsOff $ Div4TailNum $ Div5Airport $ Div5AirportID $ Div5AirportSeqID $ 
Div5WheelsOn $ Div5TotalGTime Div5LongestGTime Div5WheelsOff $ Div5TailNum  $ ;

%macro timevars ;
if CRSDepTime="2400" then do ;
	CRSDepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format CRSDepTimeF time5. ;
			CRSDepTimeF=input(substr(CRSDepTime,1,2)||":"||substr(CRSDepTime,3,2), time5.) ; end ;
if DepTime="2400" then do ;
	DepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format DepTimeF time5. ;
			DepTimeF=input(substr(DepTime,1,2)||":"||substr(DepTime,3,2), time5.) ; end ;
if CRSArrTime="2400" then do ;
	CRSArrTimeF=input("23:59", time5.) ; end ;
		else do ;
			format CRSArrTimeF time5. ;
			CRSArrTimeF=input(substr(CRSArrTime,1,2)||":"||substr(CRSArrTime,3,2), time5.) ; end ;
if ArrTime="2400" then do ;
	ArrTimeF=input("23:59", time5.) ; end ;
		else do ;
			format ArrTimeF time5. ;
			ArrTimeF=input(substr(ArrTime,1,2)||":"||substr(ArrTime,3,2), time5.) ; end ;
if FirstDepTime="2400" then do ;
	FirstDepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format FirstDepTimeF time5. ;
			FirstDepTimeF=input(substr(FirstDepTime,1,2)||":"||substr(FirstDepTime,3,2), time5.) ; end ;
if WheelsOff="2400" then do ;
	WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format WheelsOffF time5. ;
			WheelsOffF=input(substr(WheelsOff,1,2)||":"||substr(WheelsOff,3,2), time5.) ; end ;
if WheelsOn="2400" then do ;
	WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format WheelsOnF time5. ;
			WheelsOnF=input(substr(WheelsOn,1,2)||":"||substr(WheelsOn,3,2), time5.) ; end ;
if Div1WheelsOn="2400" then do ;
	Div1WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div1WheelsOnF time5. ;
			Div1WheelsOnF=input(substr(Div1WheelsOn,1,2)||":"||substr(Div1WheelsOn,3,2), time5.) ; end ;
if Div1WheelsOff="2400" then do ;
	Div1WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div1WheelsOffF time5. ;
			Div1WheelsOffF=input(substr(Div1WheelsOff,1,2)||":"||substr(Div1WheelsOff,3,2), time5.) ; end ;
if Div2WheelsOn="2400" then do ;
	Div2WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div2WheelsOnF time5. ;
			Div2WheelsOnF=input(substr(Div2WheelsOn,1,2)||":"||substr(Div2WheelsOn,3,2), time5.) ; end ;
if Div2WheelsOff="2400" then do ;
	Div2WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div2WheelsOffF time5. ;
			Div2WheelsOffF=input(substr(Div2WheelsOff,1,2)||":"||substr(Div2WheelsOff,3,2), time5.) ; end ;
if Div3WheelsOn="2400" then do ;
	Div3WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div3WheelsOnF time5. ;
			Div3WheelsOnF=input(substr(Div3WheelsOn,1,2)||":"||substr(Div3WheelsOn,3,2), time5.) ; end ;
if Div3WheelsOff="2400" then do ;
	Div3WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div3WheelsOffF time5. ;
			Div3WheelsOffF=input(substr(Div3WheelsOff,1,2)||":"||substr(Div3WheelsOff,3,2), time5.) ; end ;
if Div4WheelsOn="2400" then do ;
	Div4WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div4WheelsOnF time5. ;
			Div4WheelsOnF=input(substr(Div4WheelsOn,1,2)||":"||substr(Div4WheelsOn,3,2), time5.) ; end ;
if Div4WheelsOff="2400" then do ;
	Div4WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div4WheelsOffF time5. ;
			Div4WheelsOffF=input(substr(Div4WheelsOff,1,2)||":"||substr(Div4WheelsOff,3,2), time5.) ; end ;
if Div5WheelsOn="2400" then do ;
	Div5WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div5WheelsOnF time5. ;
			Div5WheelsOnF=input(substr(Div5WheelsOn,1,2)||":"||substr(Div5WheelsOn,3,2), time5.) ; end ;
if Div5WheelsOff="2400" then do ;
	Div5WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div5WheelsOffF time5. ;
			Div5WheelsOffF=input(substr(Div5WheelsOff,1,2)||":"||substr(Div5WheelsOff,3,2), time5.) ; end ;
%mend ;





/***************************************************************************************/
/***************************************************************************************/
/**************** Reference Multiple Files in a SAS Dataset Manifest *******************/
/***************************************************************************************/
/***************************************************************************************/

filename IN1 
"C:\Vignesh\Studies\Spring 19\Adv Analytics using SAS\HW\Final_Exercise\On_Time_On_Time_Performance_2015_5.csv";

data HW3.BTS201505 &droprenamemv. ;
infile IN1 dsd delimiter=',' firstobs=2 obs=max ;

	&lengthmv. ;

	&inputmv. ;
	%timevars ;

run ;


/*****************************************************************************/
/*****************************************************************************/
/***** Use PROC SQL to Generate a random subset of the BTS file **************/
/*****************************************************************************/
/*****************************************************************************/
proc sql ;
* <Randomly subset monthly file here.> ;
create table HW3.BTS201505_subids as 
select carrier , tailnum , flightdate , count(*) as NN , ranuni(&UID.) as random 
from HW3.BTS201505
group by carrier , tailnum , flightdate
having random>.2 ; 

create table HW3.BTS201505_&uid. as 
select a.*
from HW3.BTS201505 a inner join HW3.BTS201505_subids b
	on a.carrier=b.carrier and  a.flightdate=b.flightdate and a.tailnum=b.tailnum ;

drop table HW3.BTS201505_subids ;

quit ;









/********* Replace MNAR Missing Values by Rule **************/
proc stdize data=HW3.BTS201505_&uid. out=HW3.BTS201505_&uid. reponly missing=0 ;
var DepDelay ArrDelay Distance;
run ;

/********* END / Replace MNAR Missing Values by Rule **************/

proc sort data=HW3.BTS201505_&uid. ;
by Carrier TailNum FlightDate CRSDepTime FlightNum ;
run ;


/********* Create Lag Variables: */
	/*ArrDelayLag ArrDelayLagInd ArrDelayLagCum ArrDelayLag2 ArrDelayLag2Ind CancelledLag DistanceLag*/
 data HW3.BTS201505_&uid. ;
retain   ArrDelayLag 0 ArrDelayLag2 0 ArrDelayLagCum 0 CancelledLag 0 DistanceLag 0;
format flightdate yymmdd10. SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 ArrDelayLag2Ind CancelledLag DistanceLag 4. ;
set HW3.BTS201505_&uid. ;
by Carrier TailNum FlightDate ;
if first.FlightDate=1 then do ;

	ArrDelayLag=0 ;
	ArrDelayLag2=0 ;
	ArrDelayLagInd=0 ;
    ArrDelayLag2Ind=0 ;
	ArrDelayLagCum=0 ;
	CancelledLag=0 ;
	DistanceLag=0;

	SeqNum=1 ;
end ;


else do ;
	SeqNum+1 ;
	ArrDelayLagInd=(ArrDelayLag>0) ;
	ArrDelayLagCum+ArrDelayLag ;
	ArrDelayLag2Ind=(ArrDelayLag2>0) ;
end ;

if SeqNum=2 then do;
	ArrDelayLag2=0;
end;

output ;

ArrDelayLag2=ArrDelayLag;
ArrDelayLag=ArrDelay ;
CancelledLag=Cancelled ;
DistanceLag=Distance;
run ;
/*END / Create Lag Variables */

/* Generate standard OLS parameter estimates from the HW3.BTS201505_&UID. dataset for the following MODEL specification: */
proc reg data=HW3.BTS201505_&uid.;
/* Cannot include Carrier variable in proc Reg since it is a factor */
model DepDelay=CRSDepTime SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 ArrDelayLag2Ind CancelledLag DistanceLag ;
*where cancelled=0 and carrier="AA" and origin='ORD' ;
run ; 

/* Generate standard OLS parameter estimates from the HW3.BTS201505_&UID. dataset for the following MODEL specification BY CARRIER: */
/* Use an appropriate PROC option to output the parameter estimates for each BY GROUP to a SAS dataset  */
proc reg data=HW3.BTS201505_&uid. outest=HW3.BTS201505_&uid._MNAR COVOUT;
/* Cannot include Carrier variable in proc Reg since it is a factor */
model DepDelay=CRSDepTime SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 ArrDelayLag2Ind CancelledLag DistanceLag ;
by carrier;
run ; 

/* The dataset with parameter estimates will be created with each BY model in a separate row. 
TRANSPOSE that table so that each model appears in a column. */
proc transpose data=HW3.BTS201505_&uid._MNAR out=HW3.BTS201505_&uid._MNAR_xpose ;
by Carrier ;
run ;

/* In the TRANSPOSEd table create new variables that compare the percent difference in parameter estimates for each Carrier against the parameter estimates for the "AA" BY group */

proc reg data=HW3.BTS201505_&uid.  outest=HW3.Bts_lag_parms_AA ;
model DepDelay = CRSDepTime seqnum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2Ind ArrDelayLag2 CancelledLag DistanceLag ;
where carrier="AA";
run ;


proc reg data=HW3.BTS201505_&uid. outest=HW3.BTS201505_lag_params_All ;
model DepDelay = CRSDepTime seqnum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2Ind ArrDelayLag2 CancelledLag DistanceLag ;
by Carrier;
run ;

data HW3.parms_all ;
set HW3.Bts_lag_parms_AA HW3.BTS201505_lag_params_All ;
run ;

proc transpose data=HW3.Parms_all out=HW3.Parms_all_xpose ;
by _Model_ ;
run ;

data HW3.Parms_all_xpose (rename=(Col1=AA Col2=AA_all Col3=AS Col4=B6 Col5=DL Col6=EV Col7=F9 Col8=HA Col9=MQ Col10=NK Col11=OO Col12=UA Col13=US Col14=VX Col15=WN) drop=_Label_ _Model_ ) ;
set HW3.Parms_all_xpose ;
delta1_AA_AS=((Col1/Col3)-1)*100 ;
delta2_AA_B6=((Col1/Col4)-1)*100 ;
delta3_AA_DL=((Col1/Col5)-1)*100 ;
delta4_AA_EV=((Col1/Col6)-1)*100 ;
delta5_AA_F9=((Col1/Col7)-1)*100 ;
delta6_AA_HA=((Col1/Col8)-1)*100 ;
delta7_AA_MQ=((Col1/Col9)-1)*100 ;
delta8_AA_NK=((Col1/Col10)-1)*100 ;
delta9_AA_OO=((Col1/Col11)-1)*100 ;
delta10_AA_UA=((Col1/Col12)-1)*100 ;
delta11_AA_US=((Col1/Col13)-1)*100 ;
delta12_AA_VX=((Col1/Col14)-1)*100 ;
delta13_AA_WN=((Col1/Col15)-1)*100 ;
run ;


/********* END / Generate OLS estimates of OLS model **************/



/*Part 3 */

/********* Create CARRIER/TAILNUM/FLIGHTDATE summary data set **************/
/* Using BY group DATA step logic (hint: first.<var> and last.<var>) create a new data set named HW3.BTS201505_&UID._DEL15S that 
contains one summary observation for every CARRIER/TAILNUM/FLIGHTDATE combination in  HW3.BTS201505_&UID. */
data HW3.BTS201505_&UID._DEL15S ;
set HW3.BTS201505_&uid. ;
if DepDelay>15 then do ; DepDelayInd=1 ; end ;
	else do ; DepDelayInd=0 ; end ;
run ;


proc sql ;
create table HW3.BTS_delay15S as
select carrier , tailnum , flightdate , dayofweek , sum(DepDelayInd) as DelayCount , max(SeqNum) as SeqNum,log(max(SeqNum)) as LnSeqNUM, 
max(CRSDepTime) as MaxCRSDepTime ,sum(Distance) as DistanceCum, sum(Cancelled) as CancelledCount
from HW3.BTS201505_&UID._DEL15S
group by carrier , tailnum , flightdate;
quit ;


/********* END / Create CARRIER/TAILNUM/FLIGHTDATE summary data set **************/





/********* Estimate POISSON model parameters for CARRIER/TAILNUM/FLIGHTDATE summary data set **************
Fit a Poisson regression model for the following model specification:

DelayCount= Carrier MaxCRSDepTime DistanceCum CancelledCount 
Specify the natural log of SeqNum as the offset */
proc genmod data=HW3.BTS_delay15S ; * outest=Bts_lag_parms ;
class carrier / param=glm ;
model DelayCount= Carrier MaxCRSDepTime DistanceCum CancelledCount  
					/ 	dist   = poisson
						link   = log 
						offset = LnSeqNUM ;
run ; quit ;

/* Estimate the same model BY CARRIER for the following model specification:

DelayCount= MaxCRSDepTime DistanceCum CancelledCount
Specify LnSeqNum as the OFFSET */

proc genmod data=HW3.BTS_delay15S ; * outest=Bts_lag_parms ;
class carrier / param=glm ;
model DelayCount= Carrier MaxCRSDepTime DistanceCum CancelledCount  
					/ 	dist   = poisson
						link   = log 
						offset = LnSeqNUM ;
by carrier;
run ; quit ;
/********* END / Estimate POISSON model parameters for CARRIER/TAILNUM/FLIGHTDATE summary data set **************/






/*Part 4

Use an appropriate SAS PROC to estimate a penalized regression model using the LASSO method.

- Create two new datasets from HW3.BTS201505_&UID.

Name the first new dataset  HW3.BTS201505_&UID._3031
Include in it only flights on the 30th and 31st days of the month
Name the second new dataset  HW3.BTS201505_&UID._0129
Include in it only flights on the 1st through 29th days of the month */

/********* Fit model parameters using the LASSO feature selection method, use full HW3.BTS201505_&UID. dataset **************/
/********************* Reduce Feature Dimensionality Prior to Use in Model **************************/
proc princomp data=HW3.BTS201505_&uid. out=PCAOUT ;
var CRSDepTime seqnum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2Ind ArrDelayLag2 CancelledLag DistanceLag ;
run ;

proc reg data=PCAOUT ;
model DepDelay = Prin1-Prin9 ;
where Cancelled=0 ;
run ;



/********************* Feature Selection in Model Estimation Step **************************/
proc reg data=HW3.BTS201505_&uid. outest=HW3.BTS201505_&uid._lag_parms ;
model DepDelay = CRSDepTime seqnum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2Ind ArrDelayLag2 
	CancelledLag DistanceLag ; */ selection=stepwise ;
where cancelled=0 ;
run ; quit ;


data HW3.BTS201505_&UID._3031 ;
set HW3.BTS201505_&uid. ;
if dayofmonth=31 | dayofmonth=30;
run ;

data HW3.BTS201505_&UID._0129 ;
set HW3.BTS201505_&uid. ;
if dayofmonth>=1 & dayofmonth<=29;
run ;


/* - Estimate the model from the dataset  HW3.BTS201505_&UID._0129


- Use the following model specification:

DepDelay=origin CRSDepTime seqnum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag DistanceLag */

proc glmselect data=HW3.BTS201505_&UID._0129 ; * outdesign=lasso_out ;
partition fraction(TEST=.1 VALIDATE=.2) ;
class origin dest ;

model DepDelay=origin CRSDepTime seqnum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag DistanceLag
	 / selection=lasso( screen=sasvi ) ;
* model DepDelay = carrier origin CCRSDepTime seqnum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2Ind ArrDelayLag2 CancelledLag DistanceLag
 / selection=lasso( screen=sis(keepnum=25) ) ;
* score data=Bts_lag_delays_201401_31 out=glmscore P R ;
output out=HW3.GLMOUT P R ;
* code file= '' ;
where cancelled=0 ; *and dayofmonth^=30 ; /* Note that WHERE statement filters OUT= datasets also */
run ;



/* - Use appropriate SAS syntax to score the dataset  HW3.BTS201505_&UID._3031 in the same PROC that estimates the LASSO parameters */

proc glmselect data=HW3.BTS201505_&UID._0129 ; * outdesign=lasso_out ;
partition fraction(TEST=.1 VALIDATE=.2) ;
class origin dest ;

model DepDelay=origin CRSDepTime seqnum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag DistanceLag
	 / selection=lasso( screen=sasvi ) ;
score data=HW3.BTS201505_&UID._3031 out=HW3.glmscore P R ;
output out=HW3.GLMOUT P R ;
* code file= '' ;
where cancelled=0 ; *and dayofmonth^=30 ; /* Note that WHERE statement filters OUT= datasets also */
run ;



/********* END / Fit model parameters using the LASSO feature selection method **************/




/* - Separately, for the same data set and model specification, generate a model average across 10 samples from the input dataset using the LASSO selection method */

/********* Fit AVERAGE LASSO model parameters for samples from HW3.BTS201505_&UID. dataset **************/

ods graphics on;
proc glmselect data=HW3.BTS201505_&UID._0129 seed=3 plots=(EffectSelectPct ParmDistribution);
class origin ;
model DepDelay=origin CRSDepTime seqnum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag DistanceLag
	 / selection=LASSO(adaptive stop=none choose=SBC);
modelAverage tables=(EffectSelectPct(all) ParmEst(all)) nsamples=10 ;
where cancelled=0;
run; quit ;
ods graphics off ;

/********* END / Fit AVERAGE LASSO model parameters for samples from HW3.BTS201505_&UID. dataset **************/


/* Part 5

Select one of the Easter Egg problems (located in a separate Blackboard content folder) and complete per the instructions specific to the question you choose. */

/*In order:

- Read the same monthly BTS file from HW3 into a SAS dataset.  Ensure that FlightNum is read as a NUMERIC variable when you create the SAS dataset. */
filename IN1 
"C:\Vignesh\Studies\Spring 19\Adv Analytics using SAS\HW\Final_Exercise\On_Time_On_Time_Performance_2015_5.csv";

data HW3.BTS201505_Part5 &droprenamemv. ;
infile IN1 dsd delimiter=',' firstobs=2 obs=max ;

	&lengthmv. ;

	&inputmv. ;
	%timevars ;

run ;

/* - Create a new variable called FlightNumChar. (Use the following syntax to create it: FlightNumChar=put(FlightNum , $4. -l) ;) */
 data HW3.BTS201505_Part5 ;
format FlightNumChar $4. ;
set HW3.BTS201505_Part5 ;
FlightNumChar=put(FlightNum , $4. -l) ;
run ;


/* 
- Impute replacement values for DepDelay and ArrDelay where they are missing. */
/********* Replace MNAR Missing Values by Rule **************/
proc stdize data=HW3.BTS201505_Part5 out=HW3.BTS201505_Part5 reponly missing=0 ;
var DepDelay ArrDelay;
run ;

/********* END / Replace MNAR Missing Values by Rule **************/

/* Next:

- Sort your SAS dataset by Carrier, TailNum, FlightDate, CRSDepTime, FlightNum */

proc sort data=HW3.BTS201505_Part5 ;
by FlightNum Carrier TailNum FlightDate CRSDepTime FlightNum ;
run ;


/* - Create ArrDelayLag,  ArrDelayLagInd,  ArrDelayLagCum,  ArrDelayLag2,  CancelledLag, DistanceLag. */
/********* Create Lag Variables: */
 data HW3.BTS201505_Part5_Fnum ;
retain   ArrDelayLag 0 ArrDelayLag2 0 ArrDelayLagCum 0 CancelledLag 0 DistanceLag 0;
format flightdate yymmdd10. SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag DistanceLag 4. ;
set HW3.BTS201505_Part5 ;
by Carrier TailNum FlightDate ;
if first.FlightDate=1 then do ;

	ArrDelayLag=0 ;
	ArrDelayLag2=0 ;
	ArrDelayLagInd=0 ;
	ArrDelayLagCum=0 ;
	CancelledLag=0 ;
	DistanceLag=0;
	SeqNum=1 ;
end ;


else do ;
	SeqNum+1 ;
	ArrDelayLagInd=(ArrDelayLag>0) ;
	ArrDelayLagCum+ArrDelayLag ;
end ;

if SeqNum=2 then do;
	ArrDelayLag2=0;
end;

output ;

ArrDelayLag2=ArrDelayLag;
ArrDelayLag=ArrDelay ;
CancelledLag=Cancelled ;
DistanceLag=Distance;
run ;
/*END / Create Lag Variables */


/* - Estimate the regression model: */
proc reg data=HW3.BTS201505_Part5_Fnum outest=HW3.BTS201505_Part5_numEst;
model DepDelay= CRSDepTime SeqNum ArrDelayLag  ArrDelayLagInd  ArrDelayLagCum  ArrDelayLag2 CancelledLag DistanceLag  ;
run ; 


/* Next:

- Sort your SAS dataset by Carrier, TailNum, FlightDate, CRSDepTime, FlightNumChar */

proc sort data=HW3.BTS201505_Part5 ;
by Carrier TailNum FlightDate CRSDepTime FlightNumChar ;
run ;

/* - Create ArrDelayLag,  ArrDelayLagInd,  ArrDelayLagCum,  ArrDelayLag2,  CancelledLag, DistanceLag. */

data HW3.BTS201505_Part5_FnumChar ;
retain   ArrDelayLag 0 ArrDelayLag2 0 ArrDelayLagCum 0 CancelledLag 0 DistanceLag 0;
format flightdate yymmdd10. SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag DistanceLag 4. ;
set HW3.BTS201505_Part5 ;
by Carrier TailNum FlightDate ;
if first.FlightDate=1 then do ;

	ArrDelayLag=0 ;
	ArrDelayLag2=0 ;
	ArrDelayLagInd=0 ;
	ArrDelayLagCum=0 ;
	CancelledLag=0 ;
	DistanceLag=0;
	SeqNum=1 ;
end ;


else do ;
	SeqNum+1 ;
	ArrDelayLagInd=(ArrDelayLag>0) ;
	ArrDelayLagCum+ArrDelayLag ;
end ;

if SeqNum=2 then do;
	ArrDelayLag2=0;
end;

output ;

ArrDelayLag2=ArrDelayLag;
ArrDelayLag=ArrDelay ;
CancelledLag=Cancelled ;
DistanceLag=Distance;
run ;
/*END / Create Lag Variables */

/* - Estimate the same regression model: */
proc reg data=HW3.BTS201505_Part5_FnumChar outest=HW3.BTS201505_Part5_charEst;
model DepDelay= CRSDepTime SeqNum ArrDelayLag  ArrDelayLagInd  ArrDelayLagCum  ArrDelayLag2 CancelledLag DistanceLag  ;
run ; 



/* Finally:

- Compare the regression model estimates from the two different sorts. 
- Use appropriate SAS syntax to identify the source of any differences between the two sets of regression estimates. */

data HW3.part5_parms_all ;
set HW3.BTS201505_Part5_numEst HW3.BTS201505_Part5_charEst ;
run ;

proc transpose data=HW3.part5_parms_all out=HW3.part5_Parms_all_xpose ;
by _Model_ ;
run ;

data HW3.part5_Parms_all_xpose (rename=(Col1=FlightNum Col2=FlightNumChar ) drop=_Label_ _Model_ ) ;
set HW3.part5_Parms_all_xpose ;
delta=((Col1/Col2)-1)*100 ;
run ;


ods pdf close ;


