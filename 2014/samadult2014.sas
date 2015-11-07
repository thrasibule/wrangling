*********************************************************************
 JUNE 22, 2015 10:34 AM
 
 This is an example of a SAS program that creates a SAS
 file from the 2014 NHIS Public Use SAMADULT.DAT ASCII file
 
 This is stored in SAMADULT.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2014";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2014";

FILENAME ASCIIDAT 'C:\NHIS2014\SAMADULT.dat';

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
      ' '< - HIGH   = "Verbatim Response"
   ;
   VALUE SAP001X
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
   VALUE SAP002X
      .                   = '.'
      OTHER              = "Survey Year"
   ;
   VALUE SAP004X
      1                  = "1 Quarter 1"
      2                  = "2 Quarter 2"
      3                  = "3 Quarter 3"
      4                  = "4 Quarter 4"
   ;
   VALUE SAP005X
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
   VALUE SAP010X
      1                  = "1 Northeast"
      2                  = "2 Midwest"
      3                  = "3 South"
      4                  = "4 West"
   ;
   VALUE SAP013X
      1                  = "1 Male"
      2                  = "2 Female"
   ;
   VALUE SAP014X
      00                 = "00 Multiple Hispanic"
      01                 = "01 Puerto Rico"
      02                 = "02 Mexican"
      03                 = "03 Mexican-American"
      04                 = "04 Cuban/Cuban American"
      05                 = "05 Dominican (Republic)"
      06                 = "06 Central or South American"
      07                 = "07 Other Latin American, type not specified"
      08                 = "08 Other Spanish"
      09                 = "09 Hispanic/Latino/Spanish, non-specific type"
      10                 = "10 Hispanic/Latino/Spanish, type refused"
      11                 = "11 Hispanic/Latino/Spanish, type not ascertained"
      12                 = "12 Not Hispanic/Spanish origin"
   ;
   VALUE SAP015X
      01                 = "01 White only"
      02                 = "02 Black/African American only"
      03                 = "03 AIAN only"
      04                 = "04 Asian only"
      05                 = "05 Race group not releasable (See file layout)"
      06                 = "06 Multiple race"
   ;
   VALUE SAP016X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American), Alaska Native"
      09                 = "09 Asian Indian"
      10                 = "10 Chinese"
      11                 = "11 Filipino"
      15                 = "15 Other Asian (See file layout)"
      16                 = "16 Primary race not releasable (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE SAP017X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American) (includes Eskimo, Aleut)"
      06                 = "06 Chinese"
      07                 = "07 Filipino"
      12                 = "12 Asian Indian"
      16                 = "16 Other race (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE SAP018X
      00                 = "00 Under 1 year"
      85                 = "85 85+ years"
   ;
   VALUE SAP019X
      0                  = "0 Under 14 years"
      1                  = "1 Married - spouse in household"
      2                  = "2 Married - spouse not in household"
      3                  = "3 Married - spouse in household unknown"
      4                  = "4 Widowed"
      5                  = "5 Divorced"
      6                  = "6 Separated"
      7                  = "7 Never married"
      8                  = "8 Living with partner"
      9                  = "9 Unknown marital status"
   ;
   VALUE SAP020X
      1                  = "1 Physical or mental condition prohibits responding"
      2                  = "2 Sample adult is able to respond"
      3                  = "3 Unknown"
   ;
   VALUE SAP021X
      1                  = "1 Yes"
      2                  = "2 No"
   ;
   VALUE SAP022X
      1                  = "1 Relative who lives in household"
      2                  = "2 Relative who doesn't live in household"
      3                  = "3 Other caregiver"
      4                  = "4 Other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP023X
      1                  = 
"1 Started Sample Adult Core 2+ weeks after the initial interview"
      2                  = 
"2 Started Sample Adult Core less than 2 weeks after the initial interview"
   ;
   VALUE SAP024X
      1                  = 
"1 Families selected to receive AFD (sample adults) section"
      2                  = 
"2 Families selected to receive FDB (all persons 1 year and older) section"
   ;
   VALUE SAP025X
      1                  = "1 Working for pay at a job or business"
      2                  = "2 With a job or business but not at work"
      3                  = "3 Looking for work"
      4                  = 
"4 Working, but not for pay, at a family-owned job or business"
      5                  = 
"5 Not working at a job or business and not looking for work"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP026X
      01                 = "01 Taking care of house or family"
      02                 = "02 Going to school"
      03                 = "03 Retired"
      04                 = "04 On a planned vacation from work"
      05                 = "05 On family or maternity leave"
      06                 = "06 Temporarily unable to work for health reasons"
      07                 = "07 Have job or contract and off-season"
      08                 = "08 On layoff"
      09                 = "09 Disabled"
      10                 = "10 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP027X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP028X
      .                   = '.'
      OTHER              = 
"See Industry Appendix in file layout at the end of the Sample Adult Documentati
on"
   ;
   VALUE SAP030X
      .                   = '.'
      OTHER              = 
"See Occupation Appendix in file layout at the end of the Sample Adult documenta
tion"
   ;
   VALUE SAP032X
      1                  = "1 Employee of a PRIVATE company for wages"
      2                  = "2 A FEDERAL government employee"
      3                  = "3 A STATE government employee"
      4                  = "4 A LOCAL government employee"
      5                  = 
"5 Self-employed in OWN business, professional practice or farm"
      6                  = 
"6 Working WITHOUT PAY in a family-owned business or farm"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP034X
      01                 = "01 1-9 employees"
      02                 = "02 10-24 employees"
      03                 = "03 25-49 employees"
      04                 = "04 50-99 employees"
      05                 = "05 100-249 employees"
      06                 = "06 250-499 employees"
      07                 = "07 500-999 employees"
      08                 = "08 1000 employees or more"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP035X
      00                 = "00 Less than 1 year"
      35                 = "35 35 or more years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP040X
      0                  = "0 Had job last week"
      1                  = "1 No job last week, had job past 12 months"
      2                  = "2 No job last week, no job past 12 months"
      3                  = "3 Never worked"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP044X
      00                 = "00 Never"
      95                 = "95 95 or more"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP045X
      0                  = "0 Never"
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP046X
      1                  = "1 Not told"
      2                  = "2 High"
      3                  = "3 Normal"
      4                  = "4 Low"
      5                  = "5 Borderline"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP066X
      1                  = "1 Advise them to drive to the hospital"
      2                  = "2 Advise them to call their physician"
      3                  = "3 Call 9-1-1 (or another emergency number)"
      4                  = "4 Call spouse or family member"
      5                  = "5 Other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP085X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP116X
      85                 = "85 85+ years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP146X
      1                  = "1 Yes"
      2                  = "2 No"
      3                  = "3 Borderline"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP149X
      00                 = "00 Within past year"
      85                 = "85 85+ years"
      96                 = "96 1+ year(s) with diabetes and age is 85+"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP175X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP193X
      1                  = "1 Excellent"
      2                  = "2 Good"
      3                  = "3 A little trouble hearing"
      4                  = "4 Moderate trouble"
      5                  = "5 A lot of trouble"
      6                  = "6 Deaf"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP195X
      1                  = "1 The right ear"
      2                  = "2 The left ear"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP205X
      1                  = "1 Always"
      2                  = "2 Usually"
      3                  = "3 About half the time"
      4                  = "4 Seldom"
      5                  = "5 Never"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP208X
      01                 = "01 At birth"
      02                 = "02 0 to 2 years of age"
      03                 = "03 3 to 5 years of age"
      04                 = "04 6 to 11 years of age"
      05                 = "05 12 to 19 years of age"
      06                 = "06 20 to 29 years of age"
      07                 = "07 30 to 39 years of age"
      08                 = "08 40 to 49 years of age"
      09                 = "09 50 to 59 years of age"
      10                 = "10 60 to 69 years of age"
      11                 = "11 70 to 79 years of age"
      12                 = "12 80 or more years of age"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP209X
      01                 = 
"01 Present at birth because mother had infectious disease, for example, German 
measles (rubella), cytomegalovirus (CMV), toxoplasmosis, etc"
      02                 = "02 Present at birth for a genetic reason"
      03                 = 
"03 Present at birth for other reason, e.g., preterm birth (NOT genetic or infec
tious disease)"
      04                 = 
"04 After birth due to an infectious disease (measles, meningitis, mumps, etc.)"
      05                 = 
"05 Ear infections or otitis media, fluid in middle ear space, ear drum burst (p
erforation)"
      06                 = "06 Ear injury or head/neck trauma"
      07                 = "07 Ear surgery"
      08                 = 
"08 Medications/drugs, such as gentamicin (aminoglycosides), cisplatin (cancer d
rugs), antibiotics, anti-inflammatory drugs, diuretic"
      09                 = 
"09 Ear disease such as Meniere's disease or otosclerosis"
      10                 = 
"10 Brain tumor (acoustic neuroma/vestibular schwannoma, etc)"
      11                 = 
"11 Loud, brief noise from gunfire, hand grenade, IED, other blasts or explosion
s"
      12                 = 
"12 Sudden hearing loss, unexplained by loud, brief noise or other known causes"
      13                 = 
"13 Long term noise exposure from machinery, aircraft, power tools, loud music, 
appliances, personal stereos or MP3 players, hair dryers, etc"
      14                 = "14 Getting older/aging"
      15                 = "15 Some other cause"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP210X
      0                  = "0 Never"
      1                  = "1 In the past year"
      2                  = "2 1 to 2 years ago"
      3                  = "3 to 4 years ago"
      4                  = "4 5 to 9 years ago"
      5                  = "5 10 to 14 years ago"
      6                  = "6 15 or more years ago"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP215X
      01                 = "01 Less than 6 weeks"
      02                 = "02 6 weeks to 11 months"
      03                 = "03 1 to 2 years"
      04                 = "04 3 to 4 years"
      05                 = "05 5 to 9 years"
      06                 = "06 10 to 14 years"
      07                 = "07 15 years or more"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP216X
      0                  = "0 None"
      1                  = "1 Less than 1 hour a day"
      2                  = "2 1 to 3 hours a day"
      3                  = "3 4 to 7 hours a day"
      4                  = "4 8 or more hours per day"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP217X
      1                  = "1 Helped not at all"
      2                  = "2 Helped slightly"
      3                  = "3 Helped moderately"
      4                  = "4 Helped quite a lot"
      5                  = "5 Helped very much"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP248X
      1                  = "1 Almost always"
      2                  = "2 At least once a day"
      3                  = "3 At least once a week"
      4                  = "4 At least once a month"
      5                  = "5 Less frequently than once a month"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP249X
      01                 = "01 Less than 3 months"
      02                 = "02 3 to 11 months"
      03                 = "03 1 to 2 years"
      04                 = "04 3 to 4 years"
      05                 = "05 5 to 9 years"
      06                 = "06 10 to 14 years"
      07                 = "07 15 years or more"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP252X
      1                  = "1 No problem"
      2                  = "2 A small problem"
      3                  = "3 A moderate problem"
      4                  = "4 A big problem"
      5                  = "5 A very big problem"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP272X
      1                  = "1 Work"
      2                  = "2 Leisure"
      3                  = "3 Both work and leisure"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP273X
      1                  = "1 During the last 12 months"
      2                  = "2 Before the last 12 months"
      3                  = "3 Both during and before the last 12 months"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP274X
      1                  = "1 to less than 100 rounds"
      2                  = "2 100 to less than 1000 rounds"
      3                  = "3 1000 to less than 10,000 rounds"
      4                  = "4 10,000 rounds or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP276X
      1                  = "1 1 to less than 100 rounds"
      2                  = "2 100 to less than 1000 rounds"
      3                  = "3 1000 to less than 10,000 rounds"
      4                  = "4 10,000 to less than 50,000 rounds"
      5                  = "5 50,000 rounds or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP323X
      000                = "000 None"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP325X
      1                  = "1 Better"
      2                  = "2 Worse"
      3                  = "3 About the same"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP327X
      0                  = "0 Not at all difficult"
      1                  = "1 Only a little difficult"
      2                  = "2 Somewhat difficult"
      3                  = "3 Very difficult"
      4                  = "4 Can't do at all"
      6                  = "6 Do not do this activity"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP339X
      1                  = "1 Limited in any way"
      2                  = "2 Not limited in any way"
      3                  = "3 Unknown if limited"
   ;
   VALUE SAP376X
      95                 = "95 95+"
      96                 = "96 Since birth"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP377X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      6                  = "6 Since birth"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP378X
      00                 = "00 Less than 1 year"
      85                 = "85 85+ years"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP379X
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP380X
      1                  = "1 Chronic"
      2                  = "2 Not chronic"
      9                  = "9 Unknown if chronic"
   ;
   VALUE SAP556X
      1                  = 
"1 At least one condition causing functional limitation is chronic"
      2                  = "2 No condition causing functional limitation"
      9                  = 
"9 Unknown if any condition causing functional limitation is chronic"
   ;
   VALUE SAP557X
      0                  = 
"0 Not limited in any way (including unknown if limited)"
      1                  = "1 Limited; caused by at least one chronic condition"
      2                  = "2 Limited; not caused by chronic condition"
      3                  = "3 Limited; unknown if condition is chronic"
   ;
   VALUE SAP559X
      85                 = "85 85 years or older"
      96                 = "96 Never smoked regularly"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP560X
      1                  = "1 Every day"
      2                  = "2 Some days"
      3                  = "3 Not at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP561X
      1                  = "1 Current every day smoker"
      2                  = "2 Current some day smoker"
      3                  = "3 Former smoker"
      4                  = "4 Never smoker"
      5                  = "5 Smoker, current status unknown"
      9                  = "9 Unknown if ever smoked"
   ;
   VALUE SAP562X
      95                 = "95 95+"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP563X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP564X
      00                 = "00 Less than 1 year"
      70                 = "70 70+ years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP565X
      95                 = "95 95+ cigarettes"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP566X
      00                 = "00 None"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP571X
      1                  = "1 Every day"
      2                  = "2 Some days"
      3                  = "3 Rarely"
      4                  = "4 Not at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP578X
      000                = "000 Never"
      996                = "996 Unable to do this type activity"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP579X
      0                  = "0 Never"
      1                  = "1 Per day"
      2                  = "2 Per week"
      3                  = "3 Per month"
      4                  = "4 Per year"
      6                  = "6 Unable to do this activity"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP580X
      00                 = "00 Less than once per week"
      95                 = "95 Never"
      96                 = "96 Unable to do vigorous activity"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP581X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP582X
      1                  = "1 Minutes"
      2                  = "2 Hours"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP586X
      00                 = "00 Less than once per week"
      95                 = "95 Never"
      96                 = "96 Unable to do light or moderate activity"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP592X
      00                 = "00 Less than once per week"
      95                 = "95 Never"
      96                 = "96 Unable to do strength activity"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP595X
      000                = "000 Never"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP596X
      0                  = "0 Never/None"
      1                  = "1 Week"
      2                  = "2 Month"
      3                  = "3 Year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP597X
      00                 = "00 Less than one day per week"
      95                 = "95 Did not drink in past year"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP598X
      000                = "000 Never/none"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP599X
      95                 = "95 95+ drinks"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP600X
      01                 = "01 Lifetime abstainer"
      02                 = "02 Former infrequent"
      03                 = "03 Former regular"
      04                 = "04 Former, unknown frequency"
      05                 = "05 Current infrequent"
      06                 = "06 Current light"
      07                 = "07 Current moderate"
      08                 = "08 Current heavier"
      09                 = "09 Current drinker, frequency/level unknown"
      10                 = "10 Drinking status unknown"
   ;
   VALUE SAP602X
      0                  = "0 Never/None"
      1                  = "1 Per week"
      2                  = "2 Per month"
      3                  = "3 Per year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP604X
      96                 = "96 Not available"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP605X
      996                = "996 Not available"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP606X
      99.95              = "99.95 99.95+"
      99.99              = "99.99 Unknown"
   ;
   VALUE SAP607X
      1                  = "1 Yes"
      2                  = "2 There is NO place"
      3                  = "3 There is MORE THAN ONE place"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP608X
      1                  = "1 Clinic or health center"
      2                  = "2 Doctor's office or HMO"
      3                  = "3 Hospital emergency room"
      4                  = "4 Hospital outpatient department"
      5                  = "5 Some other place"
      6                  = "6 Doesn't go to one place most often"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP610X
      0                  = "0 Doesn't get preventive care anywhere"
      1                  = "1 Clinic or health center"
      2                  = "2 Doctor's office or HMO"
      3                  = "3 Hospital emergency room"
      4                  = "4 Hospital outpatient department"
      5                  = "5 Some other place"
      6                  = "6 Doesn't go to one place most often"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP613X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP623X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP637X
      1                  = "1 Very worried"
      2                  = "2 Somewhat worried"
      3                  = "3 Not at all worried"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP646X
      0                  = "0 Never"
      1                  = "1 6 months or less"
      2                  = "2 More than 6 mos, but not more than 1 yr ago"
      3                  = "3 More than 1 yr, but not more than 2 yrs ago"
      4                  = "4 More than 2 yrs, but not more than 5 yrs ago"
      5                  = "5 More than 5 years ago"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP657X
      00                 = "00 None"
      01                 = "01 1"
      02                 = "02 2-3"
      03                 = "03 4-5"
      04                 = "04 6-7"
      05                 = "05 8-9"
      06                 = "06 10-12"
      07                 = "07 13-15"
      08                 = "08 16 or more"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP670X
      01                 = "01 1"
      02                 = "02 2-3"
      03                 = "03 4-5"
      04                 = "04 6-7"
      05                 = "05 8-9"
      06                 = "06 10-12"
      07                 = "07 13-15"
      08                 = "08 16 or more"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP673X
      95                 = "95 95+ times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP675X
      1                  = "1 Clinic or health center"
      2                  = "2 Doctor's office or HMO"
      3                  = "3 Hospital emergency room"
      4                  = "4 Hospital outpatient department"
      5                  = "5 Urgent care center"
      6                  = "6 Some other place"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE $SAP680X
      OTHER              = "Verbatim response categorized"
      ' '                 = ' '
   ;
   VALUE SAP681X
      00                 = "00 Same day/walk-in appt/no appt made"
      96                 = 
"96 Routine appt/appt arranged on previous visit/rec'd appt reminder card"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP682X
      1                  = "1 Days"
      2                  = "2 Weeks"
      3                  = "3 Months"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP683X
      00                 = "00 No time"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don’t know"
   ;
   VALUE SAP684X
      1                  = "1 Minutes"
      2                  = "2 Hours"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP691X
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
   VALUE SAP692X
      .                   = '.'
      OTHER              = "Year"
      9997               = "9997 Refused"
      9998               = "9998 Not ascertained"
      9999               = "9999 Don't know"
   ;
   VALUE SAP693X
      1                  = "1 Before this pregnancy"
      2                  = "2 During this pregnancy"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP694X
      1                  = "1 Before this pregnancy"
      2                  = "2 During this pregnancy"
      3                  = "3 After this pregnancy"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP705X
      1                  = "1 Received at least 3 doses"
      2                  = "2 Received less than 3 doses"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP707X
      96                 = "96 Received all shots"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP709X
      1                  = 
"1 You or your doctor thought you were at risk of having hepatitis C because a b
lood test or symptoms like fatigue, nausea, stomach pain, yellowing of the eyes 
or skin indicated you might have liver disease"
      2                  = "2 You were born from 1945 through 1965"
      3                  = 
