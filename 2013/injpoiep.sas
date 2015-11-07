*********************************************************************
 JUNE 3, 2014  8:17 AM
 
 This is an example of a SAS program that creates a SAS
 file from the 2013 NHIS Public Use INJPOIEP.DAT ASCII file
 
 This is stored in INJPOIEP.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2013";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2013";

FILENAME ASCIIDAT 'C:\NHIS2013\INJPOIEP.dat';

* DEFINE VARIABLE VALUES FOR REPORTS;

*  USE THE STATEMENT "PROC FORMAT LIBRARY=LIBRARY"
     TO PERMANENTLY STORE THE FORMAT DEFINITIONS;

*  USE THE STATEMENT "PROC FORMAT" IF YOU DO NOT WISH
      TO PERMANENTLY STORE THE FORMATS;

PROC FORMAT LIBRARY=LIBRARY;
*PROC FORMAT;

   VALUE $GROUPC
      ' '< - HIGH   = "Range of Values"
   ;
   VALUE GROUPN
      LOW - HIGH   = "Range of Values"
   ;
   VALUE $VERBAT
      ' '< - HIGH   = "Verbatim Values"
   ;
   VALUE INP001X
      10                 = "10 Household"
      20                 = "20 Person"
      25                 = "25 Income Imputation"
      30                 = "30 Sample Adult"
      38                 = "38 Functioning and Disability"
      40                 = "40 Sample Child"
      60                 = "60 Family"
      63                 = "63 Family Disability Questions"
      65                 = "65 Paradata"
      70                 = "70 Injury/Poisoning Episode"
      75                 = "75 Injury/Poisoning Verbatim"
   ;
   VALUE INP002X
      .                   = '.'
      OTHER              = "Survey Year"
   ;
   VALUE $INP006X
      "01"               = "01 First injury or poisoning"
      "02"               = "02 Second injury or poisoning"
      "03"               = "03 Third injury or poisoning"
      "04"               = "04 Fourth injury or poisoning"
      "05"               = "05 Fifth injury or poisoning"
      "06"               = "06 Sixth injury or poisoning"
      "07"               = "07 Seventh injury or poisoning"
      "08"               = "08 Eighth injury or poisoning"
      "09"               = "09 Ninth injury or poisoning"
      "10"               = "10 Tenth injury or poisoning"
   ;
   VALUE INP008X
      01                 = "01 January"
      02                 = "02 February"
      03                 = "03 March"
      04                 = "04 April"
      05                 = "05 May"
      06                 = "06 June"
      07                 = "07 July"
      08                 = "08 August"
      09                 = "09 September"
      10                 = "10 October"
      11                 = "11 November"
      12                 = "12 December"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP009X
      .                   = '.'
      OTHER              = "Year"
      9997               = "9997 Refused"
      9998               = "9998 Not ascertained"
      9999               = "9999 Don't know"
   ;
   VALUE INP010X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE INP011X
      1                  = "1 Days"
      2                  = "2 Weeks"
      3                  = "3 Months"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE INP012X
      1                  = "1 Beginning"
      2                  = "2 Middle"
      3                  = "3 End"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE INP013X
      500                = 
"500 Same month as month the injury/poisoning questions were asked"
      501                = 
"501 Month before the month the injury/poisoning questions were asked"
      998                = "998 Not ascertained"
   ;
   VALUE INP017X
      1                  = "1 Month, day, and year"
      2                  = "2 Month, beginning of month, and year"
      3                  = "3 Month, middle of month, and year"
      4                  = "4 Month, end of month, and year"
      5                  = "5 Month and year"
      6                  = "6 Elapsed time in days"
      7                  = "7 Elapsed time in weeks"
      8                  = "8 Elapsed time in months"
      9                  = "9 No information"
   ;
   VALUE INP018X
      0                  = 
"0 No imputation necessary (month, day, and year reported; or elapsed time inter
val width = 0)"
      1                  = 
"1 Imputed day based on reported beginning, middle, or end of month"
      2                  = 
"2 Imputed day of the month (no day of month information reported)"
      3                  = 
"3 No imputation necessary (elapsed time reported in days)"
      4                  = 
"4 Imputed time interval based on elapsed time reported in weeks"
      5                  = 
"5 Imputed time interval based on elapsed time reported in months"
      6                  = 
"6 Imputed elapsed time & elapsed time interval using hot deck imputation (no da
te or valid date information reported)"
   ;
   VALUE INP019X
      01                 = "01 January"
      02                 = "02 February"
      03                 = "03 March"
      04                 = "04 April"
      05                 = "05 May"
      06                 = "06 June"
      07                 = "07 July"
      08                 = "08 August"
      09                 = "09 September"
      10                 = "10 October"
      11                 = "11 November"
      12                 = "12 December"
   ;
   VALUE INP020X
      .                   = '.'
      OTHER              = "Year"
   ;
   VALUE INP021X
      1                  = "1 Elapsed time is > 91 days"
      2                  = "2 Elapsed time is <= 91 days"
   ;
   VALUE INP022X
      1                  = 
"1 Only the upper boundary of the interval for elapsed time is > 91 days"
      2                  = 
"2 Upper and lower boundary of the interval for elapsed time is > 91 days"
      3                  = 
"3 Upper and lower boundary of the interval for elapsed time is <= 91 days"
   ;
   VALUE INP023X
      01                 = "01 In a motor vehicle"
      02                 = 
"02 On a bike, scooter, skateboard, skates, skis, horse, etc"
      03                 = 
"03 Pedestrian who was struck by a vehicle such as a car or bicycle"
      04                 = "04 In a boat, train, or plane"
      05                 = "05 Fall"
      06                 = 