"3 You were at risk of hepatitis C infection due to exposure to blood on your jo
b, injection drug use or receipt of transfusion before 1992"
      4                  = "4 Some other reason"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP713X
      1                  = "1 Yes-included pertussis"
      2                  = "2 No-did not include pertussis"
      3                  = "3 Doctor did not say"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP714X
      1                  = "1 Yes"
      2                  = "2 No"
      3                  = "3 Doctor refused when asked"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP715X
      96                 = "96 All shots"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP730X
      1                  = "1 Very likely"
      2                  = "2 Somewhat likely"
      3                  = "3 Somewhat unlikely"
      4                  = "4 Very unlikely"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP738X
      1                  = "1 Self"
      2                  = "2 Someone else in family"
      3                  = "3 Both"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP739X
      1                  = "1 Very difficult"
      2                  = "2 Somewhat difficult"
      3                  = "3 Not at all difficult"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP740X
      1                  = "1 Very difficult"
      2                  = "2 Somewhat difficult"
      3                  = "3 Not at all difficult"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP750X
      1                  = "1 Never or almost never"
      2                  = "2 Some days"
      3                  = "3 Most days"
      4                  = "4 Every day"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP751X
      1                  = "1 Very satisfied"
      2                  = "2 Somewhat satisfied"
      3                  = "3 Somewhat dissatisfied"
      4                  = "4 Very dissatisfied"
      5                  = "5 You haven't had health care in the past 12 months"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP752X
      1                  = "1 Less than 1 year"
      2                  = "2 1-3 years"
      3                  = "3 4-10 years"
      4                  = "4 11-20 years"
      5                  = "5 More than 20 years"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP753X
      1                  = "1 Definitely agree"
      2                  = "2 Somewhat agree"
      3                  = "3 Somewhat disagree"
      4                  = "4 Definitely disagree"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP757X
      1                  = "1 Gay"
      2                  = "2 Straight, that is, not gay"
      3                  = "3 Bisexual"
      4                  = "4 Something else"
      5                  = "5 I don't know the answer"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
   ;
   VALUE SAP758X
      1                  = "1 Lesbian or gay"
      2                  = "2 Straight, that is, not lesbian or gay"
      3                  = "3 Bisexual"
      4                  = "4 Something else"
      5                  = "5 I don't know the answer"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
   ;
   VALUE SAP759X
      1                  = "1 Very worried"
      2                  = "2 Moderately worried"
      3                  = "3 Not too worried"
      4                  = "4 Not worried at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP763X
      1                  = "1 Very worried"
      2                  = "2 Moderately worried"
      3                  = "3 Not too worried"
      4                  = "4 Not worried at all"
      5                  = "5 This does not apply to me"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP766X
      1                  = "1 Very worried"
      2                  = "2 Moderately worried"
      3                  = "3 Not too worried"
      4                  = "4 Not worried at all"
      5                  = "5 I don't have credit cards"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP768X
      00                 = 
"00 Did not have trouble falling asleep in the past week"
      07                 = "07 7 or more times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP769X
      00                 = 
"00 Did not have trouble staying asleep in the past week"
      07                 = "07 7 or more times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP770X
      00                 = 
"00 Did not take medication to help sleep in the past week"
      07                 = "07 7 or more times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP771X
      00                 = "00 Never felt rested in the past week"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP772X
      1                  = "1 ALL of the time"
      2                  = "2 MOST of the time"
      3                  = "3 SOME of the time"
      4                  = "4 A LITTLE of the time"
      5                  = "5 NONE of the time"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP778X
      1                  = "1 A lot"
      2                  = "2 Some"
      3                  = "3 A little"
      4                  = "4 Not at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP780X
      01                 = "01 It's unlikely you've been exposed to HIV"
      02                 = 
"02 You were afraid to find out if you were HIV positive (that you had HIV)"
      03                 = 
"03 You didn't want to think about HIV or about being HIV positive"
      04                 = 
"04 You were worried your name would be reported to the government if you tested
 positive"
      05                 = "05 You didn't know where to get tested"
      06                 = "06 You don't like needles"
      07                 = 
"07 You were afraid of losing job, insurance, housing, friends, family, if peopl
e knew you were positive for AIDS infection"
      08                 = "08 Some other reason"
      09                 = "09 No particular reason"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP783X
      1                  = "1 Per day"
      2                  = "2 Per week"
      3                  = "3 Per month"
      4                  = "4 Per year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;