"06 Burned or scalded by substances such as hot objects or liquids, fire, or che
micals"
      07                 = "07 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP024X
      01                 = "01 Transportation"
      02                 = "02 Fire/burn/scald related"
      03                 = "03 Fall"
      04                 = "04 Poisoning"
      05                 = "05 Overexertion/strenuous movements"
      06                 = "06 Struck by object or person"
      07                 = "07 Animal or insect bite"
      08                 = "08 Cut/pierce"
      09                 = "09 Machinery"
      10                 = "10 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP025X
      01                 = "01 Ankle"
      02                 = "02 Back"
      03                 = "03 Buttocks"
      04                 = "04 Chest"
      05                 = "05 Ear"
      06                 = "06 Elbow"
      07                 = "07 Eye"
      08                 = "08 Face"
      09                 = "09 Finger/thumb"
      10                 = "10 Foot"
      11                 = "11 Forearm"
      12                 = "12 Groin"
      13                 = "13 Hand"
      14                 = "14 Head (not face)"
      15                 = "15 Hip"
      16                 = "16 Jaw"
      17                 = "17 Knee"
      18                 = "18 Lower leg"
      19                 = "19 Mouth"
      20                 = "20 Neck"
      21                 = "21 Nose"
      22                 = "22 Shoulder"
      23                 = "23 Stomach"
      24                 = "24 Teeth"
      25                 = "25 Thigh"
      26                 = "26 Toe"
      27                 = "27 Upper arm"
      28                 = "28 Wrist"
      29                 = "29 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP026X
      00                 = "00 No second response"
      01                 = "01 Ankle"
      02                 = "02 Back"
      03                 = "03 Buttocks"
      04                 = "04 Chest"
      05                 = "05 Ear"
      06                 = "06 Elbow"
      07                 = "07 Eye"
      08                 = "08 Face"
      09                 = "09 Finger/thumb"
      10                 = "10 Foot"
      11                 = "11 Forearm"
      12                 = "12 Groin"
      13                 = "13 Hand"
      14                 = "14 Head (not face)"
      15                 = "15 Hip"
      16                 = "16 Jaw"
      17                 = "17 Knee"
      18                 = "18 Lower leg"
      19                 = "19 Mouth"
      20                 = "20 Neck"
      21                 = "21 Nose"
      22                 = "22 Shoulder"
      23                 = "23 Stomach"
      24                 = "24 Teeth"
      25                 = "25 Thigh"
      26                 = "26 Toe"
      27                 = "27 Upper arm"
      28                 = "28 Wrist"
      29                 = "29 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP027X
      00                 = "00 No third response"
      01                 = "01 Ankle"
      02                 = "02 Back"
      03                 = "03 Buttocks"
      04                 = "04 Chest"
      05                 = "05 Ear"
      06                 = "06 Elbow"
      07                 = "07 Eye"
      08                 = "08 Face"
      09                 = "09 Finger/thumb"
      10                 = "10 Foot"
      11                 = "11 Forearm"
      12                 = "12 Groin"
      13                 = "13 Hand"
      14                 = "14 Head (not face)"
      15                 = "15 Hip"
      16                 = "16 Jaw"
      17                 = "17 Knee"
      18                 = "18 Lower leg"
      19                 = "19 Mouth"
      20                 = "20 Neck"
      21                 = "21 Nose"
      22                 = "22 Shoulder"
      23                 = "23 Stomach"
      24                 = "24 Teeth"
      25                 = "25 Thigh"
      26                 = "26 Toe"
      27                 = "27 Upper arm"
      28                 = "28 Wrist"
      29                 = "29 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP028X
      00                 = "00 No fourth response"
      01                 = "01 Ankle"
      02                 = "02 Back"
      03                 = "03 Buttocks"
      04                 = "04 Chest"
      05                 = "05 Ear"
      06                 = "06 Elbow"
      07                 = "07 Eye"
      08                 = "08 Face"
      09                 = "09 Finger/thumb"
      10                 = "10 Foot"
      11                 = "11 Forearm"
      12                 = "12 Groin"
      13                 = "13 Hand"
      14                 = "14 Head (not face)"
      15                 = "15 Hip"
      16                 = "16 Jaw"
      17                 = "17 Knee"
      18                 = "18 Lower leg"
      19                 = "19 Mouth"
      20                 = "20 Neck"
      21                 = "21 Nose"
      22                 = "22 Shoulder"
      23                 = "23 Stomach"
      24                 = "24 Teeth"
      25                 = "25 Thigh"
      26                 = "26 Toe"
      27                 = "27 Upper arm"
      28                 = "28 Wrist"
      29                 = "29 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP029X
      01                 = "01 Broken bone or fracture"
      02                 = "02 Sprain, strain, or twist"
      03                 = "03 Cut"
      04                 = "04 Scrape"
      05                 = "05 Bruise"
      06                 = "06 Burn"
      07                 = "07 Insect bite"
      08                 = "08 Animal bite"
      09                 = "09 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP030X
      00                 = "00 No second response"
      01                 = "01 Broken bone or fracture"
      02                 = "02 Sprain, strain, or twist"
      03                 = "03 Cut"
      04                 = "04 Scrape"
      05                 = "05 Bruise"
      06                 = "06 Burn"
      07                 = "07 Insect bite"
      08                 = "08 Animal bite"
      09                 = "09 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP037X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE INP044X
      95                 = "95 95+ nights"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP046X
      1                  = "1 The driver of a motor vehicle"
      2                  = "2 A passenger in a motor vehicle"
      3                  = "3 A pedestrian"
      4                  = "4 A bicycle rider or tricycle rider"
      5                  = 
"5 The rider of a scooter, skateboard, skates, or other non-motorized vehicle"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE INP047X
      01                 = "01 Passenger car"
      02                 = 
"02 Passenger truck, such as a pickup truck, van, or SUV"
      03                 = "03 Bus"
      04                 = 
"04 Large commercial truck, such as a semi-truck, big rig, or 18 wheeler"
      05                 = "05 Motorcycle (including mopeds and minibikes)"
      06                 = "06 All terrain vehicle or ski/snow-mobile"
      07                 = "07 Farm equipment (such as a tractor)"
      08                 = "08 Industrial or construction vehicle"
      09                 = "09 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP050X
      01                 = "01 Stairs, steps, or escalator"
      02                 = "02 Floor or level ground"
      03                 = "03 Curb (including sidewalk)"
      04                 = "04 Ladder or scaffolding"
      05                 = "05 Playground equipment"
      06                 = "06 Sports field, court, or rink"
      07                 = "07 Building or other structure"
      08                 = "08 Chair, bed, sofa, or other furniture"
      09                 = "09 Bathtub, shower, toilet, or commode"
      10                 = "10 Hole or other opening"
      11                 = "11 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP051X
      00                 = "00 No second response"
      01                 = "01 Stairs, steps, or escalator"
      02                 = "02 Floor or level ground"
      03                 = "03 Curb (including sidewalk)"
      04                 = "04 Ladder or scaffolding"
      05                 = "05 Playground equipment"
      06                 = "06 Sports field, court, or rink"
      07                 = "07 Building or other structure"
      08                 = "08 Chair, bed, sofa, or other furniture"
      09                 = "09 Bathtub, shower, toilet, or commode"
      10                 = "10 Hole or other opening"
      11                 = "11 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP052X
      1                  = "1 Slipping or tripping"
      2                  = "2 Jumping or diving"
      3                  = "3 Bumping into an object or another person"
      4                  = "4 Being shoved or pushed by another person"
      5                  = 
"5 Losing balance or having dizziness (becoming faint or having a seizure)"
      6                  = "6 Other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE INP053X
      1                  = 
"1 Swallowing a drug or medical substance mistakenly or in overdose"
      2                  = 
"2 Swallowing or touching a harmful solid or liquid substance"
      3                  = "3 Inhaling harmful gases or vapors"
      4                  = 
"4 Eating a poisonous plant or other substance mistaken for food"
      5                  = "5 Being bitten by a poisonous animal"
      6                  = "6 Other, please specify"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE INP054X
      01                 = "01 Driving or riding in a motor vehicle"
      02                 = "02 Working at a paid job"
      03                 = "03 Working around the house or yard"
      04                 = "04 Attending school"
      05                 = "05 Unpaid work (such as volunteer work)"
      06                 = "06 Sports and exercise"
      07                 = "07 Leisure activity (excluding sports)"
      08                 = "08 Sleeping, resting, eating, or drinking"
      09                 = "09 Cooking"
      10                 = "10 Being cared for (hands-on care from other person)
"
      11                 = "11 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP055X
      00                 = "00 No second response"
      01                 = "01 Driving or riding in a motor vehicle"
      02                 = "02 Working at a paid job"
      03                 = "03 Working around the house or yard"
      04                 = "04 Attending school"
      05                 = "05 Unpaid work (such as volunteer work)"
      06                 = "06 Sports and exercise"
      07                 = "07 Leisure activity"
      08                 = "08 Sleeping, resting, eating, or drinking"
      09                 = "09 Cooking"
      10                 = "10 Being cared for (hands on care from other person)
"
      11                 = "11 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP056X
      01                 = "01 Home (inside)"
      02                 = "02 Home (outside)"
      03                 = "03 School (not residential)"
      04                 = "04 Child care center or preschool"
      05                 = "05 Residential institution (exclude hospital)"
      06                 = "06 Health care facility (include hospital)"
      07                 = "07 Street or highway"
      08                 = "08 Sidewalk"
      09                 = "09 Parking lot"
      10                 = "10 Sport facility, athletic field, or playground"
      11                 = 
"11 Shopping center, restaurant, store, bank, gas station, or other place of bus
iness"
      12                 = "12 Farm"
      13                 = 
"13 Park or recreation area (include bike or jog path)"
      14                 = "14 River, lake, stream, or ocean"
      15                 = "15 Industrial or construction area"
      16                 = "16 Other public building"
      17                 = "17 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP057X
      00                 = "00 No second response"
      01                 = "01 Home (inside)"
      02                 = "02 Home (outside)"
      03                 = "03 School (not residential)"
      04                 = "04 Child care center or preschool"
      05                 = "05 Residential institution (exclude hospital)"
      06                 = "06 Health care facility (include hospital)"
      07                 = "07 Street or highway"
      08                 = "08 Sidewalk"
      09                 = "09 Parking lot"
      10                 = "10 Sport facility, athletic field, or playground"
      11                 = 
"11 Shopping center, restaurant, store, bank, gas station, or other place of bus
iness"
      12                 = "12 Farm"
      13                 = 