DATA NHIS.SAMADULT;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=1087;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE    3   SRVY_YR    4   HHX      $ 6   INTV_QRT   3
      INTV_MON   3   FMX      $ 2   FPX      $ 2   WTIA_SA    8
      WTFA_SA    8

      /* UCF LENGTHS */

      REGION     3   STRAT_P    4   PSU_P      3

      /* HHC LENGTHS */

      SEX        3   HISPAN_I   3   RACERPI2   3   MRACRPI2   3
      MRACBPI2   3   AGE_P      3

      /* FID LENGTHS */

      R_MARITL   3

      /* AID LENGTHS */

      PROXYSA    3   PROX1      3   PROX2      3   LATEINTA   3

      /* FDB LENGTHS */

      FDRN_FLG   3

      /* ASD LENGTHS */

      DOINGLWA   3   WHYNOWKA   3   EVERWRK    3   INDSTRN1   3
      INDSTRN2   3   OCCUPN1    3   OCCUPN2    3   WRKCATA    3
      BUSINC1A   3   LOCALL1A   3   YRSWRKPA   3   WRKLONGH   3
      HOURPDA    3   PDSICKA    3   ONEJOB     3   WRKLYR4    3

      /* ACN LENGTHS */

      HYPEV      3   HYPDIFV    3   HYPYR1     3   HYBPCKNO   3
      HYBPCKTP   3   HYBPLEV    3   HYPMDEV2   3   HYPMED2    3
      CHLEV      3   CHLYR      3   CLCKNO     3   CLCKTP     3
      CHLMDEV2   3   CHLMDNW2   3   CHDEV      3   ANGEV      3
      MIEV       3   HRTEV      3   STREV      3   EPHEV      3
      JAWP       3   WEA        3   CHE        3   ARM        3
      BRTH       3   AHADO      3   FACE       3   SPEAKING   3
      EYE        3   WALKING    3   HEADACHE   3   ASTDO      3
      COPDEV     3   ASPMEDEV   3   ASPMEDAD   3   ASPMDMED   3
      ASPONOWN   3   AASMEV     3   AASSTILL   3   AASMYR     3
      AASERYR1   3   ULCEV      3   ULCYR      3   CANEV      3
      CNKIND1    3   CNKIND2    3   CNKIND3    3   CNKIND4    3
      CNKIND5    3   CNKIND6    3   CNKIND7    3   CNKIND8    3
      CNKIND9    3   CNKIND10   3   CNKIND11   3   CNKIND12   3
      CNKIND13   3   CNKIND14   3   CNKIND15   3   CNKIND16   3
      CNKIND17   3   CNKIND18   3   CNKIND19   3   CNKIND20   3
      CNKIND21   3   CNKIND22   3   CNKIND23   3   CNKIND24   3
      CNKIND25   3   CNKIND26   3   CNKIND27   3   CNKIND28   3
      CNKIND29   3   CNKIND30   3   CNKIND31   3   CANAGE1    4
      CANAGE2    4   CANAGE3    4   CANAGE4    4   CANAGE5    4
      CANAGE6    4   CANAGE7    4   CANAGE8    4   CANAGE9    4
      CANAGE10   4   CANAGE11   4   CANAGE12   4   CANAGE13   4
      CANAGE14   4   CANAGE15   4   CANAGE16   4   CANAGE17   4
      CANAGE18   4   CANAGE19   4   CANAGE20   4   CANAGE21   4
      CANAGE22   4   CANAGE23   4   CANAGE24   4   CANAGE25   4
      CANAGE26   4   CANAGE27   4   CANAGE28   4   CANAGE29   4
      CANAGE30   4   DIBEV      3   DIBPRE1    3   DIBAGE     3
      DIFAGE2    3   INSLN      3   DIBPILL    3   AHAYFYR    3
      SINYR      3   CBRCHYR    3   KIDWKYR    3   LIVYR      3
      JNTSYMP    3   JMTHP1     3   JMTHP2     3   JMTHP3     3
      JMTHP4     3   JMTHP5     3   JMTHP6     3   JMTHP7     3
      JMTHP8     3   JMTHP9     3   JMTHP10    3   JMTHP11    3
      JMTHP12    3   JMTHP13    3   JMTHP14    3   JMTHP15    3
      JMTHP16    3   JMTHP17    3   JNTPN      3   JNTCHR     3
      JNTHP      3   ARTH1      3   ARTHWT     3   ARTHPH     3
      ARTHCLS    3   ARTHLMT    3   ARTHWRK    3   PAINECK    3
      PAINLB     3   PAINLEG    3   PAINFACE   3   AMIGR      3
      ACOLD2W    3   AINTIL2W   3   PREGNOW    3   PREGFLYR   3
      AHEARST2   3   HRWORS     3   HRWHICH    3   HRRIGHT    3
      HRLEFT     3   HRWHISP1   3   HRTALK1    3   HRSHOUT1   3
      HRSPEAK1   3   HRCOCRE1   3   HRCOCIM1   3   HRFAM      3
      HRBACK     3   HRFRUST    3   HRSAFETY   3   HEARAGE1   3
      HRCAUS1    3   HRPROBHP   3   HRENT      3   HRAUD      3
      HRTEST     3   HRAIDNOW   3   HRAIDLNG   3   HRAID2WK   3
      HRAIDHLP   3   HRAIDEV    3   HRAIDREC   3   HRAIDLGP   3
      HRAIDOF2   3   HRAIDN01   3   HRAIDN02   3   HRAIDN03   3
      HRAIDN04   3   HRAIDN05   3   HRAIDN06   3   HRAIDN07   3
      HRAIDN08   3   HRAIDN09   3   HRAIDN10   3   HRAIDN11   3
      HRAUDTRN   3   HRALDS     3   HRALDT01   3   HRALDT02   3
      HRALDT03   3   HRALDT04   3   HRALDT05   3   HRALDT06   3
      HRALDT07   3   HRALDT08   3   HRALDT09   3   HRALDT10   3
      HRALDT11   3   HRBDIZZ    3   HRTIN      3   HRTINOFT   3
      HRTINLNG   3   HRTINMUS   3   HRTINSLP   3   HRTINPRO   3
      HRTINDIS   3   HRTINDOC   3   HRTINRM    3   HREMTY01   3
      HREMTY02   3   HREMTY03   3   HREMTY04   3   HREMTY05   3
      HREMTY06   3   HREMTY07   3   HREMTY08   3   HREMTY09   3
      HREMTY10   3   HREMTY11   3   HREMTY12   3   HRTNRMHP   3
      HRHCUSIS   3   HRHCPROB   3   HRFIRE     3   HRFIRTYP   3
      HRFRTIM    3   HR12MR     3   HRFRPROT   3   HRTOTR     3
      HRFRPRT2   3   HRWKVLNS   3   HRWKLNS    3   HRWKVLNT   3
      HRWKVLEX   3   HRWKVLP1   3   HRWKVLP2   3   HRWRLNS    3
      HRWKLEX    3   HRWKLP1    3   HRWKLP2    3   HRLSVLNS   3
      HRVLTP01   3   HRVLTP02   3   HRVLTP03   3   HRVLTP04   3
      HRVLTP05   3   HRVLTP06   3   HRVLTP07   3   HRVLTP08   3
      HRVLTP09   3   HRVLTP10   3   HRLNOS     3   HRLTP01    3
      HRLTP02    3   HRLTP03    3   HRLTP04    3   HRLTP05    3
      HRLTP06    3   HRLTP07    3   HRLTP08    3   HRLTP09    3
      HRLTP10    3   HRNOSEXP   3   HRLSP1     3   HRLSP2     3
      HRINTNET   3   HRINTHL    3   HRINTHA    3   HRINTTN    3
      HRINTDZ    3   HRINTHP    3   HRINTHPR   3   AVISION    3
      ABLIND     3   LUPPRT     3

      /* AHS LENGTHS */

      WKDAYR     4   BEDDAYR    4   AHSTATYR   3   SPECEQ     3
      FLWALK     3   FLCLIMB    3   FLSTAND    3   FLSIT      3
      FLSTOOP    3   FLREACH    3   FLGRASP    3   FLCARRY    3
      FLPUSH     3   FLSHOP     3   FLSOCL     3   FLRELAX    3
      FLA1AR     3   AFLHCA1    3   AFLHCA2    3   AFLHCA3    3
      AFLHCA4    3   AFLHCA5    3   AFLHCA6    3   AFLHCA7    3
      AFLHCA8    3   AFLHCA9    3   AFLHCA10   3   AFLHCA11   3
      AFLHCA12   3   AFLHCA13   3   ALHCA14A   3   AFLHCA15   3
      AFLHCA16   3   AFLHCA17   3   AFLHCA18   3   AFLHC19_   3
      AFLHC20_   3   AFLHC21_   3   AFLHC22_   3   AFLHC23_   3
      AFLHC24_   3   AFLHC25_   3   AFLHC26_   3   AFLHC27_   3
      AFLHC28_   3   AFLHC29_   3   AFLHC30_   3   AFLHC31_   3
      AFLHC32_   3   AFLHC33_   3   AFLHC34_   3   AFLHCA90   3
      AFLHCA91   3   ALTIME1    3   ALUNIT1    3   ALDURA1    3
      ALDURB1    3   ALCHRC1    3   ALTIME2    3   ALUNIT2    3
      ALDURA2    3   ALDURB2    3   ALCHRC2    3   ALTIME3    3
      ALUNIT3    3   ALDURA3    3   ALDURB3    3   ALCHRC3    3
      ALTIME4    3   ALUNIT4    3   ALDURA4    3   ALDURB4    3
      ALCHRC4    3   ALTIME5    3   ALUNIT5    3   ALDURA5    3
      ALDURB5    3   ALCHRC5    3   ALTIME6    3   ALUNIT6    3
      ALDURA6    3   ALDURB6    3   ALCHRC6    3   ALTIME7    3
      ALUNIT7    3   ALDURA7    3   ALDURB7    3   ALCHRC7    3
      ALTIME8    3   ALUNIT8    3   ALDURA8    3   ALDURB8    3
      ALCHRC8    3   ALTIME9    3   ALUNIT9    3   ALDURA9    3
      ALDURB9    3   ALCHRC9    3   ALTIME10   3   ALUNIT10   3
      ALDURA10   3   ALDURB10   3   ALCHRC10   3   ALTIME11   3
      ALUNIT11   3   ALDURA11   3   ALDURB11   3   ALCHRC11   3
      ALTIME12   3   ALUNIT12   3   ALDURA12   3   ALDURB12   3
      ALCHRC12   3   ALTIME13   3   ALUNIT13   3   ALDURA13   3
      ALDURB13   3   ALCHRC13   3   ATIME14A   3   AUNIT14A   3
      ADURA14A   3   ADURB14A   3   ACHRC14A   3   ALTIME15   3
      ALUNIT15   3   ALDURA15   3   ALDURB15   3   ALCHRC15   3
      ALTIME16   3   ALUNIT16   3   ALDURA16   3   ALDURB16   3
      ALCHRC16   3   ALTIME17   3   ALUNIT17   3   ALDURA17   3
      ALDURB17   3   ALCHRC17   3   ALTIME18   3   ALUNIT18   3
      ALDURA18   3   ALDURB18   3   ALCHRC18   3   ALTIME19   3
      ALUNIT19   3   ALDURA19   3   ALDURB19   3   ALCHRC19   3
      ALTIME20   3   ALUNIT20   3   ALDURA20   3   ALDURB20   3
      ALCHRC20   3   ALTIME21   3   ALUNIT21   3   ALDURA21   3
      ALDURB21   3   ALCHRC21   3   ALTIME22   3   ALUNIT22   3
      ALDURA22   3   ALDURB22   3   ALCHRC22   3   ALTIME23   3
      ALUNIT23   3   ALDURA23   3   ALDURB23   3   ALCHRC23   3
      ALTIME24   3   ALUNIT24   3   ALDURA24   3   ALDURB24   3
      ALCHRC24   3   ALTIME25   3   ALUNIT25   3   ALDURA25   3
      ALDURB25   3   ALCHRC25   3   ALTIME26   3   ALUNIT26   3
      ALDURA26   3   ALDURB26   3   ALCHRC26   3   ALTIME27   3
      ALUNIT27   3   ALDURA27   3   ALDURB27   3   ALCHRC27   3
      ALTIME28   3   ALUNIT28   3   ALDURA28   3   ALDURB28   3
      ALCHRC28   3   ALTIME29   3   ALUNIT29   3   ALDURA29   3
      ALDURB29   3   ALCHRC29   3   ALTIME30   3   ALUNIT30   3
      ALDURA30   3   ALDURB30   3   ALCHRC30   3   ALTIME31   3
      ALUNIT31   3   ALDURA31   3   ALDURB31   3   ALCHRC31   3
      ALTIME32   3   ALUNIT32   3   ALDURA32   3   ALDURB32   3
      ALCHRC32   3   ALTIME33   3   ALUNIT33   3   ALDURA33   3
      ALDURB33   3   ALCHRC33   3   ALTIME34   3   ALUNIT34   3
      ALDURA34   3   ALDURB34   3   ALCHRC34   3   ALTIME90   3
      ALUNIT90   3   ALDURA90   3   ALDURB90   3   ALCHRC90   3
      ALTIME91   3   ALUNIT91   3   ALDURA91   3   ALDURB91   3
      ALCHRC91   3   ALCNDRT    3   ALCHRONR   3

      /* AHB LENGTHS */

      SMKEV      3   SMKREG     3   SMKNOW     3   SMKSTAT2   3
      SMKQTNO    3   SMKQTTP    3   SMKQTY     3   CIGSDA1    3
      CIGDAMO    3   CIGSDA2    3   CIGSDAY    3   CIGQTYR    3
      OTHCIGEV   3   OTHCIGED   3   SMKLESEV   3   SMKLESED   3
      TOBLASYR   3   TOBQTYR    3   ECIGEV     3   ECIGED     3
      VIGNO      4   VIGTP      3   VIGFREQW   3   VIGLNGNO   4
      VIGLNGTP   3   VIGMIN     4   MODNO      4   MODTP      3
      MODFREQW   3   MODLNGNO   4   MODLNGTP   3   MODMIN     4
      STRNGNO    4   STRNGTP    3   STRFREQW   3   ALC1YR     3
      ALCLIFE    3   ALC12MNO   4   ALC12MTP   3   ALC12MWK   3
      ALC12MYR   4   ALCAMT     3   ALCSTAT    3   ALC5UPN1   4
      ALC5UPT1   3   ALC5UPY1   4   AHEIGHT    3   AWEIGHTP   4
      BMI        8

      /* AAU LENGTHS */

      AUSUALPL   3   APLKIND    3   AHCPLROU   3   AHCPLKND   3
      AHCCHGYR   3   AHCCHGHI   3   ANOUSPL1   3   ANOUSPL2   3
      ANOUSPL3   3   ANOUSPL4   3   ANOUSPL5   3   ANOUSPL6   3
      ANOUSPL7   3   ANOUSPL8   3   ANOUSPL9   3   APRVTRYR   3
      APRVTRFD   3   ADRNANP    3   ADRNAI     3   AHCDLYR1   3
      AHCDLYR2   3   AHCDLYR3   3   AHCDLYR4   3   AHCDLYR5   3
      AHCAFYR1   3   AHCAFYR2   3   AHCAFYR3   3   AHCAFYR4   3
      AHCAFYR5   3   AHCAFYR6   3   AWORPAY    3   AHICOMP    3
      ARX12MO    3   ARX12_1    3   ARX12_2    3   ARX12_3    3
      ARX12_4    3   ARX12_5    3   ARX12_6    3   ADNLONG2   3
      AHCSYR1    3   AHCSYR2    3   AHCSYR3    3   AHCSYR4    3
      AHCSYR5    3   AHCSYR6    3   AHCSYR7    3   AHCSYR8    3
      AHCSYR9    3   AHCSYR10   3   AHERNOY2   3   AERVISND   3
      AERHOS     3   AERREA1R   3   AERREA2R   3   AERREA3R   3
      AERREA4R   3   AERREA5R   3   AERREA6R   3   AERREA7R   3
      AERREA8R   3   AHCHYR     3   AHCHMOYR   3   AHCHNOY2   3
      AHCNOYR2   3   ASRGYR     3   ASRGNOYR   3   AMDLONGR   3
      AVISLAST   3   ALASTYP1   3   ALASTYP2   3   ALASTYP3   3
      ALASTYP4   3   ALASTVRB $ 45  AVISAPN2   3   AVISAPT2   3
      AWAITRMN   3   AWAITRMT   3   HIT1A      3   HIT2A      3
      HIT3A      3   HIT4A      3   HIT5A      3   SHTFLU2    3
      ASHFLUM2   3   ASHFLUY2   4   FLUSHPG1   3   FLUSHPG2   3
      SPRFLU2    3   ASPFLUM2   3   ASPFLUY2   4   SHTPNUYR   3
      APOX       3   APOX12MO   3   AHEP       3   AHEPLIV    3
      AHEPBTST   3   SHTHEPB    3   SHEPDOS    3   SHTHEPA    3
      SHEPANUM   3   AHEPCTST   3   AHEPCRES   3   SHINGLES   3
      SHTTD      3   SHTTD05    3   SHTTDAP2   3   SHTHPV2    3
      SHHPVDOS   3   AHPVAGE    4   LIVEV      3   TRAVEL     3
      WRKHLTH2   3   WRKDIR     3   APSBPCH1   3   APSCHCH1   3
      APSBSCH1   3   APSPAP     3   APSMAM     3   APSCOL     3
      APSDIET    3   APSSMKC    3   LTCFAM     3   LTCHELP    3
      LTCWHO1    3   LTCWHO2    3   LTCWHO3    3   LTCWHO4    3
      LTCWHO5    3   AINDINS    3   AINDPRCH   3   AINDWHO    3
      AINDDIF1   3   AINDDIF2   3   AINDENY1   3   AINDENY2   3
      AINDENY3   3   AINDNOT1   3   AINDNOT2   3   AINDNOT3   3
      AINDNOT4   3   AINDNOT5   3   AEXCHNG    3

      /* ASI LENGTHS */

      ASICPUSE   3   ASISATHC   3   ASITENUR   3   ASINHELP   3
      ASINCNTO   3   ASINTRU    3   ASINKNT    3   ASISIM     3
      ASISIF     3   ASIRETR    3   ASIMEDC    3   ASISTLV    3
      ASICNHC    3   ASICCOLL   3   ASINBILL   3   ASIHCST    3
      ASICCMP    3   ASISLEEP   3   ASISLPFL   3   ASISLPST   3
      ASISLPMD   3   ASIREST    3   ASISAD     3   ASINERV    3
      ASIRSTLS   3   ASIHOPLS   3   ASIEFFRT   3   ASIWTHLS   3
      ASIMUCH    3   ASIHIVT    3   ASIHIVWN   3

      /* AWB LENGTHS */

      AWEBUSE    3   AWEBOFNO   4   AWEBOFTP   3   AWEBORP    3
      AWEBEML    3   AWEBMNO    4   AWEBMTP    3 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    INTV_QRT     13 -  13
      INTV_MON     14 -  15    FMX      $   16 -  17
      FPX      $   18 -  19    WTIA_SA      20 -  26 .1
      WTFA_SA      27 -  32

      /* UCF LOCATIONS */

      REGION       33 -  33    STRAT_P      34 -  36
      PSU_P        37 -  38

      /* HHC LOCATIONS */

      SEX          39 -  39    HISPAN_I     40 -  41
      RACERPI2     42 -  43    MRACRPI2     44 -  45
      MRACBPI2     46 -  47    AGE_P        48 -  49


      /* FID LOCATIONS */

      R_MARITL     50 -  50

      /* AID LOCATIONS */

      PROXYSA      51 -  51    PROX1        52 -  52
      PROX2        53 -  53    LATEINTA     54 -  54


      /* FDB LOCATIONS */

      FDRN_FLG     55 -  55

      /* ASD LOCATIONS */

      DOINGLWA     56 -  56    WHYNOWKA     57 -  58
      EVERWRK      59 -  59    INDSTRN1     60 -  61
      INDSTRN2     62 -  63    OCCUPN1      64 -  65
      OCCUPN2      66 -  67    WRKCATA      68 -  68
      BUSINC1A     69 -  69    LOCALL1A     70 -  71
      YRSWRKPA     72 -  73    WRKLONGH     74 -  74
      HOURPDA      75 -  75    PDSICKA      76 -  76
      ONEJOB       77 -  77    WRKLYR4      78 -  78


      /* ACN LOCATIONS */

      HYPEV        79 -  79    HYPDIFV      80 -  80
      HYPYR1       81 -  81    HYBPCKNO     82 -  83
      HYBPCKTP     84 -  84    HYBPLEV      85 -  85
      HYPMDEV2     86 -  86    HYPMED2      87 -  87
      CHLEV        88 -  88    CHLYR        89 -  89
      CLCKNO       90 -  91    CLCKTP       92 -  92
      CHLMDEV2     93 -  93    CHLMDNW2     94 -  94
      CHDEV        95 -  95    ANGEV        96 -  96
      MIEV         97 -  97    HRTEV        98 -  98
      STREV        99 -  99    EPHEV       100 - 100
      JAWP        101 - 101    WEA         102 - 102
      CHE         103 - 103    ARM         104 - 104
      BRTH        105 - 105    AHADO       106 - 106
      FACE        107 - 107    SPEAKING    108 - 108
      EYE         109 - 109    WALKING     110 - 110
      HEADACHE    111 - 111    ASTDO       112 - 112
      COPDEV      113 - 113    ASPMEDEV    114 - 114
      ASPMEDAD    115 - 115    ASPMDMED    116 - 116
      ASPONOWN    117 - 117    AASMEV      118 - 118
      AASSTILL    119 - 119    AASMYR      120 - 120
      AASERYR1    121 - 121    ULCEV       122 - 122
      ULCYR       123 - 123    CANEV       124 - 124
      CNKIND1     125 - 125    CNKIND2     126 - 126
      CNKIND3     127 - 127    CNKIND4     128 - 128
      CNKIND5     129 - 129    CNKIND6     130 - 130
      CNKIND7     131 - 131    CNKIND8     132 - 132
      CNKIND9     133 - 133    CNKIND10    134 - 134
      CNKIND11    135 - 135    CNKIND12    136 - 136
      CNKIND13    137 - 137    CNKIND14    138 - 138
      CNKIND15    139 - 139    CNKIND16    140 - 140
      CNKIND17    141 - 141    CNKIND18    142 - 142
      CNKIND19    143 - 143    CNKIND20    144 - 144
      CNKIND21    145 - 145    CNKIND22    146 - 146
      CNKIND23    147 - 147    CNKIND24    148 - 148
      CNKIND25    149 - 149    CNKIND26    150 - 150
      CNKIND27    151 - 151    CNKIND28    152 - 152
      CNKIND29    153 - 153    CNKIND30    154 - 154
      CNKIND31    155 - 155    CANAGE1     156 - 158
      CANAGE2     159 - 161    CANAGE3     162 - 164
      CANAGE4     165 - 167    CANAGE5     168 - 170
      CANAGE6     171 - 173    CANAGE7     174 - 176
      CANAGE8     177 - 179    CANAGE9     180 - 182
      CANAGE10    183 - 185    CANAGE11    186 - 188
      CANAGE12    189 - 191    CANAGE13    192 - 194
      CANAGE14    195 - 197    CANAGE15    198 - 200
      CANAGE16    201 - 203    CANAGE17    204 - 206
      CANAGE18    207 - 209    CANAGE19    210 - 212
      CANAGE20    213 - 215    CANAGE21    216 - 218
      CANAGE22    219 - 221    CANAGE23    222 - 224
      CANAGE24    225 - 227    CANAGE25    228 - 230
      CANAGE26    231 - 233    CANAGE27    234 - 236
      CANAGE28    237 - 239    CANAGE29    240 - 242
      CANAGE30    243 - 245    DIBEV       246 - 246
      DIBPRE1     247 - 247    DIBAGE      248 - 249
      DIFAGE2     250 - 251    INSLN       252 - 252
      DIBPILL     253 - 253    AHAYFYR     254 - 254
      SINYR       255 - 255    CBRCHYR     256 - 256
      KIDWKYR     257 - 257    LIVYR       258 - 258
      JNTSYMP     259 - 259    JMTHP1      260 - 260
      JMTHP2      261 - 261    JMTHP3      262 - 262
      JMTHP4      263 - 263    JMTHP5      264 - 264
      JMTHP6      265 - 265    JMTHP7      266 - 266
      JMTHP8      267 - 267    JMTHP9      268 - 268
      JMTHP10     269 - 269    JMTHP11     270 - 270
      JMTHP12     271 - 271    JMTHP13     272 - 272
      JMTHP14     273 - 273    JMTHP15     274 - 274
      JMTHP16     275 - 275    JMTHP17     276 - 276
      JNTPN       277 - 278    JNTCHR      279 - 279
      JNTHP       280 - 280    ARTH1       281 - 281
      ARTHWT      282 - 282    ARTHPH      283 - 283
      ARTHCLS     284 - 284    ARTHLMT     285 - 285
      ARTHWRK     286 - 286    PAINECK     287 - 287
      PAINLB      288 - 288    PAINLEG     289 - 289
      PAINFACE    290 - 290    AMIGR       291 - 291
      ACOLD2W     292 - 292    AINTIL2W    293 - 293
      PREGNOW     294 - 294    PREGFLYR    295 - 295
      AHEARST2    296 - 296    HRWORS      297 - 297
      HRWHICH     298 - 298    HRRIGHT     299 - 299
      HRLEFT      300 - 300    HRWHISP1    301 - 301
      HRTALK1     302 - 302    HRSHOUT1    303 - 303
      HRSPEAK1    304 - 304    HRCOCRE1    305 - 305
      HRCOCIM1    306 - 306    HRFAM       307 - 307
      HRBACK      308 - 308    HRFRUST     309 - 309
      HRSAFETY    310 - 310    HEARAGE1    311 - 312
      HRCAUS1     313 - 314    HRPROBHP    315 - 315
      HRENT       316 - 316    HRAUD       317 - 317
      HRTEST      318 - 318    HRAIDNOW    319 - 319
      HRAIDLNG    320 - 321    HRAID2WK    322 - 322
      HRAIDHLP    323 - 323    HRAIDEV     324 - 324
      HRAIDREC    325 - 325    HRAIDLGP    326 - 327
      HRAIDOF2    328 - 328    HRAIDN01    329 - 329
      HRAIDN02    330 - 330    HRAIDN03    331 - 331
      HRAIDN04    332 - 332    HRAIDN05    333 - 333
      HRAIDN06    334 - 334    HRAIDN07    335 - 335
      HRAIDN08    336 - 336    HRAIDN09    337 - 337
      HRAIDN10    338 - 338    HRAIDN11    339 - 339
      HRAUDTRN    340 - 340    HRALDS      341 - 341
      HRALDT01    342 - 342    HRALDT02    343 - 343
      HRALDT03    344 - 344    HRALDT04    345 - 345
      HRALDT05    346 - 346    HRALDT06    347 - 347
      HRALDT07    348 - 348    HRALDT08    349 - 349
      HRALDT09    350 - 350    HRALDT10    351 - 351
      HRALDT11    352 - 352    HRBDIZZ     353 - 353
      HRTIN       354 - 354    HRTINOFT    355 - 355
      HRTINLNG    356 - 357    HRTINMUS    358 - 358
      HRTINSLP    359 - 359    HRTINPRO    360 - 360
      HRTINDIS    361 - 361    HRTINDOC    362 - 362
      HRTINRM     363 - 363    HREMTY01    364 - 364
      HREMTY02    365 - 365    HREMTY03    366 - 366
      HREMTY04    367 - 367    HREMTY05    368 - 368
      HREMTY06    369 - 369    HREMTY07    370 - 370
      HREMTY08    371 - 371    HREMTY09    372 - 372
      HREMTY10    373 - 373    HREMTY11    374 - 374
      HREMTY12    375 - 375    HRTNRMHP    376 - 376
      HRHCUSIS    377 - 377    HRHCPROB    378 - 378
      HRFIRE      379 - 379    HRFIRTYP    380 - 380
      HRFRTIM     381 - 381    HR12MR      382 - 382
      HRFRPROT    383 - 383    HRTOTR      384 - 384
      HRFRPRT2    385 - 385    HRWKVLNS    386 - 386
      HRWKLNS     387 - 387    HRWKVLNT    388 - 389
      HRWKVLEX    390 - 390    HRWKVLP1    391 - 391
      HRWKVLP2    392 - 392    HRWRLNS     393 - 394
      HRWKLEX     395 - 395    HRWKLP1     396 - 396
      HRWKLP2     397 - 397    HRLSVLNS    398 - 398
      HRVLTP01    399 - 399    HRVLTP02    400 - 400
      HRVLTP03    401 - 401    HRVLTP04    402 - 402
      HRVLTP05    403 - 403    HRVLTP06    404 - 404
      HRVLTP07    405 - 405    HRVLTP08    406 - 406
      HRVLTP09    407 - 407    HRVLTP10    408 - 408
      HRLNOS      409 - 409    HRLTP01     410 - 410
      HRLTP02     411 - 411    HRLTP03     412 - 412
      HRLTP04     413 - 413    HRLTP05     414 - 414
      HRLTP06     415 - 415    HRLTP07     416 - 416
      HRLTP08     417 - 417    HRLTP09     418 - 418
      HRLTP10     419 - 419    HRNOSEXP    420 - 420
      HRLSP1      421 - 421    HRLSP2      422 - 422
      HRINTNET    423 - 423    HRINTHL     424 - 424
      HRINTHA     425 - 425    HRINTTN     426 - 426
      HRINTDZ     427 - 427    HRINTHP     428 - 428
      HRINTHPR    429 - 429    AVISION     430 - 430
      ABLIND      431 - 431    LUPPRT      432 - 432


      /* AHS LOCATIONS */

      WKDAYR      433 - 435    BEDDAYR     436 - 438
      AHSTATYR    439 - 439    SPECEQ      440 - 440
      FLWALK      441 - 441    FLCLIMB     442 - 442
      FLSTAND     443 - 443    FLSIT       444 - 444
      FLSTOOP     445 - 445    FLREACH     446 - 446
      FLGRASP     447 - 447    FLCARRY     448 - 448
      FLPUSH      449 - 449    FLSHOP      450 - 450
      FLSOCL      451 - 451    FLRELAX     452 - 452
      FLA1AR      453 - 453    AFLHCA1     454 - 454
      AFLHCA2     455 - 455    AFLHCA3     456 - 456
      AFLHCA4     457 - 457    AFLHCA5     458 - 458
      AFLHCA6     459 - 459    AFLHCA7     460 - 460
      AFLHCA8     461 - 461    AFLHCA9     462 - 462
      AFLHCA10    463 - 463    AFLHCA11    464 - 464
      AFLHCA12    465 - 465    AFLHCA13    466 - 466
      ALHCA14A    467 - 467    AFLHCA15    468 - 468
      AFLHCA16    469 - 469    AFLHCA17    470 - 470
      AFLHCA18    471 - 471    AFLHC19_    472 - 472
      AFLHC20_    473 - 473    AFLHC21_    474 - 474
      AFLHC22_    475 - 475    AFLHC23_    476 - 476
      AFLHC24_    477 - 477    AFLHC25_    478 - 478
      AFLHC26_    479 - 479    AFLHC27_    480 - 480
      AFLHC28_    481 - 481    AFLHC29_    482 - 482
      AFLHC30_    483 - 483    AFLHC31_    484 - 484
      AFLHC32_    485 - 485    AFLHC33_    486 - 486
      AFLHC34_    487 - 487    AFLHCA90    488 - 488
      AFLHCA91    489 - 489    ALTIME1     490 - 491
      ALUNIT1     492 - 492    ALDURA1     493 - 494
      ALDURB1     495 - 495    ALCHRC1     496 - 496
      ALTIME2     497 - 498    ALUNIT2     499 - 499
      ALDURA2     500 - 501    ALDURB2     502 - 502
      ALCHRC2     503 - 503    ALTIME3     504 - 505
      ALUNIT3     506 - 506    ALDURA3     507 - 508
      ALDURB3     509 - 509    ALCHRC3     510 - 510
      ALTIME4     511 - 512    ALUNIT4     513 - 513
      ALDURA4     514 - 515    ALDURB4     516 - 516
      ALCHRC4     517 - 517    ALTIME5     518 - 519
      ALUNIT5     520 - 520    ALDURA5     521 - 522
      ALDURB5     523 - 523    ALCHRC5     524 - 524
      ALTIME6     525 - 526    ALUNIT6     527 - 527
      ALDURA6     528 - 529    ALDURB6     530 - 530
      ALCHRC6     531 - 531    ALTIME7     532 - 533
      ALUNIT7     534 - 534    ALDURA7     535 - 536
      ALDURB7     537 - 537    ALCHRC7     538 - 538
      ALTIME8     539 - 540    ALUNIT8     541 - 541
      ALDURA8     542 - 543    ALDURB8     544 - 544
      ALCHRC8     545 - 545    ALTIME9     546 - 547
      ALUNIT9     548 - 548    ALDURA9     549 - 550
      ALDURB9     551 - 551    ALCHRC9     552 - 552
      ALTIME10    553 - 554    ALUNIT10    555 - 555
      ALDURA10    556 - 557    ALDURB10    558 - 558
      ALCHRC10    559 - 559    ALTIME11    560 - 561
      ALUNIT11    562 - 562    ALDURA11    563 - 564
      ALDURB11    565 - 565    ALCHRC11    566 - 566
      ALTIME12    567 - 568    ALUNIT12    569 - 569
      ALDURA12    570 - 571    ALDURB12    572 - 572
      ALCHRC12    573 - 573    ALTIME13    574 - 575
      ALUNIT13    576 - 576    ALDURA13    577 - 578
      ALDURB13    579 - 579    ALCHRC13    580 - 580
      ATIME14A    581 - 582    AUNIT14A    583 - 583
      ADURA14A    584 - 585    ADURB14A    586 - 586
      ACHRC14A    587 - 587    ALTIME15    588 - 589
      ALUNIT15    590 - 590    ALDURA15    591 - 592
      ALDURB15    593 - 593    ALCHRC15    594 - 594
      ALTIME16    595 - 596    ALUNIT16    597 - 597
      ALDURA16    598 - 599    ALDURB16    600 - 600
      ALCHRC16    601 - 601    ALTIME17    602 - 603
      ALUNIT17    604 - 604    ALDURA17    605 - 606
      ALDURB17    607 - 607    ALCHRC17    608 - 608
      ALTIME18    609 - 610    ALUNIT18    611 - 611
      ALDURA18    612 - 613    ALDURB18    614 - 614
      ALCHRC18    615 - 615    ALTIME19    616 - 617
      ALUNIT19    618 - 618    ALDURA19    619 - 620
      ALDURB19    621 - 621    ALCHRC19    622 - 622
      ALTIME20    623 - 624    ALUNIT20    625 - 625
      ALDURA20    626 - 627    ALDURB20    628 - 628
      ALCHRC20    629 - 629    ALTIME21    630 - 631
      ALUNIT21    632 - 632    ALDURA21    633 - 634
      ALDURB21    635 - 635    ALCHRC21    636 - 636
      ALTIME22    637 - 638    ALUNIT22    639 - 639
      ALDURA22    640 - 641    ALDURB22    642 - 642
      ALCHRC22    643 - 643    ALTIME23    644 - 645
      ALUNIT23    646 - 646    ALDURA23    647 - 648
      ALDURB23    649 - 649    ALCHRC23    650 - 650
      ALTIME24    651 - 652    ALUNIT24    653 - 653
      ALDURA24    654 - 655    ALDURB24    656 - 656
      ALCHRC24    657 - 657    ALTIME25    658 - 659
      ALUNIT25    660 - 660    ALDURA25    661 - 662
      ALDURB25    663 - 663    ALCHRC25    664 - 664
      ALTIME26    665 - 666    ALUNIT26    667 - 667
      ALDURA26    668 - 669    ALDURB26    670 - 670
      ALCHRC26    671 - 671    ALTIME27    672 - 673
      ALUNIT27    674 - 674    ALDURA27    675 - 676
      ALDURB27    677 - 677    ALCHRC27    678 - 678
      ALTIME28    679 - 680    ALUNIT28    681 - 681
      ALDURA28    682 - 683    ALDURB28    684 - 684
      ALCHRC28    685 - 685    ALTIME29    686 - 687
      ALUNIT29    688 - 688    ALDURA29    689 - 690
      ALDURB29    691 - 691    ALCHRC29    692 - 692
      ALTIME30    693 - 694    ALUNIT30    695 - 695
      ALDURA30    696 - 697    ALDURB30    698 - 698
      ALCHRC30    699 - 699    ALTIME31    700 - 701
      ALUNIT31    702 - 702    ALDURA31    703 - 704
      ALDURB31    705 - 705    ALCHRC31    706 - 706
      ALTIME32    707 - 708    ALUNIT32    709 - 709
      ALDURA32    710 - 711    ALDURB32    712 - 712
      ALCHRC32    713 - 713    ALTIME33    714 - 715
      ALUNIT33    716 - 716    ALDURA33    717 - 718
      ALDURB33    719 - 719    ALCHRC33    720 - 720
      ALTIME34    721 - 722    ALUNIT34    723 - 723
      ALDURA34    724 - 725    ALDURB34    726 - 726
      ALCHRC34    727 - 727    ALTIME90    728 - 729
      ALUNIT90    730 - 730    ALDURA90    731 - 732
      ALDURB90    733 - 733    ALCHRC90    734 - 734
      ALTIME91    735 - 736    ALUNIT91    737 - 737
      ALDURA91    738 - 739    ALDURB91    740 - 740
      ALCHRC91    741 - 741    ALCNDRT     742 - 742
      ALCHRONR    743 - 743

      /* AHB LOCATIONS */

      SMKEV       744 - 744    SMKREG      745 - 746
      SMKNOW      747 - 747    SMKSTAT2    748 - 748
      SMKQTNO     749 - 750    SMKQTTP     751 - 751
      SMKQTY      752 - 753    CIGSDA1     754 - 755
      CIGDAMO     756 - 757    CIGSDA2     758 - 759
      CIGSDAY     760 - 761    CIGQTYR     762 - 762
      OTHCIGEV    763 - 763    OTHCIGED    764 - 764
      SMKLESEV    765 - 765    SMKLESED    766 - 766
      TOBLASYR    767 - 767    TOBQTYR     768 - 768
      ECIGEV      769 - 769    ECIGED      770 - 770
      VIGNO       771 - 773    VIGTP       774 - 774
      VIGFREQW    775 - 776    VIGLNGNO    777 - 779
      VIGLNGTP    780 - 780    VIGMIN      781 - 783
      MODNO       784 - 786    MODTP       787 - 787
      MODFREQW    788 - 789    MODLNGNO    790 - 792
      MODLNGTP    793 - 793    MODMIN      794 - 796
      STRNGNO     797 - 799    STRNGTP     800 - 800
      STRFREQW    801 - 802    ALC1YR      803 - 803
      ALCLIFE     804 - 804    ALC12MNO    805 - 807
      ALC12MTP    808 - 808    ALC12MWK    809 - 810
      ALC12MYR    811 - 813    ALCAMT      814 - 815
      ALCSTAT     816 - 817    ALC5UPN1    818 - 820
      ALC5UPT1    821 - 821    ALC5UPY1    822 - 824
      AHEIGHT     825 - 826    AWEIGHTP    827 - 829
      BMI         830 - 833 .2

      /* AAU LOCATIONS */

      AUSUALPL    834 - 834    APLKIND     835 - 835
      AHCPLROU    836 - 836    AHCPLKND    837 - 837
      AHCCHGYR    838 - 838    AHCCHGHI    839 - 839
      ANOUSPL1    840 - 840    ANOUSPL2    841 - 841
      ANOUSPL3    842 - 842    ANOUSPL4    843 - 843
      ANOUSPL5    844 - 844    ANOUSPL6    845 - 845
      ANOUSPL7    846 - 846    ANOUSPL8    847 - 847
      ANOUSPL9    848 - 848    APRVTRYR    849 - 849
      APRVTRFD    850 - 850    ADRNANP     851 - 851
      ADRNAI      852 - 852    AHCDLYR1    853 - 853
      AHCDLYR2    854 - 854    AHCDLYR3    855 - 855
      AHCDLYR4    856 - 856    AHCDLYR5    857 - 857
      AHCAFYR1    858 - 858    AHCAFYR2    859 - 859
      AHCAFYR3    860 - 860    AHCAFYR4    861 - 861
      AHCAFYR5    862 - 862    AHCAFYR6    863 - 863
      AWORPAY     864 - 864    AHICOMP     865 - 865
      ARX12MO     866 - 866    ARX12_1     867 - 867
      ARX12_2     868 - 868    ARX12_3     869 - 869
      ARX12_4     870 - 870    ARX12_5     871 - 871
      ARX12_6     872 - 872    ADNLONG2    873 - 873
      AHCSYR1     874 - 874    AHCSYR2     875 - 875
      AHCSYR3     876 - 876    AHCSYR4     877 - 877
      AHCSYR5     878 - 878    AHCSYR6     879 - 879
      AHCSYR7     880 - 880    AHCSYR8     881 - 881
      AHCSYR9     882 - 882    AHCSYR10    883 - 883
      AHERNOY2    884 - 885    AERVISND    886 - 886
      AERHOS      887 - 887    AERREA1R    888 - 888
      AERREA2R    889 - 889    AERREA3R    890 - 890
      AERREA4R    891 - 891    AERREA5R    892 - 892
      AERREA6R    893 - 893    AERREA7R    894 - 894
      AERREA8R    895 - 895    AHCHYR      896 - 896
      AHCHMOYR    897 - 898    AHCHNOY2    899 - 900
      AHCNOYR2    901 - 902    ASRGYR      903 - 903
      ASRGNOYR    904 - 905    AMDLONGR    906 - 906
      AVISLAST    907 - 907    ALASTYP1    908 - 908
      ALASTYP2    909 - 909    ALASTYP3    910 - 910
      ALASTYP4    911 - 911    ALASTVRB $  912 - 956
      AVISAPN2    957 - 958    AVISAPT2    959 - 959
      AWAITRMN    960 - 961    AWAITRMT    962 - 962
      HIT1A       963 - 963    HIT2A       964 - 964
      HIT3A       965 - 965    HIT4A       966 - 966
      HIT5A       967 - 967    SHTFLU2     968 - 968
      ASHFLUM2    969 - 970    ASHFLUY2    971 - 974
      FLUSHPG1    975 - 975    FLUSHPG2    976 - 976
      SPRFLU2     977 - 977    ASPFLUM2    978 - 979
      ASPFLUY2    980 - 983    SHTPNUYR    984 - 984
      APOX        985 - 985    APOX12MO    986 - 986
      AHEP        987 - 987    AHEPLIV     988 - 988
      AHEPBTST    989 - 989    SHTHEPB     990 - 990
      SHEPDOS     991 - 991    SHTHEPA     992 - 992
      SHEPANUM    993 - 994    AHEPCTST    995 - 995
      AHEPCRES    996 - 996    SHINGLES    997 - 997
      SHTTD       998 - 998    SHTTD05     999 - 999
      SHTTDAP2   1000 -1000    SHTHPV2    1001 -1001
      SHHPVDOS   1002 -1003    AHPVAGE    1004 -1006
      LIVEV      1007 -1007    TRAVEL     1008 -1008
      WRKHLTH2   1009 -1009    WRKDIR     1010 -1010
      APSBPCH1   1011 -1011    APSCHCH1   1012 -1012
      APSBSCH1   1013 -1013    APSPAP     1014 -1014
      APSMAM     1015 -1015    APSCOL     1016 -1016
      APSDIET    1017 -1017    APSSMKC    1018 -1018
      LTCFAM     1019 -1019    LTCHELP    1020 -1020
      LTCWHO1    1021 -1021    LTCWHO2    1022 -1022
      LTCWHO3    1023 -1023    LTCWHO4    1024 -1024
      LTCWHO5    1025 -1025    AINDINS    1026 -1026
      AINDPRCH   1027 -1027    AINDWHO    1028 -1028
      AINDDIF1   1029 -1029    AINDDIF2   1030 -1030
      AINDENY1   1031 -1031    AINDENY2   1032 -1032
      AINDENY3   1033 -1033    AINDNOT1   1034 -1034
      AINDNOT2   1035 -1035    AINDNOT3   1036 -1036
      AINDNOT4   1037 -1037    AINDNOT5   1038 -1038
      AEXCHNG    1039 -1039

      /* ASI LOCATIONS */

      ASICPUSE   1040 -1040    ASISATHC   1041 -1041
      ASITENUR   1042 -1042    ASINHELP   1043 -1043
      ASINCNTO   1044 -1044    ASINTRU    1045 -1045
      ASINKNT    1046 -1046    ASISIM     1047 -1047
      ASISIF     1048 -1048    ASIRETR    1049 -1049
      ASIMEDC    1050 -1050    ASISTLV    1051 -1051
      ASICNHC    1052 -1052    ASICCOLL   1053 -1053
      ASINBILL   1054 -1054    ASIHCST    1055 -1055
      ASICCMP    1056 -1056    ASISLEEP   1057 -1058
      ASISLPFL   1059 -1060    ASISLPST   1061 -1062
      ASISLPMD   1063 -1064    ASIREST    1065 -1066
      ASISAD     1067 -1067    ASINERV    1068 -1068
      ASIRSTLS   1069 -1069    ASIHOPLS   1070 -1070
      ASIEFFRT   1071 -1071    ASIWTHLS   1072 -1072
      ASIMUCH    1073 -1073    ASIHIVT    1074 -1074
      ASIHIVWN   1075 -1076

      /* AWB LOCATIONS */

      AWEBUSE    1077 -1077    AWEBOFNO   1078 -1080
      AWEBOFTP   1081 -1081    AWEBORP    1082 -1082
      AWEBEML    1083 -1083    AWEBMNO    1084 -1086
      AWEBMTP    1087 -1087;

   * DEFINE VARIABLE LABELS;

   LABEL

      /* IDN LABELS */

      RECTYPE    ="File type identifier"
      SRVY_YR    ="Year of National Health Interview Survey"
      HHX        ="Household Number"
      INTV_QRT   ="Interview Quarter"
      INTV_MON   ="Interview Month"
      FMX        ="Family Number"
      FPX        ="Person Number (Within family)"
      WTIA_SA    ="Weight - Interim Annual"
      WTFA_SA    ="Weight - Final Annual"

      /* UCF LABELS */

      REGION     ="Region"
      STRAT_P    ="Pseudo-stratum for public use file variance estimation"
      PSU_P      ="Pseudo-PSU for public use file variance estimation"

      /* HHC LABELS */

      SEX        ="Sex"
      HISPAN_I   ="Hispanic subgroup detail"
      RACERPI2   ="OMB groups w/multiple race"
      MRACRPI2   ="Race coded to single/multiple race group"
      MRACBPI2   ="Race coded to single/multiple race group"
      AGE_P      ="Age"

      /* FID LABELS */

      R_MARITL   ="Marital Status"

      /* AID LABELS */

      PROXYSA    ="Sample adult status"
      PROX1      ="Knowledgeable proxy for Sample Adult available"
      PROX2      ="Relationship of SA proxy to SA"
      LATEINTA   ="Late Sample Adult interviews"

      /* FDB LABELS */

      FDRN_FLG   ="Disability Questions flag"

      /* ASD LABELS */

      DOINGLWA   ="Corrected employment status last week"
      WHYNOWKA   ="Main reason for not working last week"
      EVERWRK    ="Ever worked"
      INDSTRN1   =
"Detailed industry classification (from 2012 Census codes based on NAICS)"
      INDSTRN2   =
"Simple industry classification (from 2012 Census codes based on NAICS)"
      OCCUPN1    =
"Detailed occupation classification (from 2010 Census Codes based on SOC)"
      OCCUPN2    =
"Simple occupation classification (from 2010 Census codes based on SOC)"
      WRKCATA    ="Class of worker"
      BUSINC1A   ="Current job an incorporated business"
      LOCALL1A   ="Number of employees at work"
      YRSWRKPA   ="Number of years on the job"
      WRKLONGH   ="Current/most recent job also longest held job"
      HOURPDA    ="Paid by the hour at current or most recent job"
      PDSICKA    ="Paid sick leave at current or most recent job"
      ONEJOB     ="Have more than one job"
      WRKLYR4    ="Work status: last week, past 12 months"

      /* ACN LABELS */

      HYPEV      ="Ever been told you have hypertension"
      HYPDIFV    ="Ever had hypertension on 2+ visits"
      HYPYR1     ="Had hypertension, past 12 months"
      HYBPCKNO   ="Time since blood pressure checked: # of units"
      HYBPCKTP   ="Time since blood pressure checked: Time units"
      HYBPLEV    ="Blood pressure level"
      HYPMDEV2   ="Ever prescribed medicine for high blood pressure"
      HYPMED2    ="Now taking prescribed medicine for high blood pressure"
      CHLEV      ="Ever told you had high cholesterol"
      CHLYR      ="Had high cholesterol, past 12 months"
      CLCKNO     ="Time since cholesterol checked: # of units"
      CLCKTP     ="Time since cholesterol checked: Time units"
      CHLMDEV2   ="Ever prescribed medicine to lower cholesterol"
      CHLMDNW2   ="Now taking prescribed medicine to lower cholesterol"
      CHDEV      ="Ever been told you had coronary heart disease"
      ANGEV      ="Ever been told you had angina pectoris"
      MIEV       ="Ever been told you had a heart attack"
      HRTEV      ="Ever been told you had a heart condition/disease"
      STREV      ="Ever been told you had a stroke"
      EPHEV      ="Ever been told you had emphysema"
      JAWP       ="Knowledge of heart attack symptoms…pain in jaw/neck/back"
      WEA        ="Knowledge of heart attack symptoms…feeling weak"
      CHE        ="Knowledge of heart attack symptoms…chest pain"
      ARM        ="Knowledge of heart attack symptoms…pain in arms/shoulder"
      BRTH       ="Knowledge of heart attack symptoms…shortness of breath"
      AHADO      ="Best thing to do when someone is having a heart attack"
      FACE       ="Knowledge of stroke symptoms…numbness/weakness"
      SPEAKING   =