"13 Park or recreation area (include bike or jog path)"
      14                 = "14 River, lake, stream, or ocean"
      15                 = "15 Industrial or construction area"
      16                 = "16 Other public building"
      17                 = "17 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE INP058X
      1                  = "1 Full-time"
      2                  = "2 Part-time"
      3                  = "3 Not employed"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE INP059X
      1                  = "1 None"
      2                  = "2 Less than one day"
      3                  = "3 One to five days"
      4                  = "4 Six or more days"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE INP060X
      1                  = "1 Full-time"
      2                  = "2 Part-time"
      3                  = "3 Not a student"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE $INP062X
      OTHER              = "ICD-9-CM codes"
      ' '                 = ' '
   ;

DATA NHIS.INJPOIEP;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=173;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2
      FPX      $ 2   IPEPNO   $ 2   WTFA       8

      /* FIJ LENGTHS */

      IPDATEM    3   IPDATEY    4   IPDATENO   4   IPDATETP   3
      IPDATEMT   3   RPCKDMR    4   RPD        4   BIETD      4
      EIETD      4   EDIPBR     3   IMPMETH    3   MUMON      3
      MUYEAR     4   ETFLG      3   BEIFLG     3   ICAUS      3
      ECAUS      3   IJBODY1    3   IJBODY2    3   IJBODY3    3
      IJBODY4    3   IJTYPE1A   3   IJTYPE1B   3   IJTYPE2A   3
      IJTYPE2B   3   IJTYPE3A   3   IJTYPE3B   3   IJTYPE4A   3
      IJTYPE4B   3   PPCC       3   IPEV       3   IPER       3
      IPDO       3   IPPCHCP    3   IPOTH      3   IPHOSP     3
      IPIHNO     3   IMTRAF     3   IMVWHO     3   IMVTYP     3
      ISBELT     3   IHELMT     3   IFALL1     3   IFALL2     3
      IFALLWHY   3   PPOIS      3   IPWHAT1    3   IPWHAT2    3
      IPWHER1    3   IPWHER2    3   IPEMP      3   IPWKLS     3
      IPSTU      3   IPSCLS     3   ICD9_1   $ 5   ICD9_2   $ 5
      ICD9_3   $ 5   ICD9_4   $ 5   ICD9_5   $ 5   ICD9_6   $ 5
      ICD9_7   $ 5   ICD9_8   $ 5   ECODE_1T $ 5   ECODE_2T $ 5
      ECODE_3T $ 5 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    FMX      $   13 -  14
      FPX      $   15 -  16    IPEPNO   $   17 -  18
      WTFA         19 -  24

      /* FIJ LOCATIONS */

      IPDATEM      25 -  26    IPDATEY      27 -  30
      IPDATENO     31 -  33    IPDATETP     34 -  34
      IPDATEMT     35 -  35    RPCKDMR      36 -  38
      RPD          39 -  41    BIETD        42 -  44
      EIETD        45 -  47    EDIPBR       48 -  48
      IMPMETH      49 -  49    MUMON        50 -  51
      MUYEAR       52 -  55    ETFLG        56 -  56
      BEIFLG       57 -  57    ICAUS        58 -  59
      ECAUS        60 -  61    IJBODY1      62 -  63
      IJBODY2      64 -  65    IJBODY3      66 -  67
      IJBODY4      68 -  69    IJTYPE1A     70 -  71
      IJTYPE1B     72 -  73    IJTYPE2A     74 -  75
      IJTYPE2B     76 -  77    IJTYPE3A     78 -  79
      IJTYPE3B     80 -  81    IJTYPE4A     82 -  83
      IJTYPE4B     84 -  85    PPCC         86 -  86
      IPEV         87 -  87    IPER         88 -  88
      IPDO         89 -  89    IPPCHCP      90 -  90
      IPOTH        91 -  91    IPHOSP       92 -  92
      IPIHNO       93 -  94    IMTRAF       95 -  95
      IMVWHO       96 -  96    IMVTYP       97 -  98
      ISBELT       99 -  99    IHELMT      100 - 100
      IFALL1      101 - 102    IFALL2      103 - 104
      IFALLWHY    105 - 105    PPOIS       106 - 106
      IPWHAT1     107 - 108    IPWHAT2     109 - 110
      IPWHER1     111 - 112    IPWHER2     113 - 114
      IPEMP       115 - 115    IPWKLS      116 - 116
      IPSTU       117 - 117    IPSCLS      118 - 118
      ICD9_1   $  119 - 123    ICD9_2   $  124 - 128
      ICD9_3   $  129 - 133    ICD9_4   $  134 - 138
      ICD9_5   $  139 - 143    ICD9_6   $  144 - 148
      ICD9_7   $  149 - 153    ICD9_8   $  154 - 158
      ECODE_1T $  159 - 163    ECODE_2T $  164 - 168
      ECODE_3T $  169 - 173;

   * DEFINE VARIABLE LABELS;

   LABEL

      /* IDN LABELS */

      RECTYPE    ="File type identifier"
      SRVY_YR    ="Year of National Health Interview Survey"
      HHX        ="Household Number"
      FMX        ="Family Number"
      FPX        ="Person Number (Within family)"
      IPEPNO     ="Injury/Poisoning Episode Number"
      WTFA       ="Weight - Final Annual"

      /* FIJ LABELS */

      IPDATEM    ="Month of injury/poisoning episode"
      IPDATEY    ="Year of injury/poisoning episode"
      IPDATENO   =