"Knowledge of stroke symptoms…sudden confusion/trouble speaking"
      EYE        ="Knowledge of stroke symptoms…sudden trouble seeing"
      WALKING    ="Knowledge of stroke symptoms…sudden trouble walking"
      HEADACHE   ="Knowledge of stroke symptoms…sudden severe headache"
      ASTDO      ="Best thing to do when someone is having a stroke"
      COPDEV     ="Ever been told you had COPD"
      ASPMEDEV   ="Ever been told to take low-dose aspirin"
      ASPMEDAD   ="Following low-dose aspirin advice"
      ASPMDMED   ="Advised to stop taking low-dose aspirin"
      ASPONOWN   ="Taking low-dose aspirin on own"
      AASMEV     ="Ever been told you had asthma"
      AASSTILL   ="Still have asthma"
      AASMYR     ="Had an asthma episode/attack past 12 m"
      AASERYR1   ="Had visit to ER due to asthma past 12 m"
      ULCEV      ="Ever been told you have an ulcer"
      ULCYR      ="Had ulcer in past 12 m"
      CANEV      ="Ever told by a doctor you had cancer"
      CNKIND1    ="What kind of cancer ... Bladder"
      CNKIND2    ="What kind of cancer ... Blood"
      CNKIND3    ="What kind of cancer ... Bone"
      CNKIND4    ="What kind of cancer ... Brain"
      CNKIND5    ="What kind of cancer ... Breast"
      CNKIND6    ="What kind of cancer ... Cervix"
      CNKIND7    ="What kind of cancer ... Colon"
      CNKIND8    ="What kind of cancer ... Esophagus"
      CNKIND9    ="What kind of cancer ... Gallbladder"
      CNKIND10   ="What kind of cancer ... Kidney"
      CNKIND11   ="What kind of cancer ... larynx-windpipe"
      CNKIND12   ="What kind of cancer ... Leukemia"
      CNKIND13   ="What kind of cancer ... Liver"
      CNKIND14   ="What kind of cancer ... Lung"
      CNKIND15   ="What kind of cancer ... Lymphoma"
      CNKIND16   ="What kind of cancer ... Melanoma"
      CNKIND17   ="What kind of cancer ... mouth/tongue/lip"
      CNKIND18   ="What kind of cancer ... Ovary"
      CNKIND19   ="What kind of cancer ... Pancreas"
      CNKIND20   ="What kind of cancer ... Prostate"
      CNKIND21   ="What kind of cancer ... Rectum"
      CNKIND22   ="What kind of cancer ... skin (non-melanoma)"
      CNKIND23   ="What kind of cancer ... skin (DK kind)"
      CNKIND24   ="What kind of cancer ... soft tissue (muscle or fat)"
      CNKIND25   ="What kind of cancer ... Stomach"
      CNKIND26   ="What kind of cancer ... Testis"
      CNKIND27   ="What kind of cancer ... throat - pharynx"
      CNKIND28   ="What kind of cancer ... Thyroid"
      CNKIND29   ="What kind of cancer ... Uterus"
      CNKIND30   ="What kind of cancer ... Other"
      CNKIND31   ="What kind of cancer ... more than 3 kinds"
      CANAGE1    ="Age first diagnosed w/bladder cancer"
      CANAGE2    ="Age first diagnosed w/blood cancer"
      CANAGE3    ="Age first diagnosed w/bone cancer"
      CANAGE4    ="Age first diagnosed w/brain cancer"
      CANAGE5    ="Age first diagnosed w/breast cancer"
      CANAGE6    ="Age first diagnosed w/cervical cancer"
      CANAGE7    ="Age first diagnosed w/colon cancer"
      CANAGE8    ="Age first diagnosed w/esophageal cancer"
      CANAGE9    ="Age first diagnosed w/gallbladder cancer"
      CANAGE10   ="Age first diagnosed w/kidney cancer"
      CANAGE11   ="Age first diagnosed w/larynx-windpipe cancer"
      CANAGE12   ="Age first diagnosed w/leukemia"
      CANAGE13   ="Age first diagnosed w/liver cancer"
      CANAGE14   ="Age first diagnosed w/lung cancer"
      CANAGE15   ="Age first diagnosed w/lymphoma"
      CANAGE16   ="Age first diagnosed w/melanoma"
      CANAGE17   ="Age first diagnosed w/mouth/tongue/lip cancer"
      CANAGE18   ="Age first diagnosed w/ovarian cancer"
      CANAGE19   ="Age first diagnosed w/pancreatic cancer"
      CANAGE20   ="Age first diagnosed w/prostate cancer"
      CANAGE21   ="Age first diagnosed w/rectal cancer"
      CANAGE22   ="Age first diagnosed w/skin (non-melanoma) cancer"
      CANAGE23   ="Age first diagnosed w/skin (DK kind) cancer"
      CANAGE24   ="Age first diagnosed w/soft tissue cancer"
      CANAGE25   ="Age first diagnosed w/stomach cancer"
      CANAGE26   ="Age first diagnosed w/testicular cancer"
      CANAGE27   ="Age first diagnosed w/throat/pharynx cancer"
      CANAGE28   ="Age first diagnosed w/thyroid cancer"
      CANAGE29   ="Age first diagnosed w/uterine cancer"
      CANAGE30   ="Age first diagnosed w/other cancer"
      DIBEV      ="Ever been told that you have diabetes"
      DIBPRE1    ="Ever had prediabetes or other symptoms"
      DIBAGE     ="Age first diagnosed w/diabetes"
      DIFAGE2    ="Years since first diagnosed w/diabetes"
      INSLN      ="NOW taking insulin"
      DIBPILL    ="NOW taking diabetic pills"
      AHAYFYR    ="Told that you had hay fever, past 12 m"
      SINYR      ="Told that you had sinusitis, past 12 m"
      CBRCHYR    ="Told you had chronic bronchitis, 12 m"
      KIDWKYR    ="Told you had weak/failing kidneys, 12 m"
      LIVYR      ="Told you had liver condition, past 12 m"
      JNTSYMP    ="Symptoms of joint pain/aching/stiffness past 30 d"
      JMTHP1     ="Which joint affected...shoulder-right"
      JMTHP2     ="Which joint affected...shoulder-left"
      JMTHP3     ="Which joint affected...elbow-right"
      JMTHP4     ="Which joint affected...elbow-left"
      JMTHP5     ="Which joint affected...hip-right"
      JMTHP6     ="Which joint affected...hip-left"
      JMTHP7     ="Which joint affected...wrist-right"
      JMTHP8     ="Which joint affected...wrist-left"
      JMTHP9     ="Which joint affected...knee-right"
      JMTHP10    ="Which joint affected...knee-left"
      JMTHP11    ="Which joint affected...ankle-right"
      JMTHP12    ="Which joint affected...ankle-left"
      JMTHP13    ="Which joint affected...toes-right"
      JMTHP14    ="Which joint affected...toes-left"
      JMTHP15    ="Which joint affected...fingers/thumb-right"
      JMTHP16    ="Which joint affected...fingers/thumb-left"
      JMTHP17    ="Which joint affected...other joint not listed"
      JNTPN      ="Severity of joint pain on average, past 30 d"
      JNTCHR     ="Joint symptoms begin more than 3 months ago"
      JNTHP      ="Ever seen doctor or health professional for joint symptoms"
      ARTH1      ="Ever been told you had arthritis"
      ARTHWT     ="Ever told to lose weight to help arthritis"
      ARTHPH     ="Ever told to exercise to help arthritis"
      ARTHCLS    =
"Ever taken a course on managing problems related to arthritis"
      ARTHLMT    ="Limited due to arthritis or joint symptoms"
      ARTHWRK    ="Arthritis affect your work"
      PAINECK    ="Had neck pain, past 3 months"
      PAINLB     ="Had low back pain, past 3 months"
      PAINLEG    ="Pain spread down leg/below knees"
      PAINFACE   ="Had pain in jaw/front of ear, past 3 months"
      AMIGR      ="Had severe headache/migraine, past 3 m"
      ACOLD2W    ="Had a head/chest cold past 2 w"
      AINTIL2W   ="Had stomach prob w/vomit/diarrhea, 2 w"
      PREGNOW    ="Currently pregnant"
      PREGFLYR   ="Recently pregnant"
      AHEARST2   ="Hearing w/o hearing aid"
      HRWORS     ="Hearing worse in one ear"
      HRWHICH    ="Which ear is worse"
      HRRIGHT    ="Hearing in right ear"
      HRLEFT     ="Hearing in left ear"
      HRWHISP1   ="Hear whispers across room"
      HRTALK1    ="Hear normal voice across room"
      HRSHOUT1   ="Hear shouting voice across room"
      HRSPEAK1   ="Hear voice in better ear"
      HRCOCRE1   ="Cochlear implant recommended"
      HRCOCIM1   ="Had cochlear implant surgery"
      HRFAM      ="Ever told by friends/relatives you had hearing problem"
      HRBACK     ="Trouble with background noise"
      HRFRUST    ="Frustrated with hearing when talking"
      HRSAFETY   ="Hearing causes worry about safety"
      HEARAGE1   ="Age at first hearing loss"
      HRCAUS1    ="Main cause of hearing loss"
      HRPROBHP   ="Last saw doctor/hp about hearing problems"
      HRENT      ="Referred to hearing specialist, past 5 years"
      HRAUD      ="Referred to audiologist, past 5 years"
      HRTEST     ="Last time hearing tested"
      HRAIDNOW   ="Now use a hearing aid"
      HRAIDLNG   ="How long used hearing aid"
      HRAID2WK   ="Hours using hearing aid, on average day"
      HRAIDHLP   ="Hearing aid helped, past 2 weeks"
      HRAIDEV    ="Ever used a hearing aid if not now using"
      HRAIDREC   ="Hearing aid ever recommended"
      HRAIDLGP   ="How long hearing aid used in past"
      HRAIDOF2   ="How often used hearing aid in the past"
      HRAIDN01   ="HA not used - it didn't help"
      HRAIDN02   ="HA not used - too loud"
      HRAIDN03   ="HA not used - didn't like way it sounded"
      HRAIDN04   ="HA not used - didn't like way I sounded"
      HRAIDN05   ="HA not used - uncomfortable"
      HRAIDN06   ="HA not used - frequent breakdowns"
      HRAIDN07   ="HA not used - didn't like look"
      HRAIDN08   ="HA not used - cost too much"
      HRAIDN09   ="HA not used - don't need"
      HRAIDN10   ="HA not used - misplaced/lost"
      HRAIDN11   ="HA not used - other"
      HRAUDTRN   ="Ever receive instruction to improve hearing"
      HRALDS     ="Use assistive-listening devices"
      HRALDT01   ="ALD - FM system pocket talker"
      HRALDT02   ="ALD - instant/text messages"
      HRALDT03   ="ALD - amplified telephone"
      HRALDT04   ="ALD - amplified/vibrating alarm clock"
      HRALDT05   ="ALD - notification/signaling alarm"
      HRALDT06   ="ALD - headset with TV/close-captioned TV"
      HRALDT07   ="ALD - TTY/TDD"
      HRALDT08   ="ALD - video relay service"
      HRALDT09   ="ALD - live video streaming using sign language"
      HRALDT10   ="ALD - sign language interpreter"
      HRALDT11   ="ALD - other"
      HRBDIZZ    ="Problems with dizziness, past 12 m"
      HRTIN      ="Had ringing in ears, past 12 months"
      HRTINOFT   ="How often had ringing in ears, past 12 months"
      HRTINLNG   ="How long bothered by ringing in ears"
      HRTINMUS   ="Ringing in ears only after loud sounds/music"
      HRTINSLP   ="Ringing in ears when going to sleep"
      HRTINPRO   ="How much a problem, ringing in ears"
      HRTINDIS   ="Discuss ringing in ears with doctor/HP"
      HRTINDOC   ="Ever evaluated for ringing in ears, past 5 yrs"
      HRTINRM    ="Tried remedies for ringing in ears"
      HREMTY01   ="Remedies tried for ringing…drugs/medication"
      HREMTY02   ="Remedies tried for ringing…stop/reduced drugs/medication"
      HREMTY03   ="Remedies tried for ringing…hearing aids"
      HREMTY04   ="Remedies tried for ringing…masking devices"
      HREMTY05   ="Remedies tried for ringing…surgical procedures"
      HREMTY06   ="Remedies tried for ringing…relaxation therapy"
      HREMTY07   ="Remedies tried for ringing…TRT"
      HREMTY08   ="Remedies tried for ringing…music therapy"
      HREMTY09   ="Remedies tried for ringing…avoided irritants"
      HREMTY10   ="Remedies tried for ringing…nutritional supplements"
      HREMTY11   ="Remedies tried for ringing…alternative methods"
      HREMTY12   ="Remedies tried for ringing…other"
      HRTNRMHP   ="How much have remedies helped with ringing in ears"
      HRHCUSIS   ="Annoyed by everyday sounds"
      HRHCPROB   ="How much of a problem are evryday sounds, past 12 m"
      HRFIRE     ="Ever used firearms"
      HRFIRTYP   ="Used firearms for work/leisure"
      HRFRTIM    ="When did you use guns/firearms"
      HR12MR     ="Number of rounds fired, past 12 months"
      HRFRPROT   ="Wear hearing protection at leisure, past 12 months"
      HRTOTR     ="Number of total rounds fired"
      HRFRPRT2   =
"How often worn hearing protection when shooting, before past 12 m"
      HRWKVLNS   ="Ever had job where exposed to very loud sounds/noise"
      HRWKLNS    ="Ever had job where exposed to loud sounds/noise"
      HRWKVLNT   ="Months/years exposed to very loud sounds/noise at work"
      HRWKVLEX   ="When exposed to very loud sounds/noise at work"
      HRWKVLP1   ="Hearing protection for very loud noise at work, past 12 m"
      HRWKVLP2   =
"Hearing protection for very loud noise at work, before past 12 m"
      HRWRLNS    ="Months/years exposed to loud sounds/noise at work"
      HRWKLEX    ="When exposed to loud sounds/noise at work"
      HRWKLP1    ="Hearing protection for loud noise at work, past 12 m"
      HRWKLP2    ="Hearing protection for loud noise at work, before past 12 m"
      HRLSVLNS   ="Ever exposed to very loud noise 10+ times/yr, outside work"
      HRVLTP01   ="Exposed to very loud activity…lawn mower"
      HRVLTP02   ="Exposed to very loud activity…power tools"
      HRVLTP03   ="Exposed to very loud activity…household appliances"
      HRVLTP04   ="Exposed to very loud activity…recreational vehicles"
      HRVLTP05   ="Exposed to very loud activity…rock concerts"
      HRVLTP06   ="Exposed to very loud activity…very loud music from CD player"
      HRVLTP07   ="Exposed to very loud activity…very loud sporting event"
      HRVLTP08   ="Exposed to very loud activity…guns/firearms"
      HRVLTP09   ="Exposed to very loud activity…video/computer games"
      HRVLTP10   ="Exposed to very loud activity…other"
      HRLNOS     ="Ever exposed to loud noise 10+ times/yr, outside work"
      HRLTP01    ="Exposed to loud activity…lawn mower"
      HRLTP02    ="Exposed to loud activity…power tools"
      HRLTP03    ="Exposed to loud activity…household appliances"
      HRLTP04    ="Exposed to loud activity…recreational vehicles"
      HRLTP05    ="Exposed to loud activity…rock concerts"
      HRLTP06    ="Exposed to loud activity…very loud music from CD player"
      HRLTP07    ="Exposed to loud activity…very loud sporting event"
      HRLTP08    ="Exposed to loud activity…guns/firearms"
      HRLTP09    ="Exposed to loud activity…video/computer games"
      HRLTP10    ="Exposed to loud activity…other"
      HRNOSEXP   ="When exposed to loud/very loud sounds/noise at work"
      HRLSP1     =
"Hearing protection for loud/very loud noise outside work, past 12 m"
      HRLSP2     =
"Hearing protection for loud/very loud noise outside work, before past 12 m"
      HRINTNET   ="Get info from Internet about health, past 12 m"
      HRINTHL    ="Past 12 m, get info from Internet on…hearing loss"
      HRINTHA    ="Past 12 m, get info from Internet on…hearing aids"
      HRINTTN    ="Past 12 m, get info from Internet on…ringing in ears"
      HRINTDZ    =
"Past 12 m, get info from Internet on…dizziness/balance problems"
      HRINTHP    ="Past 12 m, get info from Internet on…hearing protection"
      HRINTHPR   ="Any Internet info written by a doc/health pro"
      AVISION    ="Trouble seeing even w/glasses/lenses"
      ABLIND     ="Blind or unable to see at all"
      LUPPRT     ="Lost all upper & lower natural teeth"

      /* AHS LABELS */

      WKDAYR     ="Number of work loss days, past 12 months"
      BEDDAYR    ="Number of bed days, past 12 months"
      AHSTATYR   ="Health better/worse/same, compared w/ 12 months ago"
      SPECEQ     ="Have health problem that requires special equipment"
      FLWALK     ="How difficult to walk 1/4 mile without special equipment"
      FLCLIMB    ="How difficult to climb 10 steps without special equipment"
      FLSTAND    ="How difficult to stand 2 hours without special equipment"
      FLSIT      ="How difficult to sit 2 hours without special equipment"
      FLSTOOP    =
"How difficult to stoop, bend or kneel without special equipment"
      FLREACH    ="How difficult to reach over head without special equipment"
      FLGRASP    =
"How difficult to grasp small objects without special equipment"
      FLCARRY    ="How difficult to lift/carry 10 lbs without special equipment"
      FLPUSH     ="How difficult to push large objects without special equipment
"
      FLSHOP     ="How difficult to go out to events without special equipment"
      FLSOCL     =
"How difficult to participate in social activities without special equipment"
      FLRELAX    ="How difficult to relax at home without special equipment"
      FLA1AR     ="Any functional limitation, all conditions"
      AFLHCA1    ="Vision/problem seeing causes difficulty with activity"
      AFLHCA2    ="Hearing problem causes difficulty with activity"
      AFLHCA3    ="Arthritis/rheumatism causes difficulty with activity"
      AFLHCA4    ="Back or neck problem causes difficulty with activity"
      AFLHCA5    ="Fracture, bone/joint injury causes difficulty with activity"
      AFLHCA6    ="Other injury causes difficulty with activity"
      AFLHCA7    ="Heart problem causes difficulty with activity"
      AFLHCA8    ="Stroke problem causes difficulty with activity"
      AFLHCA9    =
"Hypertension/high blood pressure causes difficulty with activity"
      AFLHCA10   ="Diabetes causes difficulty with activity"
      AFLHCA11   =
"Lung/breathing problem (e.g., asthma) causes difficulty with activity"
      AFLHCA12   ="Cancer causes difficulty with activity"
      AFLHCA13   ="Birth defect causes difficulty with activity"
      ALHCA14A   =
"Intellectual disability, AKA mental retardation causes difficulty with activity
"
      AFLHCA15   =
"Other developmental problem (eg, cerebral palsy) causes difficulty with activit
y"
      AFLHCA16   ="Senility causes difficulty with activity"
      AFLHCA17   =
"Depression/anxiety/emotional problem causes difficulty with activity"
      AFLHCA18   ="Weight problem causes difficulty with activity"
      AFLHC19_   =
"Missing or amputated limb/finger/digit causes difficulty with activity"
      AFLHC20_   =
"Musculoskeletal/connective tissue problem causes difficulty with activity"
      AFLHC21_   =
"Circulation problems (including blood clots) cause difficulty with activity"
      AFLHC22_   =
"Endocrine/nutritional/metabolic problem causes difficulty with activity"
      AFLHC23_   =
"Nervous system/sensory organ condition causes difficulty with activity"
      AFLHC24_   ="Digestive system problem causes difficulty with activity"
      AFLHC25_   ="Genitourinary system problem causes difficulty with activity"
      AFLHC26_   =
"Skin/subcutaneous system problem causes difficulty with activity"
      AFLHC27_   =
"Blood or blood-forming organ problem causes difficulty with activity"
      AFLHC28_   ="Benign tumor/cyst causes difficulty with activity"
      AFLHC29_   =
"Alcohol/drug/substance abuse problem causes difficulty with activity"
      AFLHC30_   =
"Other mental problem/ADD/Bipolar/Schizophrenia causes difficulty with activity"
      AFLHC31_   =
"Surgical after-effects/medical treatment causes difficulty with activity"
      AFLHC32_   =
'"Old age"/elderly/aging-related problem causes difficulty with activity'
      AFLHC33_   ="Fatigue/tiredness/weakness causes difficulty with activity"
      AFLHC34_   ="Pregnancy-related problem causes difficulty with activity"
      AFLHCA90   ="Other impairment/problem (1) causes difficulty with activity"
      AFLHCA91   ="Other impairment/problem (2) causes difficulty with activity"
      ALTIME1    ="Duration of vision problem: Number of units"
      ALUNIT1    ="Duration of vision problem: Time unit"
      ALDURA1    ="Duration (in years) of vision problem, recode 1"
      ALDURB1    ="Duration of vision problem, recode 2"
      ALCHRC1    ="Vision problem condition status recode"
      ALTIME2    ="Duration of hearing problem: Number of units"
      ALUNIT2    ="Duration of hearing problem: Time unit"
      ALDURA2    ="Duration (in years) of hearing problem, recode 1"
      ALDURB2    ="Duration of hearing problem, recode 2"
      ALCHRC2    ="Hearing problem condition status recode"
      ALTIME3    ="Duration of arthritis/rheumatism: Number of units"
      ALUNIT3    ="Duration of arthritis/rheumatism: Time unit"
      ALDURA3    ="Duration (in years) of arthritis/rheumatism, recode 1"
      ALDURB3    ="Duration of arthritis/rheumatism, recode 2"
      ALCHRC3    ="Arthritis/rheumatism condition status recode"
      ALTIME4    ="Duration of back or neck problem: Number of units"
      ALUNIT4    ="Duration of back or neck problem: Time unit"
      ALDURA4    ="Duration (in years) of back or neck problem, recode 1"
      ALDURB4    ="Duration of back or neck problem, recode 2"
      ALCHRC4    ="Back or neck problem condition status recode"
      ALTIME5    ="Duration of fracture, bone/joint injury: Number of units"
      ALUNIT5    ="Duration of fracture, bone/joint injury: Time unit"
      ALDURA5    ="Duration (in years) of fracture, bone/joint injury, recode 1"
      ALDURB5    ="Duration of fracture, bone/joint injury, recode 2"
      ALCHRC5    ="Fracture, bone/joint injury condition status recode"
      ALTIME6    ="Duration of other injury: Number of units"
      ALUNIT6    ="Duration of other injury: Time unit"
      ALDURA6    ="Duration (in years) of other injury, recode 1"
      ALDURB6    ="Duration of other injury, recode 2"
      ALCHRC6    ="Other injury condition status recode"
      ALTIME7    ="Duration of heart problem: Number of units"
      ALUNIT7    ="Duration of heart problem: Time unit"
      ALDURA7    ="Duration (in years) of heart problem, recode 1"
      ALDURB7    ="Duration of heart problem, recode 2"
      ALCHRC7    ="Heart problem condition status recode"
      ALTIME8    ="Duration of stroke problem: Number of units"
      ALUNIT8    ="Duration of stroke problem: Time unit"
      ALDURA8    ="Duration (in years) of stroke problem, recode 1"
      ALDURB8    ="Duration of stroke problem, recode 2"
      ALCHRC8    ="Stroke problem condition status recode"
      ALTIME9    =
"Duration of hypertension or high blood pressure: Number of units"
      ALUNIT9    ="Duration of hypertension or high blood pressure: Time unit"
      ALDURA9    =
"Duration (in years) of hypertension or high blood pressure: recode 1"
      ALDURB9    ="Duration of hypertension or high blood pressure: recode 2"
      ALCHRC9    ="Hypertension or high blood pressure condition status recode"
      ALTIME10   ="Duration of diabetes: Number of units"
      ALUNIT10   ="Duration of diabetes: Time unit"
      ALDURA10   ="Duration (in years) of diabetes, recode 1"
      ALDURB10   ="Duration of diabetes, recode 2"
      ALCHRC10   ="Diabetes condition status recode"
      ALTIME11   =
"Duration of lung/breathing problem (e.g., asthma and emphysema): Number of unit
s"
      ALUNIT11   =
"Duration of lung/breathing problem: (e.g., asthma and emphysema) Time unit"
      ALDURA11   =
"Duration (in years) of lung/breathing problem (e.g., asthma), recode 1"
      ALDURB11   =
"Duration of lung/breathing problem (e.g., asthma and emphysema), recode 2"
      ALCHRC11   =
"Lung/breathing problem (e.g., asthma and emphysema) condition status recode"
      ALTIME12   ="Duration of cancer: Number of units"
      ALUNIT12   ="Duration of cancer: Time unit"
      ALDURA12   ="Duration (in years) of cancer, recode 1"
      ALDURB12   ="Duration of cancer, recode 2"
      ALCHRC12   ="Cancer condition status recode"
      ALTIME13   ="Duration of birth defect: Number of units"
      ALUNIT13   ="Duration of birth defect: Time unit"
      ALDURA13   ="Duration (in years) of birth defect, recode 1"
      ALDURB13   ="Duration of birth defect, recode 2"
      ALCHRC13   ="Birth defect condition status recode"
      ATIME14A   =
"Duration of intellectual disability, AKA mental retardation: Number of units"
      AUNIT14A   =
"Duration of intellectual disability, also know as mental retardation: Time unit
"
      ADURA14A   =
"Duration (in years) of intellectual disability, AKA mental retardation, recode 
1"
      ADURB14A   =
"Duration of intellectual disability, also known as mental retardation, recode 2
"
      ACHRC14A   =
"Intellectual disability, AKA mental retardation condition status recode"
      ALTIME15   =
"Duration of other developmental problem (e.g., cerebral palsy): Number of units
"
      ALUNIT15   =
"Duration of other developmental problem (e.g., cerebral palsy): Time unit"
      ALDURA15   =
"Duration (in years) of other developmental problem (eg cerebral palsy), recode 
1"
      ALDURB15   =
"Duration of other developmental problem (e.g., cerebral palsy), recode 2"
      ALCHRC15   =
"Other developmental problem (e.g., cerebral palsy) condition status recode"
      ALTIME16   ="Duration of senility: Number of units"
      ALUNIT16   ="Duration of senility: Time unit"
      ALDURA16   ="Duration (in years) of senility, recode 1"
      ALDURB16   ="Duration of senility, recode 2"
      ALCHRC16   ="Senility condition status recode"
      ALTIME17   =
"Duration of depression/anxiety/emotional problem: Number of units"
      ALUNIT17   ="Duration of depression/anxiety/emotional problem: Time unit"
      ALDURA17   =
"Duration (in years) of depression/anxiety/emotional problem, recode 1"
      ALDURB17   ="Duration of depression/anxiety/emotional problem, recode 2"
      ALCHRC17   ="Depression/anxiety/emotional problem condition status recode"
      ALTIME18   ="Duration of weight problem: Number of units"
      ALUNIT18   ="Duration of weight problem: Time unit"
      ALDURA18   ="Duration (in years) of weight problem, recode 1"
      ALDURB18   ="Duration of weight problem, recode 2"
      ALCHRC18   ="Weight problem condition status recode"
      ALTIME19   =
"Duration of missing limbs (fingers, toes); amputation: Number of units"
      ALUNIT19   =
"Duration of missing limbs (fingers, toes, or digits); amputation: Time unit"
      ALDURA19   =
"Duration (in years) of missing limbs (fingers, toes); amputation, recode 1"
      ALDURB19   =
"Duration of missing limbs (fingers, toes, or digits); amputation, recode 2"
      ALCHRC19   =
"Missing limbs (fingers, toes, or digits); amputation condition status recode"
      ALTIME20   =
"Duration of musculoskeletal/connective tissue problem: Number of units"
      ALUNIT20   =
"Duration of musculoskeletal/connective tissue problem: Time unit"
      ALDURA20   =
"Duration (in years) of musculoskeletal/connective tissue problem, recode 1"
      ALDURB20   =
"Duration of musculoskeletal/connective tissue problem, recode 2"
      ALCHRC20   =
"Musculoskeletal/connective tissue problem condition status recode"
      ALTIME21   =
"Duration of circulation problems (including blood clots): Number of units"
      ALUNIT21   =
"Duration of circulation problems (including blood clots): Time unit"
      ALDURA21   =
"Duration (in years) of circulation problems (including blood clots), recode 1"
      ALDURB21   =
"Duration of circulation problems (including blood clots), recode 2"
      ALCHRC21   =
"Circulation problems (including blood clots) condition status recode"
      ALTIME22   =
"Duration of endocrine/nutritional/metabolic problem: Number of units"
      ALUNIT22   =
"Duration of endocrine/nutritional/metabolic problem: Time unit"
      ALDURA22   =
"Duration (in years) of endocrine/nutritional/metabolic problem, recode 1"
      ALDURB22   ="Duration of endocrine/nutritional/metabolic problem, recode 2
"
      ALCHRC22   =
"Endocrine/nutritional/metabolic problem condition status recode"
      ALTIME23   =
"Duration of nervous system/sensory organ condition: Number of units"
      ALUNIT23   ="Duration of nervous system/sensory organ condition: Time unit
"
      ALDURA23   =
"Duration (in years) of nervous system/sensory organ condition, recode 1"
      ALDURB23   ="Duration of nervous system/sensory organ condition, recode 2"
      ALCHRC23   ="Nervous system/sensory organ condition status recode"
      ALTIME24   ="Duration of digestive system problems: Number of units"
      ALUNIT24   ="Duration of digestive system problems: Time unit"
      ALDURA24   ="Duration (in years) of digestive system problems, recode 1"
      ALDURB24   ="Duration of digestive system problems, recode 2"
      ALCHRC24   ="Digestive system problems condition status recode"
      ALTIME25   ="Duration of genitourinary system problem: Number of units"
      ALUNIT25   ="Duration of genitourinary system problem: Time unit"
      ALDURA25   ="Duration (in years) of genitourinary system problem, recode 1
"
      ALDURB25   ="Duration of genitourinary system problem, recode 2"
      ALCHRC25   ="Genitourinary system problem condition status recode"
      ALTIME26   =
"Duration of skin/subcutaneous system problems: Number of units"
      ALUNIT26   ="Duration of skin/subcutaneous system problems: Time unit"
      ALDURA26   =
"Duration (in years) of skin/subcutaneous system problems, recode 1"
      ALDURB26   ="Duration of skin/subcutaneous system problems, recode 2"
      ALCHRC26   ="Skin/subcutaneous system problems condition status recode"
      ALTIME27   =
"Duration of blood or blood-forming organ problem: Number of units"
      ALUNIT27   ="Duration of blood or blood-forming organ problem: Time unit"
      ALDURA27   =
"Duration (in years) of blood or blood-forming organ problem, recode 1"
      ALDURB27   ="Duration of blood or blood-forming organ problem, recode 2"
      ALCHRC27   ="Blood or blood-forming organ problem condition status recode"
      ALTIME28   ="Duration of benign tumor/cyst: Number of units"
      ALUNIT28   ="Duration of benign tumor/cyst: Time unit"
      ALDURA28   ="Duration (in years) of benign tumor/cyst, recode 1"
      ALDURB28   ="Duration of benign tumor/cyst, recode 2"
      ALCHRC28   ="Benign tumor/cyst condition status recode"
      ALTIME29   =
"Duration of alcohol /drug/substance abuse problem: Number of units"
      ALUNIT29   ="Duration of alcohol/drug/substance abuse problem: Time unit"
      ALDURA29   =
"Duration (in years) of alcohol/drug/substance abuse problem, recode 1"
      ALDURB29   ="Duration of alcohol/drug/substance abuse problem, recode 2"
      ALCHRC29   ="Alcohol /drug/substance abuse problem condition status recode
"
      ALTIME30   =
"Duration of other mental problem/ADD/Bipolar/Schizophrenia: Number of units"
      ALUNIT30   =
"Duration of other mental problem/ADD/Bipolar/Schizophrenia: Time unit"
      ALDURA30   =
"Duration (in years) of other mental problem/ADD/Bipolar/Schizophrenia, recode 1
"
      ALDURB30   =
"Duration of other mental problem/ADD/Bipolar/Schizophrenia, recode 2"
      ALCHRC30   =
"Other mental problem/ADD/Bipolar/Schizophrenia condition status recode"
      ALTIME31   =
"Duration of surgical after-effects/medical treatment problems: Number of units"
      ALUNIT31   =
"Duration of surgical after-effects/medical treatment problems: Time unit"
      ALDURA31   =
"Duration (in years) of surgical after-effects/medical treatment prob, recode 1"
      ALDURB31   =
"Duration of surgical after-effects/medical treatment problems, recode 2"
      ALCHRC31   =
"Surgical after-effects/medical treatment problems condition status recode"
      ALTIME32   =
'Duration of "old age"/elderly/aging-related problems: Number of units'
      ALUNIT32   =
'Duration of "old age"/elderly/aging-related problems: Time unit'
      ALDURA32   =
'Duration (in years) of "old age"/elderly/aging-related problems, recode 1'
      ALDURB32   =
'Duration of "old age"/elderly/aging-related problems, recode 2'
      ALCHRC32   =
'"Old age"/elderly/aging-related problems condition status recode'
      ALTIME33   =
"Duration of fatigue/tiredness/weakness problem: Number of units"
      ALUNIT33   ="Duration of fatigue/tiredness/weakness problem: Time unit"
      ALDURA33   =
"Duration (in years) of fatigue/tiredness/weakness problem, recode 1"
      ALDURB33   ="Duration of fatigue/tiredness/weakness problem, recode 2"
      ALCHRC33   ="Fatigue/tiredness/weakness problem condition status recode"
      ALTIME34   ="Duration of pregnancy-related problem: Number of units"
      ALUNIT34   ="Duration of pregnancy-related problem: Time unit"
      ALDURA34   ="Duration (in years) of pregnancy-related problem, recode 1"
      ALDURB34   ="Duration of pregnancy-related problem, recode 2"
      ALCHRC34   ="Pregnancy-related condition status recode"
      ALTIME90   =
"Duration of other impairment/problem N.E.C. (1): Number of units"
      ALUNIT90   ="Duration of other impairment/problem N.E.C. (1): Time unit"
      ALDURA90   =
"Duration (in years) of other impairment/problem N.E.C. (1), recode 1"
      ALDURB90   ="Duration of other impairment/problem N.E.C. (1), recode 2"
      ALCHRC90   ="Other impairment/problem N.E.C. (1) condition status recode"
      ALTIME91   =
"Duration of other impairment/problem N.E.C. (2): Number of units"
      ALUNIT91   ="Duration of other impairment/problem N.E.C. (2): Time unit"
      ALDURA91   =
"Duration (in years) of other impairment/ problem N.E.C. (2), recode 1"
      ALDURB91   ="Duration of other impairment/problem N.E.C. (2), recode 2"
      ALCHRC91   ="Other impairment/problem N.E.C. (2) condition status recode"
      ALCNDRT    =
"Chronic condition recode for individual with functional limitation"
      ALCHRONR   ="Overall functional limitation recode by condition status"

      /* AHB LABELS */

      SMKEV      ="Ever smoked 100 cigarettes"
      SMKREG     ="Age first smoked fairly regularly"
      SMKNOW     ="Smoke freq: everyday/some days/not at all"
      SMKSTAT2   ="Smoking Status: Recode"
      SMKQTNO    ="Time since quit: # of units"
      SMKQTTP    ="Time since quit: time period"
      SMKQTY     ="Time since quit smoking (in years)"
      CIGSDA1    ="Number cigs per day (daily smokers)"
      CIGDAMO    ="Number days smoked in past 30 days"
      CIGSDA2    ="Number cigs per day (some day smokers)"
      CIGSDAY    ="Number of cigarettes a day (all current smokers)"
      CIGQTYR    ="Tried quit smoking 1+ days, past 12 m"
      OTHCIGEV   ="Ever smoked tobacco products, OTHER than cigarettes"
      OTHCIGED   =
"Smoke freq: everyday/some days/rarely/not at all (other than cigarettes)"
      SMKLESEV   ="Ever used smokeless tobacco products"
      SMKLESED   ="Smokeless tobacco freq: everyday/some days/rarely/not at all"
      TOBLASYR   ="Using any tobacco product, around this time last year"
      TOBQTYR    ="Tried quit all tobacco products 1+ days, past 12 m"
      ECIGEV     ="Ever used electronic cigarettes (e-cig)"
      ECIGED     ="E-cig freq: everyday/some days/not at all"
      VIGNO      ="Freq vigorous activity: # of units"
      VIGTP      ="Freq vigorous activity: Time units"
      VIGFREQW   ="Freq vigorous activity (times per wk)"
      VIGLNGNO   ="Duration vigorous activity: # units"
      VIGLNGTP   ="Duration vigorous activity: Time unit"
      VIGMIN     ="Duration vigorous activity (in minutes)"
      MODNO      ="Freq moderate activity: # of units"
      MODTP      ="Freq moderate activity: Time units"
      MODFREQW   ="Freq light/moderate activity (times per wk)"
      MODLNGNO   ="Duration moderate activity: # of units"
      MODLNGTP   ="Duration moderate activity: Time unit"
      MODMIN     ="Duration light/moderate activity (in minutes)"
      STRNGNO    ="Strength activity freq: # of units"
      STRNGTP    ="Strength activity freq: Time units"
      STRFREQW   ="Freq strength activity (times per wk)"
      ALC1YR     ="Ever had 12+ drinks in any  one year"
      ALCLIFE    ="Had 12+ drinks in ENTIRE LIFE"
      ALC12MNO   ="Freq drank alcohol pst yr:  # of units"
      ALC12MTP   ="Freq drank alcohol pst yr:  Time unit"
      ALC12MWK   ="Freq drank alcohol: Days per week"
      ALC12MYR   ="Freq drank alcohol: Days in past year"
      ALCAMT     ="Average # drinks on days drank"
      ALCSTAT    ="Alcohol drinking status: Recode"
      ALC5UPN1   ="Days 5+/4+ drinks, past yr: # days"
      ALC5UPT1   ="Days 5+/4+ drinks, past yr: Time unit"
      ALC5UPY1   ="Number of days had 5+/4+ drinks past year"
      AHEIGHT    ="Total height in inches"
      AWEIGHTP   ="Weight without shoes (pounds)"
      BMI        ="Body Mass Index (BMI)"

      /* AAU LABELS */

      AUSUALPL   ="Place USUALLY go when sick"
      APLKIND    ="Place to go when sick (most often)"
      AHCPLROU   ="USUALLY go there for routine/preventive care"
      AHCPLKND   ="Place USUALLY go for routine/preventive care"
      AHCCHGYR   ="Change health care place, past 12 m"
      AHCCHGHI   ="Change related to health insurance"
      ANOUSPL1   ="Doesn't need doctor/haven't had problems"
      ANOUSPL2   ="Doesn't like/trust/believe in doctors"
      ANOUSPL3   ="Doesn't know where to go"
      ANOUSPL4   ="Previous doctor is not available/moved"
      ANOUSPL5   ="Too expensive/no insurance/cost"
      ANOUSPL6   ="Speak a different language"
      ANOUSPL7   ="No care available/too far away/not convenient"
      ANOUSPL8   ="Put if off/didn't get around to it"
      ANOUSPL9   ="Other reason no usual place of care"
      APRVTRYR   ="Trouble finding a doctor/provider, past 12 m"
      APRVTRFD   ="Able to find doctor/provider, past 12 m"
      ADRNANP    ="Doctor's office not accept you as new patient, past 12 m"
      ADRNAI     ="Doctor's office not accept your health insurance, past 12 m"
      AHCDLYR1   ="Couldn't get through on phone, past 12 m"
      AHCDLYR2   ="Couldn't get appointment soon enough, past 12 m"
      AHCDLYR3   ="Wait too long in doctor's office, past 12 m"
      AHCDLYR4   ="Not open when you could go, past 12 m"
      AHCDLYR5   ="No transportation, past 12 m"
      AHCAFYR1   ="Couldn't afford prescription medicine, past 12 m"
      AHCAFYR2   ="Couldn't afford mental health care/counseling, past 12 m"
      AHCAFYR3   ="Couldn't afford dental care, past 12 m"
      AHCAFYR4   ="Couldn't afford eyeglasses, past 12 m"
      AHCAFYR5   ="Couldn't afford to see a specialist, past 12 m"
      AHCAFYR6   ="Couldn't afford follow-up care, past 12 m"
      AWORPAY    ="Get sick or have accident, worried about paying medical bills
"
      AHICOMP    ="Health insurance coverage compared to a year ago"
      ARX12MO    =
"Prescribed medication by doctor/health professional, past 12 m"
      ARX12_1    ="Skipped medication doses to save money, past 12 m"
      ARX12_2    ="Took less medicine to save money, past 12 m"
      ARX12_3    ="Delayed filling a prescription to save money, past 12 m"
      ARX12_4    =
"Asked doctor for lower cost medication to save money, past 12 m"
      ARX12_5    =