"Approximate time since injury/poisoning episode: Number of units"
      IPDATETP   ="Approximate time since injury/poisoning episode: Time period"
      IPDATEMT   ="Approximate point in month of injury/poisoning episode"
      RPCKDMR    =
"Time between the date of the injury/poisoning episode and the date the injury/p
oisoning questions were asked"
      RPD        =
"Days between the date of the injury/poisoning episode and the date the injury/p
oisoning questions were asked"
      BIETD      ="Lower boundary of elapsed time interval in days"
      EIETD      ="Upper boundary of elapsed time interval in days"
      EDIPBR     ="Episode date information reported by the respondent"
      IMPMETH    ="Imputed part of I/P date or elapsed time interval"
      MUMON      ="Imputed month"
      MUYEAR     ="Imputed year"
      ETFLG      ="Elapsed time flag"
      BEIFLG     ="Elapsed time interval boundary flag"
      ICAUS      ="Cause of injury episode"
      ECAUS      ="Cause of injury/poisoning based on E codes"
      IJBODY1    ="Parts of body hurt: 1st body part"
      IJBODY2    ="Parts of body hurt: 2nd body part"
      IJBODY3    ="Parts of body hurt: 3rd body part"
      IJBODY4    ="Parts of body hurt: 4th body part"
      IJTYPE1A   ="How body part 1 was hurt: First response"
      IJTYPE1B   ="How body part 1 was hurt: Second response"
      IJTYPE2A   ="How body part 2 was hurt: First response"
      IJTYPE2B   ="How body part 2 was hurt: Second response"
      IJTYPE3A   ="How body part 3 was hurt: First response"
      IJTYPE3B   ="How body part 3 was hurt: Second response"
      IJTYPE4A   ="How body part 4 was hurt: First response"
      IJTYPE4B   ="How body part 4 was hurt: Second response"
      PPCC       ="Where received medical care: Call to PCC"
      IPEV       ="Where received medical care: Emergency vehicle"
      IPER       ="Where received medical care: Emergency room"
      IPDO       ="Where received medical care: Doctor's office/clinic"
      IPPCHCP    ="Where received medical care: Call to medical prof"
      IPOTH      ="Where received medical care: Any place else"
      IPHOSP     ="Hospitalized overnight due to injury/poisoning episode"
      IPIHNO     ="Number of nights in the hospital"
      IMTRAF     ="Traffic-related injury"
      IMVWHO     ="Injured as . . ."
      IMVTYP     ="Type of vehicle injured person was in"
      ISBELT     ="Restrained at time of accident"
      IHELMT     ="Wearing a helmet at the time of the accident"
      IFALL1     ="How person fell: First response"
      IFALL2     ="How person fell: Second response"
      IFALLWHY   ="Cause of fall"
      PPOIS      ="Cause of poisoning episode"
      IPWHAT1    ="Activity at time of inj/pois episode: First response"
      IPWHAT2    ="Activity at time of inj/pois episode: Second response"
      IPWHER1    ="Location at time of inj/pois episode: First response"
      IPWHER2    ="Location at time of inj/pois episode: Second response"
      IPEMP      ="Employed at the time of the injury/poisoning episode"
      IPWKLS     ="Days of work missed"
      IPSTU      ="Student at the time of the injury/poisoning episode"
      IPSCLS     ="Days of school missed"
      ICD9_1     ="ICD-9-CM diagnosis code"
      ICD9_2     ="ICD-9-CM diagnosis code"
      ICD9_3     ="ICD-9-CM diagnosis code"
      ICD9_4     ="ICD-9-CM diagnosis code"
      ICD9_5     ="ICD-9-CM diagnosis code"
      ICD9_6     ="ICD-9-CM diagnosis code"
      ICD9_7     ="ICD-9-CM diagnosis code"
      ICD9_8     ="ICD-9-CM diagnosis code"
      ECODE_1T   ="ICD-9-CM external cause code"
      ECODE_2T   ="ICD-9-CM external cause code"
      ECODE_3T   ="ICD-9-CM external cause code"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
   *    (PUT ASTERISK (*) BEFORE WORD "FORMAT"
        IN NEXT STATEMENT TO PREVENT FORMAT
        ASSOCIATIONS BEING STORED WITH DATA SET);
   FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE   INP001X.   SRVY_YR   INP002X.   HHX       $GROUPC.
      IPEPNO    $INP006X.  WTFA      GROUPN.

      /* FIJ FORMAT ASSOCIATIONS */

      IPDATEM   INP008X.   IPDATEY   INP009X.   IPDATENO  INP010X.
      IPDATETP  INP011X.   IPDATEMT  INP012X.   RPCKDMR   INP013X.
      EDIPBR    INP017X.   IMPMETH   INP018X.   MUMON     INP019X.
      MUYEAR    INP020X.   ETFLG     INP021X.   BEIFLG    INP022X.
      ICAUS     INP023X.   ECAUS     INP024X.   IJBODY1   INP025X.
      IJBODY2   INP026X.   IJBODY3   INP027X.   IJBODY4   INP028X.
      IJTYPE1A  INP029X.   IJTYPE1B  INP030X.   IJTYPE2A  INP029X.
      IJTYPE2B  INP030X.   IJTYPE3A  INP029X.   IJTYPE3B  INP030X.
      IJTYPE4A  INP029X.   IJTYPE4B  INP030X.   PPCC      INP037X.
      IPEV      INP037X.   IPER      INP037X.   IPDO      INP037X.
      IPPCHCP   INP037X.   IPOTH     INP037X.   IPHOSP    INP037X.
      IPIHNO    INP044X.   IMTRAF    INP037X.   IMVWHO    INP046X.
      IMVTYP    INP047X.   ISBELT    INP037X.   IHELMT    INP037X.
      IFALL1    INP050X.   IFALL2    INP051X.   IFALLWHY  INP052X.
      PPOIS     INP053X.   IPWHAT1   INP054X.   IPWHAT2   INP055X.
      IPWHER1   INP056X.   IPWHER2   INP057X.   IPEMP     INP058X.
      IPWKLS    INP059X.   IPSTU     INP060X.   IPSCLS    INP059X.
      ICD9_1    $INP062X.  ICD9_2    $INP062X.  ICD9_3    $INP062X.
      ICD9_4    $INP062X.  ICD9_5    $INP062X.  ICD9_6    $INP062X.
      ICD9_7    $INP062X.  ICD9_8    $INP062X.;
RUN;

PROC CONTENTS DATA=NHIS.INJPOIEP;
   TITLE1 'CONTENTS OF THE 2013 NHIS Episode FILE';

PROC FREQ DATA=NHIS.INJPOIEP NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2013 NHIS Episode FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA;

PROC FREQ DATA=NHIS.INJPOIEP NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2013 NHIS Episode FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