"Bought prescription drugs from another country to save money, past 12 m"
      ARX12_6    ="Used alternative therapies to save money, past 12 m"
      ADNLONG2   ="Time since last saw a dentist"
      AHCSYR1    ="Seen/talked to mental health professional, past 12 m"
      AHCSYR2    ="Seen/talked to eye doctor, past 12 m"
      AHCSYR3    ="Seen/talked to foot doctor, past 12 m"
      AHCSYR4    ="Seen/talked to a chiropractor, past 12 m"
      AHCSYR5    ="Seen/talked to therapist (PT/OT/etc.), past 12 m"
      AHCSYR6    ="Seen/talked to a NP/PA/midwife, past 12 m"
      AHCSYR7    ="Seen/talked to OB/GYN, past 12 m"
      AHCSYR8    ="Seen/talked to a medical specialist, past 12 m"
      AHCSYR9    ="Seen/talked to a general doctor, past 12 m"
      AHCSYR10   ="Doctor treats both kids and adults"
      AHERNOY2   ="# times in ER/ED, past 12 m"
      AERVISND   ="ER visit at night or on weekend"
      AERHOS     ="ER visit resulted in hospital admission"
      AERREA1R   ="ER visit because didn't have another place to go"
      AERREA2R   ="ER visit because doctors office or clinic was not open"
      AERREA3R   ="ER visit because advised by health provider to go"
      AERREA4R   =
"ER visit because problem too serious for doctor's office/clinic"
      AERREA5R   ="ER visit because only hospital could help"
      AERREA6R   ="ER visit because it is closest provider"
      AERREA7R   ="ER visit because it is usual place to get care"
      AERREA8R   ="Arrived at ER by ambulance/other emergency vehicle"
      AHCHYR     ="Received home care from health professional, past 12 m"
      AHCHMOYR   ="# months of home care, past 12 m"
      AHCHNOY2   ="Total number of home visits"
      AHCNOYR2   ="Total number of office visits, past 12 m"
      ASRGYR     ="Surgery/surgical procedure, past 12 m"
      ASRGNOYR   ="# of surgeries, past 12 m"
      AMDLONGR   ="Time since last seen/talked to health professional"
      AVISLAST   ="Place of last medical visit"
      ALASTYP1   ="General doctor seen on last visit"
      ALASTYP2   ="Specialist seen on last visit"
      ALASTYP3   ="Nurse practitioner/physician assistant seen on last visit"
      ALASTYP4   ="Other health provider seen on last visit"
      ALASTVRB   ="Other Health professional seen (categorized verbatim)"
      AVISAPN2   ="Appointment wait time-number"
      AVISAPT2   ="Appointment wait time-time period"
      AWAITRMN   ="Time in waiting room-number"
      AWAITRMT   ="Time in waiting room-time period"
      HIT1A      ="Looked up health information on Internet, past 12 m"
      HIT2A      ="Filled a prescription on Internet, past 12 m"
      HIT3A      ="Scheduled medical appointment on Internet, past 12 m"
      HIT4A      ="Communicated with health care provider by email, past 12 m"
      HIT5A      ="Used chat groups to learn about health topics, past 12 m"
      SHTFLU2    ="Flu shot past 12 m"
      ASHFLUM2   ="Month of most recent flu shot"
      ASHFLUY2   ="Year of most recent flu shot"
      FLUSHPG1   =
"Flu shot before/during current pregnancy, interviewed Jan-Mar or Aug-Dec, 2014"
      FLUSHPG2   ="Flu shot before/during/after a pregnancy"
      SPRFLU2    ="Flu nasal spray past 12 m"
      ASPFLUM2   ="Month of most recent flu nasal spray"
      ASPFLUY2   ="Year of most recent flu nasal spray"
      SHTPNUYR   ="Pneumonia shot (EVER)"
      APOX       ="Ever had chickenpox"
      APOX12MO   ="Chickenpox, past 12 m"
      AHEP       ="Ever had hepatitis"
      AHEPLIV    ="Ever lived w/ someone w/ hepatitis"
      AHEPBTST   ="Ever had a blood test for hepatitis B"
      SHTHEPB    ="Hepatitis B vaccine (EVER)"
      SHEPDOS    ="# doses of hepatitis B vaccine received"
      SHTHEPA    ="Hepatitis A vaccine (EVER)"
      SHEPANUM   ="# shots of hepatitis A vaccine received"
      AHEPCTST   ="Ever had a blood test for hepatitis C"
      AHEPCRES   ="Main reason tested for Hepatitis C"
      SHINGLES   ="Ever had the Zoster or Shingles vaccine"
      SHTTD      ="Tetanus shot in the past 10 years"
      SHTTD05    ="Tetanus shot given in 2005 or later"
      SHTTDAP2   ="Vaccine included pertussis/whooping cough"
      SHTHPV2    ="Ever received HPV shot/vaccine"
      SHHPVDOS   ="Number of HPV shots received"
      AHPVAGE    ="Age at first HPV shot"
      LIVEV      =
"Ever told you had any kind of chronic/long-term liver condition"
      TRAVEL     =
"Ever traveled outside USA since 1995 (Excluding EUR, JPN, AUS, NZL, and CAN)"
      WRKHLTH2   ="Work or volunteer in a health care setting"
      WRKDIR     ="Direct contact with patients"
      APSBPCH1   =
"Blood pressure checked by doctor/nurse/health professional, past 12 m"
      APSCHCH1   =
"Cholesterol checked by doctor/nurse/health professional, past 12 m"
      APSBSCH1   ="Fasting test for high blood sugar/diabetes, past 12 m"
      APSPAP     ="Pap smear/test, past 12 m"
      APSMAM     ="Mammogram, past 12 m"
      APSCOL     ="Test for colon cancer, past 12 m"
      APSDIET    =
"Doctor/health professional talked to you about diet, past 12 m"
      APSSMKC    =
"Doctor/health professional talked to you about smoking, past 12 m"
      LTCFAM     ="Have family member who needed ADL help for 1+ yrs"
      LTCHELP    ="How likely you will need ADL help"
      LTCWHO1    ="Family would provide ADL help"
      LTCWHO2    ="Hire someone to provide ADL help"
      LTCWHO3    ="Home health care organization would provide ADL help"
      LTCWHO4    ="Nursing home/assisted living would provide ADL help"
      LTCWHO5    ="Other would provide ADL help"
      AINDINS    ="Tried to purchase health insurance directly, past 3 yrs"
      AINDPRCH   ="Purchased health insurance directly, past 3 yrs"
      AINDWHO    ="For whom was health insurance purchased, past 3 yrs"
      AINDDIF1   =
"How difficult to find health insurance for coverage needed, past 3 yrs"
      AINDDIF2   ="How difficult to find affordable health insurance, past 3 yrs
"
      AINDENY1   ="Turned down for coverage, past 3 yrs"
      AINDENY2   =
"Charged higher price for coverage because of health, past 3 yrs"
      AINDENY3   ="Specific health problem excluded from coverage, past 3 yrs"
      AINDNOT1   ="Didn’t buy plan because turned down, past 3 yrs"
      AINDNOT2   ="Didn’t buy plan because of cost, past 3 yrs"
      AINDNOT3   ="Didn’t buy plan because of pre-existing condition, past 3 yrs
"
      AINDNOT4   =
"Didn’t buy plan because got health insurance from other source, past 3 yrs"
      AINDNOT5   ="Other reason didn't buy plan, past 3 yrs"
      AEXCHNG    =
"Looked into purchasing health insurance through Healthcare.gov or Marketplace"

      /* ASI LABELS */

      ASICPUSE   ="How often do you use a computer"
      ASISATHC   ="How satisfied with health care, past 12 mo"
      ASITENUR   ="Length of time living in neighborhood"
      ASINHELP   ="Agree/disagree…people in neighborhood help each other"
      ASINCNTO   ="Agree/disagree…people I count on in neighborhood"
      ASINTRU    ="Agree/disagree…people in neighborhood can be trusted"
      ASINKNT    ="Agree/disagree…close-knit neighborhood"
      ASISIM     ="How you think of yourself (sexual orientation; male)"
      ASISIF     ="How do you think of yourself (sexual orientation; female)"
      ASIRETR    ="How worried are you about…money for retirement"
      ASIMEDC    ="How worried are you about…medical costs of illness/accident"
      ASISTLV    ="How worried are you about…maintaining standard of living"
      ASICNHC    ="How worried are you about…medical costs of healthcare"
      ASICCOLL   ="How worried are you about…paying for children's college"
      ASINBILL   ="How worried are you about…paying monthly bills"
      ASIHCST    ="How worried are you about…paying rent/mortgage/housing costs"
      ASICCMP    ="How worried are you about…credit card payments"
      ASISLEEP   ="Hours of sleep"
      ASISLPFL   ="# times having trouble falling asleep, past week"
      ASISLPST   ="# times having trouble staying asleep, past week"
      ASISLPMD   ="# times taking medication for sleep, past week"
      ASIREST    ="Days woke up feeling rested, past week"
      ASISAD     ="So sad nothing cheers you up, past 30 days"
      ASINERV    ="How often felt nervous, past 30 days"
      ASIRSTLS   ="How often restless/fidgety, past 30 days"
      ASIHOPLS   ="How often felt hopeless, past 30 days"
      ASIEFFRT   ="How often felt everything was an effort, past 30 days"
      ASIWTHLS   ="How often felt worthless, past 30 days"
      ASIMUCH    ="Feelings interfered w/ life, past 30 days"
      ASIHIVT    ="Ever been tested for HIV"
      ASIHIVWN   ="Main reason not tested for HIV"

      /* AWB LABELS */

      AWEBUSE    ="Internet use"
      AWEBOFNO   ="Frequency internet use: # of units"
      AWEBOFTP   ="Frequency internet use: Time units"
      AWEBORP    ="Online research panel membership"
      AWEBEML    ="Email use"
      AWEBMNO    ="Frequency email use: # of units"
      AWEBMTP    ="Frequency email use: Time units"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
   *    (PUT ASTERISK (*) BEFORE WORD "FORMAT"
        IN NEXT STATEMENT TO PREVENT FORMAT
        ASSOCIATIONS BEING STORED WITH DATA SET);
   FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE   SAP001X.   SRVY_YR   SAP002X.   HHX       $GROUPC.
      INTV_QRT  SAP004X.   INTV_MON  SAP005X.   WTIA_SA   GROUPN.
      WTFA_SA   GROUPN.

      /* UCF FORMAT ASSOCIATIONS */

      REGION    SAP010X.

      /* HHC FORMAT ASSOCIATIONS */

      SEX       SAP013X.   HISPAN_I  SAP014X.   RACERPI2  SAP015X.
      MRACRPI2  SAP016X.   MRACBPI2  SAP017X.   AGE_P     SAP018X.

      /* FID FORMAT ASSOCIATIONS */

      R_MARITL  SAP019X.

      /* AID FORMAT ASSOCIATIONS */

      PROXYSA   SAP020X.   PROX1     SAP021X.   PROX2     SAP022X.
      LATEINTA  SAP023X.

      /* FDB FORMAT ASSOCIATIONS */

      FDRN_FLG  SAP024X.

      /* ASD FORMAT ASSOCIATIONS */

      DOINGLWA  SAP025X.   WHYNOWKA  SAP026X.   EVERWRK   SAP027X.
      INDSTRN1  SAP028X.   INDSTRN2  SAP028X.   OCCUPN1   SAP030X.
      OCCUPN2   SAP030X.   WRKCATA   SAP032X.   BUSINC1A  SAP027X.
      LOCALL1A  SAP034X.   YRSWRKPA  SAP035X.   WRKLONGH  SAP027X.
      HOURPDA   SAP027X.   PDSICKA   SAP027X.   ONEJOB    SAP027X.
      WRKLYR4   SAP040X.

      /* ACN FORMAT ASSOCIATIONS */

      HYPEV     SAP027X.   HYPDIFV   SAP027X.   HYPYR1    SAP027X.
      HYBPCKNO  SAP044X.   HYBPCKTP  SAP045X.   HYBPLEV   SAP046X.
      HYPMDEV2  SAP027X.   HYPMED2   SAP027X.   CHLEV     SAP027X.
      CHLYR     SAP027X.   CLCKNO    SAP044X.   CLCKTP    SAP045X.
      CHLMDEV2  SAP027X.   CHLMDNW2  SAP027X.   CHDEV     SAP027X.
      ANGEV     SAP027X.   MIEV      SAP027X.   HRTEV     SAP027X.
      STREV     SAP027X.   EPHEV     SAP027X.   JAWP      SAP027X.
      WEA       SAP027X.   CHE       SAP027X.   ARM       SAP027X.
      BRTH      SAP027X.   AHADO     SAP066X.   FACE      SAP027X.
      SPEAKING  SAP027X.   EYE       SAP027X.   WALKING   SAP027X.
      HEADACHE  SAP027X.   ASTDO     SAP066X.   COPDEV    SAP027X.
      ASPMEDEV  SAP027X.   ASPMEDAD  SAP027X.   ASPMDMED  SAP027X.
      ASPONOWN  SAP027X.   AASMEV    SAP027X.   AASSTILL  SAP027X.
      AASMYR    SAP027X.   AASERYR1  SAP027X.   ULCEV     SAP027X.
      ULCYR     SAP027X.   CANEV     SAP027X.   CNKIND1   SAP085X.
      CNKIND2   SAP085X.   CNKIND3   SAP085X.   CNKIND4   SAP085X.
      CNKIND5   SAP085X.   CNKIND6   SAP085X.   CNKIND7   SAP085X.
      CNKIND8   SAP085X.   CNKIND9   SAP085X.   CNKIND10  SAP085X.
      CNKIND11  SAP085X.   CNKIND12  SAP085X.   CNKIND13  SAP085X.
      CNKIND14  SAP085X.   CNKIND15  SAP085X.   CNKIND16  SAP085X.
      CNKIND17  SAP085X.   CNKIND18  SAP085X.   CNKIND19  SAP085X.
      CNKIND20  SAP085X.   CNKIND21  SAP085X.   CNKIND22  SAP085X.
      CNKIND23  SAP085X.   CNKIND24  SAP085X.   CNKIND25  SAP085X.
      CNKIND26  SAP085X.   CNKIND27  SAP085X.   CNKIND28  SAP085X.
      CNKIND29  SAP085X.   CNKIND30  SAP085X.   CNKIND31  SAP085X.
      CANAGE1   SAP116X.   CANAGE2   SAP116X.   CANAGE3   SAP116X.
      CANAGE4   SAP116X.   CANAGE5   SAP116X.   CANAGE6   SAP116X.
      CANAGE7   SAP116X.   CANAGE8   SAP116X.   CANAGE9   SAP116X.
      CANAGE10  SAP116X.   CANAGE11  SAP116X.   CANAGE12  SAP116X.
      CANAGE13  SAP116X.   CANAGE14  SAP116X.   CANAGE15  SAP116X.
      CANAGE16  SAP116X.   CANAGE17  SAP116X.   CANAGE18  SAP116X.
      CANAGE19  SAP116X.   CANAGE20  SAP116X.   CANAGE21  SAP116X.
      CANAGE22  SAP116X.   CANAGE23  SAP116X.   CANAGE24  SAP116X.
      CANAGE25  SAP116X.   CANAGE26  SAP116X.   CANAGE27  SAP116X.
      CANAGE28  SAP116X.   CANAGE29  SAP116X.   CANAGE30  SAP116X.
      DIBEV     SAP146X.   DIBPRE1   SAP027X.   DIBAGE    SAP116X.
      DIFAGE2   SAP149X.   INSLN     SAP027X.   DIBPILL   SAP027X.
      AHAYFYR   SAP027X.   SINYR     SAP027X.   CBRCHYR   SAP027X.
      KIDWKYR   SAP027X.   LIVYR     SAP027X.   JNTSYMP   SAP027X.
      JMTHP1    SAP085X.   JMTHP2    SAP085X.   JMTHP3    SAP085X.
      JMTHP4    SAP085X.   JMTHP5    SAP085X.   JMTHP6    SAP085X.
      JMTHP7    SAP085X.   JMTHP8    SAP085X.   JMTHP9    SAP085X.
      JMTHP10   SAP085X.   JMTHP11   SAP085X.   JMTHP12   SAP085X.
      JMTHP13   SAP085X.   JMTHP14   SAP085X.   JMTHP15   SAP085X.
      JMTHP16   SAP085X.   JMTHP17   SAP085X.   JNTPN     SAP175X.
      JNTCHR    SAP027X.   JNTHP     SAP027X.   ARTH1     SAP027X.
      ARTHWT    SAP027X.   ARTHPH    SAP027X.   ARTHCLS   SAP027X.
      ARTHLMT   SAP027X.   ARTHWRK   SAP027X.   PAINECK   SAP027X.
      PAINLB    SAP027X.   PAINLEG   SAP027X.   PAINFACE  SAP027X.
      AMIGR     SAP027X.   ACOLD2W   SAP027X.   AINTIL2W  SAP027X.
      PREGNOW   SAP027X.   PREGFLYR  SAP027X.   AHEARST2  SAP193X.
      HRWORS    SAP027X.   HRWHICH   SAP195X.   HRRIGHT   SAP193X.
      HRLEFT    SAP193X.   HRWHISP1  SAP027X.   HRTALK1   SAP027X.
      HRSHOUT1  SAP027X.   HRSPEAK1  SAP027X.   HRCOCRE1  SAP027X.
      HRCOCIM1  SAP027X.   HRFAM     SAP027X.   HRBACK    SAP205X.
      HRFRUST   SAP205X.   HRSAFETY  SAP205X.   HEARAGE1  SAP208X.
      HRCAUS1   SAP209X.   HRPROBHP  SAP210X.   HRENT     SAP027X.
      HRAUD     SAP027X.   HRTEST    SAP210X.   HRAIDNOW  SAP027X.
      HRAIDLNG  SAP215X.   HRAID2WK  SAP216X.   HRAIDHLP  SAP217X.
      HRAIDEV   SAP027X.   HRAIDREC  SAP027X.   HRAIDLGP  SAP215X.
      HRAIDOF2  SAP216X.   HRAIDN01  SAP085X.   HRAIDN02  SAP085X.
      HRAIDN03  SAP085X.   HRAIDN04  SAP085X.   HRAIDN05  SAP085X.
      HRAIDN06  SAP085X.   HRAIDN07  SAP085X.   HRAIDN08  SAP085X.
      HRAIDN09  SAP085X.   HRAIDN10  SAP085X.   HRAIDN11  SAP085X.
      HRAUDTRN  SAP027X.   HRALDS    SAP027X.   HRALDT01  SAP085X.
      HRALDT02  SAP085X.   HRALDT03  SAP085X.   HRALDT04  SAP085X.
      HRALDT05  SAP085X.   HRALDT06  SAP085X.   HRALDT07  SAP085X.
      HRALDT08  SAP085X.   HRALDT09  SAP085X.   HRALDT10  SAP085X.
      HRALDT11  SAP085X.   HRBDIZZ   SAP027X.   HRTIN     SAP027X.
      HRTINOFT  SAP248X.   HRTINLNG  SAP249X.   HRTINMUS  SAP027X.
      HRTINSLP  SAP027X.   HRTINPRO  SAP252X.   HRTINDIS  SAP027X.
      HRTINDOC  SAP027X.   HRTINRM   SAP027X.   HREMTY01  SAP085X.
      HREMTY02  SAP085X.   HREMTY03  SAP085X.   HREMTY04  SAP085X.
      HREMTY05  SAP085X.   HREMTY06  SAP085X.   HREMTY07  SAP085X.
      HREMTY08  SAP085X.   HREMTY09  SAP085X.   HREMTY10  SAP085X.
      HREMTY11  SAP085X.   HREMTY12  SAP085X.   HRTNRMHP  SAP217X.
      HRHCUSIS  SAP027X.   HRHCPROB  SAP252X.   HRFIRE    SAP027X.
      HRFIRTYP  SAP272X.   HRFRTIM   SAP273X.   HR12MR    SAP274X.
      HRFRPROT  SAP205X.   HRTOTR    SAP276X.   HRFRPRT2  SAP205X.
      HRWKVLNS  SAP027X.   HRWKLNS   SAP027X.   HRWKVLNT  SAP249X.
      HRWKVLEX  SAP273X.   HRWKVLP1  SAP205X.   HRWKVLP2  SAP205X.
      HRWRLNS   SAP249X.   HRWKLEX   SAP273X.   HRWKLP1   SAP205X.
      HRWKLP2   SAP205X.   HRLSVLNS  SAP027X.   HRVLTP01  SAP085X.
      HRVLTP02  SAP085X.   HRVLTP03  SAP085X.   HRVLTP04  SAP085X.
      HRVLTP05  SAP085X.   HRVLTP06  SAP085X.   HRVLTP07  SAP085X.
      HRVLTP08  SAP085X.   HRVLTP09  SAP085X.   HRVLTP10  SAP085X.
      HRLNOS    SAP027X.   HRLTP01   SAP085X.   HRLTP02   SAP085X.
      HRLTP03   SAP085X.   HRLTP04   SAP085X.   HRLTP05   SAP085X.
      HRLTP06   SAP085X.   HRLTP07   SAP085X.   HRLTP08   SAP085X.
      HRLTP09   SAP085X.   HRLTP10   SAP085X.   HRNOSEXP  SAP273X.
      HRLSP1    SAP205X.   HRLSP2    SAP205X.   HRINTNET  SAP027X.
      HRINTHL   SAP027X.   HRINTHA   SAP027X.   HRINTTN   SAP027X.
      HRINTDZ   SAP027X.   HRINTHP   SAP027X.   HRINTHPR  SAP027X.
      AVISION   SAP027X.   ABLIND    SAP027X.   LUPPRT    SAP027X.

      /* AHS FORMAT ASSOCIATIONS */

      WKDAYR    SAP323X.   BEDDAYR   SAP323X.   AHSTATYR  SAP325X.
      SPECEQ    SAP027X.   FLWALK    SAP327X.   FLCLIMB   SAP327X.
      FLSTAND   SAP327X.   FLSIT     SAP327X.   FLSTOOP   SAP327X.
      FLREACH   SAP327X.   FLGRASP   SAP327X.   FLCARRY   SAP327X.
      FLPUSH    SAP327X.   FLSHOP    SAP327X.   FLSOCL    SAP327X.
      FLRELAX   SAP327X.   FLA1AR    SAP339X.   AFLHCA1   SAP085X.
      AFLHCA2   SAP085X.   AFLHCA3   SAP085X.   AFLHCA4   SAP085X.
      AFLHCA5   SAP085X.   AFLHCA6   SAP085X.   AFLHCA7   SAP085X.
      AFLHCA8   SAP085X.   AFLHCA9   SAP085X.   AFLHCA10  SAP085X.
      AFLHCA11  SAP085X.   AFLHCA12  SAP085X.   AFLHCA13  SAP085X.
      ALHCA14A  SAP085X.   AFLHCA15  SAP085X.   AFLHCA16  SAP085X.
      AFLHCA17  SAP085X.   AFLHCA18  SAP085X.   AFLHC19_  SAP085X.
      AFLHC20_  SAP085X.   AFLHC21_  SAP085X.   AFLHC22_  SAP085X.
      AFLHC23_  SAP085X.   AFLHC24_  SAP085X.   AFLHC25_  SAP085X.
      AFLHC26_  SAP085X.   AFLHC27_  SAP085X.   AFLHC28_  SAP085X.
      AFLHC29_  SAP085X.   AFLHC30_  SAP085X.   AFLHC31_  SAP085X.
      AFLHC32_  SAP085X.   AFLHC33_  SAP085X.   AFLHC34_  SAP085X.
      AFLHCA90  SAP085X.   AFLHCA91  SAP085X.   ALTIME1   SAP376X.
      ALUNIT1   SAP377X.   ALDURA1   SAP378X.   ALDURB1   SAP379X.
      ALCHRC1   SAP380X.   ALTIME2   SAP376X.   ALUNIT2   SAP377X.
      ALDURA2   SAP378X.   ALDURB2   SAP379X.   ALCHRC2   SAP380X.
      ALTIME3   SAP376X.   ALUNIT3   SAP377X.   ALDURA3   SAP378X.
      ALDURB3   SAP379X.   ALCHRC3   SAP380X.   ALTIME4   SAP376X.
      ALUNIT4   SAP377X.   ALDURA4   SAP378X.   ALDURB4   SAP379X.
      ALCHRC4   SAP380X.   ALTIME5   SAP376X.   ALUNIT5   SAP377X.
      ALDURA5   SAP378X.   ALDURB5   SAP379X.   ALCHRC5   SAP380X.
      ALTIME6   SAP376X.   ALUNIT6   SAP377X.   ALDURA6   SAP378X.
      ALDURB6   SAP379X.   ALCHRC6   SAP380X.   ALTIME7   SAP376X.
      ALUNIT7   SAP377X.   ALDURA7   SAP378X.   ALDURB7   SAP379X.
      ALCHRC7   SAP380X.   ALTIME8   SAP376X.   ALUNIT8   SAP377X.
      ALDURA8   SAP378X.   ALDURB8   SAP379X.   ALCHRC8   SAP380X.
      ALTIME9   SAP376X.   ALUNIT9   SAP377X.   ALDURA9   SAP378X.
      ALDURB9   SAP379X.   ALCHRC9   SAP380X.   ALTIME10  SAP376X.
      ALUNIT10  SAP377X.   ALDURA10  SAP378X.   ALDURB10  SAP379X.
      ALCHRC10  SAP380X.   ALTIME11  SAP376X.   ALUNIT11  SAP377X.
      ALDURA11  SAP378X.   ALDURB11  SAP379X.   ALCHRC11  SAP380X.
      ALTIME12  SAP376X.   ALUNIT12  SAP377X.   ALDURA12  SAP378X.
      ALDURB12  SAP379X.   ALCHRC12  SAP380X.   ALTIME13  SAP376X.
      ALUNIT13  SAP377X.   ALDURA13  SAP378X.   ALDURB13  SAP379X.
      ALCHRC13  SAP380X.   ATIME14A  SAP376X.   AUNIT14A  SAP377X.
      ADURA14A  SAP378X.   ADURB14A  SAP379X.   ACHRC14A  SAP380X.
      ALTIME15  SAP376X.   ALUNIT15  SAP377X.   ALDURA15  SAP378X.
      ALDURB15  SAP379X.   ALCHRC15  SAP380X.   ALTIME16  SAP376X.
      ALUNIT16  SAP377X.   ALDURA16  SAP378X.   ALDURB16  SAP379X.
      ALCHRC16  SAP380X.   ALTIME17  SAP376X.   ALUNIT17  SAP377X.
      ALDURA17  SAP378X.   ALDURB17  SAP379X.   ALCHRC17  SAP380X.
      ALTIME18  SAP376X.   ALUNIT18  SAP377X.   ALDURA18  SAP378X.
      ALDURB18  SAP379X.   ALCHRC18  SAP380X.   ALTIME19  SAP376X.
      ALUNIT19  SAP377X.   ALDURA19  SAP378X.   ALDURB19  SAP379X.
      ALCHRC19  SAP380X.   ALTIME20  SAP376X.   ALUNIT20  SAP377X.
      ALDURA20  SAP378X.   ALDURB20  SAP379X.   ALCHRC20  SAP380X.
      ALTIME21  SAP376X.   ALUNIT21  SAP377X.   ALDURA21  SAP378X.
      ALDURB21  SAP379X.   ALCHRC21  SAP380X.   ALTIME22  SAP376X.
      ALUNIT22  SAP377X.   ALDURA22  SAP378X.   ALDURB22  SAP379X.
      ALCHRC22  SAP380X.   ALTIME23  SAP376X.   ALUNIT23  SAP377X.
      ALDURA23  SAP378X.   ALDURB23  SAP379X.   ALCHRC23  SAP380X.
      ALTIME24  SAP376X.   ALUNIT24  SAP377X.   ALDURA24  SAP378X.
      ALDURB24  SAP379X.   ALCHRC24  SAP380X.   ALTIME25  SAP376X.
      ALUNIT25  SAP377X.   ALDURA25  SAP378X.   ALDURB25  SAP379X.
      ALCHRC25  SAP380X.   ALTIME26  SAP376X.   ALUNIT26  SAP377X.
      ALDURA26  SAP378X.   ALDURB26  SAP379X.   ALCHRC26  SAP380X.
      ALTIME27  SAP376X.   ALUNIT27  SAP377X.   ALDURA27  SAP378X.
      ALDURB27  SAP379X.   ALCHRC27  SAP380X.   ALTIME28  SAP376X.
      ALUNIT28  SAP377X.   ALDURA28  SAP378X.   ALDURB28  SAP379X.
      ALCHRC28  SAP380X.   ALTIME29  SAP376X.   ALUNIT29  SAP377X.
      ALDURA29  SAP378X.   ALDURB29  SAP379X.   ALCHRC29  SAP380X.
      ALTIME30  SAP376X.   ALUNIT30  SAP377X.   ALDURA30  SAP378X.
      ALDURB30  SAP379X.   ALCHRC30  SAP380X.   ALTIME31  SAP376X.
      ALUNIT31  SAP377X.   ALDURA31  SAP378X.   ALDURB31  SAP379X.
      ALCHRC31  SAP380X.   ALTIME32  SAP376X.   ALUNIT32  SAP377X.
      ALDURA32  SAP378X.   ALDURB32  SAP379X.   ALCHRC32  SAP380X.
      ALTIME33  SAP376X.   ALUNIT33  SAP377X.   ALDURA33  SAP378X.
      ALDURB33  SAP379X.   ALCHRC33  SAP380X.   ALTIME34  SAP376X.
      ALUNIT34  SAP377X.   ALDURA34  SAP378X.   ALDURB34  SAP379X.
      ALCHRC34  SAP380X.   ALTIME90  SAP376X.   ALUNIT90  SAP377X.
      ALDURA90  SAP378X.   ALDURB90  SAP379X.   ALCHRC90  SAP380X.
      ALTIME91  SAP376X.   ALUNIT91  SAP377X.   ALDURA91  SAP378X.
      ALDURB91  SAP379X.   ALCHRC91  SAP380X.   ALCNDRT   SAP556X.
      ALCHRONR  SAP557X.

      /* AHB FORMAT ASSOCIATIONS */

      SMKEV     SAP027X.   SMKREG    SAP559X.   SMKNOW    SAP560X.
      SMKSTAT2  SAP561X.   SMKQTNO   SAP562X.   SMKQTTP   SAP563X.
      SMKQTY    SAP564X.   CIGSDA1   SAP565X.   CIGDAMO   SAP566X.
      CIGSDA2   SAP565X.   CIGSDAY   SAP565X.   CIGQTYR   SAP027X.
      OTHCIGEV  SAP027X.   OTHCIGED  SAP571X.   SMKLESEV  SAP027X.
      SMKLESED  SAP571X.   TOBLASYR  SAP027X.   TOBQTYR   SAP027X.
      ECIGEV    SAP027X.   ECIGED    SAP560X.   VIGNO     SAP578X.
      VIGTP     SAP579X.   VIGFREQW  SAP580X.   VIGLNGNO  SAP581X.
      VIGLNGTP  SAP582X.   VIGMIN    SAP581X.   MODNO     SAP578X.
      MODTP     SAP579X.   MODFREQW  SAP586X.   MODLNGNO  SAP581X.
      MODLNGTP  SAP582X.   MODMIN    SAP581X.   STRNGNO   SAP578X.
      STRNGTP   SAP579X.   STRFREQW  SAP592X.   ALC1YR    SAP027X.
      ALCLIFE   SAP027X.   ALC12MNO  SAP595X.   ALC12MTP  SAP596X.
      ALC12MWK  SAP597X.   ALC12MYR  SAP598X.   ALCAMT    SAP599X.
      ALCSTAT   SAP600X.   ALC5UPN1  SAP598X.   ALC5UPT1  SAP602X.
      ALC5UPY1  SAP598X.   AHEIGHT   SAP604X.   AWEIGHTP  SAP605X.
      BMI       SAP606X.

      /* AAU FORMAT ASSOCIATIONS */

      AUSUALPL  SAP607X.   APLKIND   SAP608X.   AHCPLROU  SAP027X.
      AHCPLKND  SAP610X.   AHCCHGYR  SAP027X.   AHCCHGHI  SAP027X.
      ANOUSPL1  SAP613X.   ANOUSPL2  SAP613X.   ANOUSPL3  SAP613X.
      ANOUSPL4  SAP613X.   ANOUSPL5  SAP613X.   ANOUSPL6  SAP613X.
      ANOUSPL7  SAP613X.   ANOUSPL8  SAP613X.   ANOUSPL9  SAP613X.
      APRVTRYR  SAP027X.   APRVTRFD  SAP623X.   ADRNANP   SAP623X.
      ADRNAI    SAP623X.   AHCDLYR1  SAP027X.   AHCDLYR2  SAP027X.
      AHCDLYR3  SAP027X.   AHCDLYR4  SAP027X.   AHCDLYR5  SAP027X.
      AHCAFYR1  SAP027X.   AHCAFYR2  SAP027X.   AHCAFYR3  SAP027X.
      AHCAFYR4  SAP027X.   AHCAFYR5  SAP623X.   AHCAFYR6  SAP623X.
      AWORPAY   SAP637X.   AHICOMP   SAP325X.   ARX12MO   SAP027X.
      ARX12_1   SAP027X.   ARX12_2   SAP623X.   ARX12_3   SAP027X.
      ARX12_4   SAP027X.   ARX12_5   SAP027X.   ARX12_6   SAP027X.
      ADNLONG2  SAP646X.   AHCSYR1   SAP027X.   AHCSYR2   SAP027X.
      AHCSYR3   SAP027X.   AHCSYR4   SAP027X.   AHCSYR5   SAP027X.
      AHCSYR6   SAP027X.   AHCSYR7   SAP027X.   AHCSYR8   SAP027X.
      AHCSYR9   SAP027X.   AHCSYR10  SAP027X.   AHERNOY2  SAP657X.
      AERVISND  SAP027X.   AERHOS    SAP027X.   AERREA1R  SAP027X.
      AERREA2R  SAP027X.   AERREA3R  SAP027X.   AERREA4R  SAP027X.
      AERREA5R  SAP027X.   AERREA6R  SAP027X.   AERREA7R  SAP623X.
      AERREA8R  SAP623X.   AHCHYR    SAP027X.   AHCHMOYR  SAP175X.
      AHCHNOY2  SAP670X.   AHCNOYR2  SAP657X.   ASRGYR    SAP027X.
      ASRGNOYR  SAP673X.   AMDLONGR  SAP646X.   AVISLAST  SAP675X.
      ALASTYP1  SAP085X.   ALASTYP2  SAP085X.   ALASTYP3  SAP085X.
      ALASTYP4  SAP085X.   ALASTVRB  $SAP680X.  AVISAPN2  SAP681X.
      AVISAPT2  SAP682X.   AWAITRMN  SAP683X.   AWAITRMT  SAP684X.
      HIT1A     SAP623X.   HIT2A     SAP027X.   HIT3A     SAP027X.
      HIT4A     SAP623X.   HIT5A     SAP623X.   SHTFLU2   SAP027X.
      ASHFLUM2  SAP691X.   ASHFLUY2  SAP692X.   FLUSHPG1  SAP693X.
      FLUSHPG2  SAP694X.   SPRFLU2   SAP027X.   ASPFLUM2  SAP691X.
      ASPFLUY2  SAP692X.   SHTPNUYR  SAP027X.   APOX      SAP027X.
      APOX12MO  SAP027X.   AHEP      SAP027X.   AHEPLIV   SAP027X.
      AHEPBTST  SAP623X.   SHTHEPB   SAP027X.   SHEPDOS   SAP705X.
      SHTHEPA   SAP027X.   SHEPANUM  SAP707X.   AHEPCTST  SAP623X.
      AHEPCRES  SAP709X.   SHINGLES  SAP027X.   SHTTD     SAP027X.
      SHTTD05   SAP027X.   SHTTDAP2  SAP713X.   SHTHPV2   SAP714X.
      SHHPVDOS  SAP715X.   AHPVAGE   SAP581X.   LIVEV     SAP027X.
      TRAVEL    SAP027X.   WRKHLTH2  SAP027X.   WRKDIR    SAP027X.
      APSBPCH1  SAP027X.   APSCHCH1  SAP027X.   APSBSCH1  SAP027X.
      APSPAP    SAP027X.   APSMAM    SAP027X.   APSCOL    SAP623X.
      APSDIET   SAP027X.   APSSMKC   SAP623X.   LTCFAM    SAP623X.
      LTCHELP   SAP730X.   LTCWHO1   SAP613X.   LTCWHO2   SAP613X.
      LTCWHO3   SAP613X.   LTCWHO4   SAP613X.   LTCWHO5   SAP613X.
      AINDINS   SAP623X.   AINDPRCH  SAP623X.   AINDWHO   SAP738X.
      AINDDIF1  SAP739X.   AINDDIF2  SAP740X.   AINDENY1  SAP623X.
      AINDENY2  SAP623X.   AINDENY3  SAP623X.   AINDNOT1  SAP613X.
      AINDNOT2  SAP613X.   AINDNOT3  SAP613X.   AINDNOT4  SAP613X.
      AINDNOT5  SAP613X.   AEXCHNG   SAP027X.

      /* ASI FORMAT ASSOCIATIONS */

      ASICPUSE  SAP750X.   ASISATHC  SAP751X.   ASITENUR  SAP752X.
      ASINHELP  SAP753X.   ASINCNTO  SAP753X.   ASINTRU   SAP753X.
      ASINKNT   SAP753X.   ASISIM    SAP757X.   ASISIF    SAP758X.
      ASIRETR   SAP759X.   ASIMEDC   SAP759X.   ASISTLV   SAP759X.
      ASICNHC   SAP759X.   ASICCOLL  SAP763X.   ASINBILL  SAP759X.
      ASIHCST   SAP759X.   ASICCMP   SAP766X.   ASISLEEP  SAP175X.
      ASISLPFL  SAP768X.   ASISLPST  SAP769X.   ASISLPMD  SAP770X.
      ASIREST   SAP771X.   ASISAD    SAP772X.   ASINERV   SAP772X.
      ASIRSTLS  SAP772X.   ASIHOPLS  SAP772X.   ASIEFFRT  SAP772X.
      ASIWTHLS  SAP772X.   ASIMUCH   SAP778X.   ASIHIVT   SAP027X.
      ASIHIVWN  SAP780X.

      /* AWB FORMAT ASSOCIATIONS */

      AWEBUSE   SAP027X.   AWEBOFNO  SAP581X.   AWEBOFTP  SAP783X.
      AWEBORP   SAP027X.   AWEBEML   SAP027X.   AWEBMNO   SAP581X.
      AWEBMTP   SAP783X.;
RUN;

PROC CONTENTS DATA=NHIS.SAMADULT;
   TITLE1 'CONTENTS OF THE 2014 NHIS Sample Adult FILE';

PROC FREQ DATA=NHIS.SAMADULT NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2014 NHIS Sample Adult FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA_SA;

PROC FREQ DATA=NHIS.SAMADULT NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2014 NHIS Sample Adult FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
