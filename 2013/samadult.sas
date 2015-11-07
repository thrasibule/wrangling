*********************************************************************
 JUNE 11, 2014  2:40 PM
 
 This is an example of a SAS program that creates a SAS
 file from the 2013 NHIS Public Use SAMADULT.DAT ASCII file
 
 This is stored in SAMADULT.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2013";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2013";

FILENAME ASCIIDAT 'C:\NHIS2013\SAMADULT.dat';

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
   VALUE SAP061X
      000                = "000 None"
      996                = "996 Unable to do this activity"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP063X
      1                  = "1 Inhaler or disk"
      2                  = "2 Nebulizer"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP065X
      1                  = "1 Every day or almost every day"
      2                  = "2 Less often"
      3                  = "3 Never"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP071X
      1                  = "1 Yes"
      2                  = "2 No"
      3                  = "3 Was told no changes needed"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP072X
      000                = "000 None"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don’t know"
   ;
   VALUE SAP073X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP079X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP110X
      85                 = "85 85+ years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP140X
      1                  = "1 Yes"
      2                  = "2 No"
      3                  = "3 Borderline"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP143X
      00                 = "00 Within past year"
      85                 = "85 85+ years"
      96                 = "96 1+ year(s) with diabetes and age is 85+"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP148X
      0                  = "0 None"
      1                  = "1 One"
      2                  = "2 Two or three"
      3                  = "3 Between four and ten"
      4                  = "4 More than 10"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP150X
      1                  = "1 Not at all"
      2                  = "2 Slightly"
      3                  = "3 Moderately"
      4                  = "4 Quite a bit"
      5                  = "5 Extremely"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP189X
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
   VALUE SAP200X
      000                = "000 None"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP202X
      1                  = "1 Better"
      2                  = "2 Worse"
      3                  = "3 About the same"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP204X
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
   VALUE SAP216X
      1                  = "1 Limited in any way"
      2                  = "2 Not limited in any way"
      3                  = "3 Unknown if limited"
   ;
   VALUE SAP253X
      95                 = "95 95+"
      96                 = "96 Since birth"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP254X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      6                  = "6 Since birth"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP255X
      00                 = "00 Less than 1 year"
      85                 = "85 85+ years"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP256X
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP257X
      1                  = "1 Chronic"
      2                  = "2 Not chronic"
      9                  = "9 Unknown if chronic"
   ;
   VALUE SAP433X
      1                  = 
"1 At least one condition causing functional limitation is chronic"
      2                  = "2 No condition causing functional limitation"
      9                  = 
"9 Unknown if any condition causing functional limitation is chronic"
   ;
   VALUE SAP434X
      0                  = 
"0 Not limited in any way (including unknown if limited)"
      1                  = "1 Limited; caused by at least one chronic condition"
      2                  = "2 Limited; not caused by chronic condition"
      3                  = "3 Limited; unknown if condition is chronic"
   ;
   VALUE SAP436X
      85                 = "85 85 years or older"
      96                 = "96 Never smoked regularly"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP437X
      1                  = "1 Every day"
      2                  = "2 Some days"
      3                  = "3 Not at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP438X
      1                  = "1 Current every day smoker"
      2                  = "2 Current some day smoker"
      3                  = "3 Former smoker"
      4                  = "4 Never smoker"
      5                  = "5 Smoker, current status unknown"
      9                  = "9 Unknown if ever smoked"
   ;
   VALUE SAP439X
      95                 = "95 95+"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP440X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP441X
      00                 = "00 Less than 1 year"
      70                 = "70 70+ years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP442X
      95                 = "95 95+ cigarettes"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP443X
      00                 = "00 None"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP448X
      1                  = "1 Every day"
      2                  = "2 Some days"
      3                  = "3 Rarely"
      4                  = "4 Not at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP453X
      000                = "000 Never"
      996                = "996 Unable to do this type activity"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP454X
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
   VALUE SAP455X
      00                 = "00 Less than once per week"
      95                 = "95 Never"
      96                 = "96 Unable to do vigorous activity"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP456X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP457X
      1                  = "1 Minutes"
      2                  = "2 Hours"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP461X
      00                 = "00 Less than once per week"
      95                 = "95 Never"
      96                 = "96 Unable to do light or moderate activity"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP467X
      00                 = "00 Less than once per week"
      95                 = "95 Never"
      96                 = "96 Unable to do strength activity"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP470X
      000                = "000 Never"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP471X
      0                  = "0 Never/None"
      1                  = "1 Week"
      2                  = "2 Month"
      3                  = "3 Year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP472X
      00                 = "00 Less than one day per week"
      95                 = "95 Did not drink in past year"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP473X
      000                = "000 Never/none"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP474X
      95                 = "95 95+ drinks"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP475X
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
   VALUE SAP477X
      0                  = "0 Never/None"
      1                  = "1 Per week"
      2                  = "2 Per month"
      3                  = "3 Per year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP479X
      96                 = "96 Not available"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP480X
      996                = "996 Not available"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SAP481X
      99.95              = "99.95 99.95+"
      99.99              = "99.99 Unknown"
   ;
   VALUE SAP482X
      1                  = "1 Yes"
      2                  = "2 There is NO place"
      3                  = "3 There is MORE THAN ONE place"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP483X
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
   VALUE SAP485X
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
   VALUE SAP488X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP500X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t' know"
   ;
   VALUE SAP512X
      1                  = "1 Very worried"
      2                  = "2 Somewhat worried"
      3                  = "3 Not at all worried"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP521X
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
   VALUE SAP532X
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
   VALUE SAP544X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP545X
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
   VALUE SAP548X
      95                 = "95 95+ times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP550X
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
   VALUE $SAP555X
      OTHER              = "Verbatim responses categorized"
      ' '                 = ' '
   ;
   VALUE SAP556X
      00                 = "00 Same day/walk-in appt/no appt made"
      96                 = 
"96 Routine appt/appt arranged on previous visit/rec'd appt reminder card"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP557X
      1                  = "1 Days"
      2                  = "2 Weeks"
      3                  = "3 Months"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP558X
      00                 = "00 No time"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don’t know"
   ;
   VALUE SAP559X
      1                  = "1 Minutes"
      2                  = "2 Hours"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP566X
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
   VALUE SAP567X
      .                   = '.'
      OTHER              = "Year"
      9997               = "9997 Refused"
      9998               = "9998 Not ascertained"
      9999               = "9999 Don't know"
   ;
   VALUE SAP568X
      1                  = "1 Before this pregnancy"
      2                  = "2 During this pregnancy"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP569X
      1                  = "1 Before this pregnancy"
      2                  = "2 During this pregnancy"
      3                  = "3 After this pregnancy"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP580X
      1                  = "1 Received at least 3 doses"
      2                  = "2 Received less than 3 doses"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP582X
      96                 = "96 Received all shots"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP584X
      1                  = 
"1 You or your doctor thought you were at risk of having hepatitis C because a b
lood test or symptoms like fatigue, nausea, stomach pain, yel"
      2                  = "2 You were born from 1945 through 1965"
      3                  = 
"3 You were at risk of hepatitis C infection due to exposure to blood on your jo
b, injection drug use or receipt of transfusion before 1992"
      4                  = "4 Some other reason"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP588X
      1                  = "1 Yes-included pertussis"
      2                  = "2 No-did not include pertussis"
      3                  = "3 Doctor did not say"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP589X
      1                  = "1 Yes"
      2                  = "2 No"
      3                  = "3 Doctor refused when asked"
      7                  = "7 Refused"
      8                  = "8 Not Ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP590X
      50                 = "50 50+"
      96                 = "96 All shots"
      97                 = "97 Refused"
      98                 = "98 Not Ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP605X
      1                  = "1 Very likely"
      2                  = "2 Somewhat likely"
      3                  = "3 Somewhat unlikely"
      4                  = "4 Very unlikely"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP613X
      1                  = "1 Self"
      2                  = "2 Someone else in family"
      3                  = "3 Both"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP614X
      1                  = "1 Very difficult"
      2                  = "2 Somewhat difficult"
      3                  = "3 Not at all difficult"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SAP615X
      1                  = "1 Very difficult"
      2                  = "2 Somewhat difficult"
      3                  = "3 Not at all difficult"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP628X
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
      96                 = "96 Time period format"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP629X
      9996               = "9996 Time period format"
      9997               = "9997 Refused"
      9998               = "9998 Not ascertained"
      9999               = "9999 Don't know"
   ;
   VALUE SAP631X
      1                  = "1 Days ago"
      2                  = "2 Weeks ago"
      3                  = "3 Months ago"
      4                  = "4 Years ago"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP632X
      1                  = "1 A year ago or less"
      2                  = "2 More than 1 year but not more than 2 years"
      3                  = "3 More than 2 years but not more than 3 years"
      4                  = "4 More than 3 years but not more than 5 years"
      5                  = "5 Over 5 years ago"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP633X
      1                  = "1 A year ago or less"
      2                  = "2 More than 1 year but not more than 2 years"
      3                  = "3 More than 2 years but not more than 3 years"
      4                  = "4 More than 3 years but not more than 5 years"
      5                  = "5 Over 5 years"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP635X
      1                  = "1 Part of a routine exam"
      2                  = "2 Because of a problem"
      3                  = "3 Other reason"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP636X
      1                  = "1 Yes"
      2                  = "2 No"
      3                  = "3 Did not see a doctor in the past 12 months"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP637X
      01                 = "01 A year or less from now"
      02                 = "02 More than 1 year to 3 years from now"
      03                 = "03 More than 3 years to 5 years from now"
      04                 = "04 More than 5 years from now"
      05                 = "05 When doctor recommends it"
      06                 = "06 Never, had HPV DNA test"
      07                 = "07 Never, had HPV vaccine"
      08                 = "08 Never, other reason"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP664X
      1                  = "1 A year ago or less"
      2                  = "2 More than 1 year but not more than 2 years"
      3                  = "3 More than 2 years but not more than 3 years"
      4                  = "4 More than 3 years but not more than 5 years"
      5                  = "5 More than 5 years but not more than 10 years"
      6                  = "6 Over 10 years ago"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP667X
      1                  = "1 Part of a routine exam"
      2                  = "2 Because of a problem"
      3                  = 
"3 Follow-up test of an earlier test or screening exam"
      4                  = "4 Other reason"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP687X
      1                  = "1 Never or almost never"
      2                  = "2 Some days"
      3                  = "3 Most days"
      4                  = "4 Every day"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP688X
      1                  = "1 Very satisfied"
      2                  = "2 Somewhat satisfied"
      3                  = "3 Somewhat dissatisfied"
      4                  = "4 Very dissatisfied"
      5                  = "5 You haven't had health care in the past 12 months"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP689X
      1                  = "1 Less than 1 year"
      2                  = "2 1-3 years"
      3                  = "3 4-10 years"
      4                  = "4 11-20 years"
      5                  = "5 More than 20 years"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP690X
      1                  = "1 Definitely agree"
      2                  = "2 Somewhat agree"
      3                  = "3 Somewhat disagree"
      4                  = "4 Definitely disagree"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP694X
      1                  = "1 Gay"
      2                  = "2 Straight, that is, not gay"
      3                  = "3 Bisexual"
      4                  = "4 Something else"
      5                  = "5 I don't know the answer"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
   ;
   VALUE SAP695X
      1                  = "1 Lesbian or gay"
      2                  = "2 Straight, that is, not lesbian or gay"
      3                  = "3 Bisexual"
      4                  = "4 Something else"
      5                  = "5 I don't know the answer"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
   ;
   VALUE SAP696X
      1                  = "1 Very worried"
      2                  = "2 Moderately worried"
      3                  = "3 Not too worried"
      4                  = "4 Not worried at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP700X
      1                  = "1 Very worried"
      2                  = "2 Moderately worried"
      3                  = "3 Not too worried"
      4                  = "4 Not worried at all"
      5                  = "5 This does not apply to me"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP703X
      1                  = "1 Very worried"
      2                  = "2 Moderately worried"
      3                  = "3 Not too worried"
      4                  = "4 Not worried at all"
      5                  = "5 I don't have credit cards"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP705X
      00                 = 
"00 Did not have trouble falling asleep in the past week"
      07                 = "07 7 or more times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP706X
      00                 = 
"00 Did not have trouble staying asleep in the past week"
      07                 = "07 7 or more times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP707X
      00                 = 
"00 Did not take medication to help sleep in the past week"
      07                 = "07 7 or more times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP708X
      00                 = "00 Never felt rested in the past week"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SAP709X
      1                  = "1 ALL of the time"
      2                  = "2 MOST of the time"
      3                  = "3 SOME of the time"
      4                  = "4 A LITTLE of the time"
      5                  = "5 NONE of the time"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP715X
      1                  = "1 A lot"
      2                  = "2 Some"
      3                  = "3 A little"
      4                  = "4 Not at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SAP717X
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
   VALUE SAP720X
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
   INFILE ASCIIDAT PAD LRECL=1021;

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

      HYPEV      3   HYPDIFV    3   HYPYR1     3   CHLYR1     3
      CHDEV      3   ANGEV      3   MIEV       3   HRTEV      3
      STREV      3   EPHEV      3   COPDEV     3   ASPMEDEV   3
      ASPMEDAD   3   ASPMDMED   3   ASPONOWN   3   AASMEV     3
      AASSTILL   3   AASMYR     3   AASERYR1   3   AASMHSP1   3
      AWZMSWK1   4   AASMMED1   3   AASMTYP    3   AASMCAN1   3
      AASMDTP2   3   AASWMP1    3   AASCLASS   3   AAS_REC    3
      AAS_RES    3   AAS_MON    3   AAPENVLN   3   AAROUTIN   4
      AASYMPT    3   AARESCUE   3   AAACTLIM   3   ULCEV      3
      ULCYR      3   CANEV      3   CNKIND1    3   CNKIND2    3
      CNKIND3    3   CNKIND4    3   CNKIND5    3   CNKIND6    3
      CNKIND7    3   CNKIND8    3   CNKIND9    3   CNKIND10   3
      CNKIND11   3   CNKIND12   3   CNKIND13   3   CNKIND14   3
      CNKIND15   3   CNKIND16   3   CNKIND17   3   CNKIND18   3
      CNKIND19   3   CNKIND20   3   CNKIND21   3   CNKIND22   3
      CNKIND23   3   CNKIND24   3   CNKIND25   3   CNKIND26   3
      CNKIND27   3   CNKIND28   3   CNKIND29   3   CNKIND30   3
      CNKIND31   3   CANAGE1    4   CANAGE2    4   CANAGE3    4
      CANAGE4    4   CANAGE5    4   CANAGE6    4   CANAGE7    4
      CANAGE8    4   CANAGE9    4   CANAGE10   4   CANAGE11   4
      CANAGE12   4   CANAGE13   4   CANAGE14   4   CANAGE15   4
      CANAGE16   4   CANAGE17   4   CANAGE18   4   CANAGE19   4
      CANAGE20   4   CANAGE21   4   CANAGE22   4   CANAGE23   4
      CANAGE24   4   CANAGE25   4   CANAGE26   4   CANAGE27   4
      CANAGE28   4   CANAGE29   4   CANAGE30   4   DIBEV      3
      DIBPRE1    3   DIBAGE     3   DIFAGE2    3   INSLN      3
      DIBPILL    3   EPILEP1    3   EPILEP2    3   EPILEP3    3
      EPILEP4    3   EPILEP5    3   AHAYFYR    3   SINYR      3
      CBRCHYR    3   KIDWKYR    3   LIVYR      3   JNTSYMP    3
      JMTHP1     3   JMTHP2     3   JMTHP3     3   JMTHP4     3
      JMTHP5     3   JMTHP6     3   JMTHP7     3   JMTHP8     3
      JMTHP9     3   JMTHP10    3   JMTHP11    3   JMTHP12    3
      JMTHP13    3   JMTHP14    3   JMTHP15    3   JMTHP16    3
      JMTHP17    3   JNTCHR     3   JNTHP      3   ARTH1      3
      ARTHLMT    3   PAINECK    3   PAINLB     3   PAINLEG    3
      PAINFACE   3   AMIGR      3   ACOLD2W    3   AINTIL2W   3
      PREGNOW    3   PREGFLYR   3   HRAIDNOW   3   HRAIDEV    3
      AHEARST1   3   AVISION    3   ABLIND     3   LUPPRT     3

      /* AIS LENGTHS */

      AIMSUPEV   3   AIMSPSTL   3   AIMSPMED   3   AIMSPCHC   3
      AIMSPSHC   3   AIMSPCAN   3   AIMSPCLD   3

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
      TOBLASYR   3   TOBQTYR    3   VIGNO      4   VIGTP      3
      VIGFREQW   3   VIGLNGNO   4   VIGLNGTP   3   VIGMIN     4
      MODNO      4   MODTP      3   MODFREQW   3   MODLNGNO   4
      MODLNGTP   3   MODMIN     4   STRNGNO    4   STRNGTP    3
      STRFREQW   3   ALC1YR     3   ALCLIFE    3   ALC12MNO   4
      ALC12MTP   3   ALC12MWK   3   ALC12MYR   4   ALCAMT     3
      ALCSTAT    3   ALC5UPNO   4   ALC5UPTP   3   ALC5UPYR   4
      AHEIGHT    3   AWEIGHTP   4   BMI        8

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
      ALASTYP4   3   ALASTVRB $ 16  AVISAPN2   3   AVISAPT2   3
      AWAITRMN   3   AWAITRMT   3   HIT1A      3   HIT2A      3
      HIT3A      3   HIT4A      3   HIT5A      3   SHTFLU2    3
      ASHFLUM2   3   ASHFLUY2   4   FLUSHPG1   3   FLUSHPG2   3
      SPRFLU2    3   ASPFLUM2   3   ASPFLUY2   4   SHTPNUYR   3
      APOX       3   APOX12MO   3   AHEP       3   AHEPLIV    3
      AHEPBTST   3   SHTHEPB    3   SHEPDOS    3   SHTHEPA    3
      SHEPANUM   3   AHEPCTST   3   AHEPCRES   3   SHINGLES   3
      SHTTD      3   SHTTD05    3   SHTTDAP2   3   SHTHPV2    3
      SHHPVDOS   3   AHPVAGE    4   LIVEV      3   TRAVEL     3
      WRKHLTH2   3   WRKDIR     3   APSBPCHK   3   APSCHCHK   3
      APSBSCHK   3   APSPAP     3   APSMAM     3   APSCOL     3
      APSDIET    3   APSSMKC    3   LTCFAM     3   LTCHELP    3
      LTCWHO1    3   LTCWHO2    3   LTCWHO3    3   LTCWHO4    3
      LTCWHO5    3   AINDINS    3   AINDPRCH   3   AINDWHO    3
      AINDDIF1   3   AINDDIF2   3   AINDENY1   3   AINDENY2   3
      AINDENY3   3   AINDNOT1   3   AINDNOT2   3   AINDNOT3   3
      AINDNOT4   3   AINDNOT5   3   AEXCHNG    3

      /* NAF LENGTHS */

      SNONCE     3   SNNUM1     4   PAPHAD1    3   RPAP1_M1   3
      RPAP1_Y1   4   RPAP1N1    3   RPAP1T1    3   RPAP21     3
      RPAP3A1    3   RPAP3B1    3   PAPREA1    3   MDRECP1    3
      PAPWHEN    3   HYST       3   MAMHAD     3   RMAM1_MT   3
      RMAM1_YR   4   RMAM1N     3   RMAM1T     3   RMAM2      3
      RMAM3A     3   RMAM3B     3   MAMREAS    3   MDRECMAM   3
      PSAREC     3   PSAHAD     3   RPSA1_MT   3   RPSA1_YR   4
      RPSA1N     3   RPSA1T     3   RPSA2      3   RPSA3A     3
      RPSA3B     3   PSAREAS    3   COLHAD     3   COL_MT     3
      COL_YR     4   COLN       3   COLT       3   COL2       3
      COL3A      3   COL3B      3   COLREAS    3   SIGHAD     3
      SIG_MT     3   SIG_YR     4   SIGN       3   SIGT       3
      SIG2       3   SIG3A      3   SIG3B      3   SIGREAS    3
      HFOBHAD    3   RHFO1_MT   3   RHFO1_YR   4   RHFO1N     3
      RHFO1T     3   RHFO2      3   RHFOB3A    3   RHFOB3B    3
      HFOBREA1   3   COLPROB1   3

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

      AWEBUSE    3   AWEBOFNO   4   AWEBOFTP   3   AWEBEML    3
      AWEBMNO    4   AWEBMTP    3 ;

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
      HYPYR1       81 -  81    CHLYR1       82 -  82
      CHDEV        83 -  83    ANGEV        84 -  84
      MIEV         85 -  85    HRTEV        86 -  86
      STREV        87 -  87    EPHEV        88 -  88
      COPDEV       89 -  89    ASPMEDEV     90 -  90
      ASPMEDAD     91 -  91    ASPMDMED     92 -  92
      ASPONOWN     93 -  93    AASMEV       94 -  94
      AASSTILL     95 -  95    AASMYR       96 -  96
      AASERYR1     97 -  97    AASMHSP1     98 -  98
      AWZMSWK1     99 - 101    AASMMED1    102 - 102
      AASMTYP     103 - 103    AASMCAN1    104 - 104
      AASMDTP2    105 - 105    AASWMP1     106 - 106
      AASCLASS    107 - 107    AAS_REC     108 - 108
      AAS_RES     109 - 109    AAS_MON     110 - 110
      AAPENVLN    111 - 111    AAROUTIN    112 - 114
      AASYMPT     115 - 115    AARESCUE    116 - 116
      AAACTLIM    117 - 117    ULCEV       118 - 118
      ULCYR       119 - 119    CANEV       120 - 120
      CNKIND1     121 - 121    CNKIND2     122 - 122
      CNKIND3     123 - 123    CNKIND4     124 - 124
      CNKIND5     125 - 125    CNKIND6     126 - 126
      CNKIND7     127 - 127    CNKIND8     128 - 128
      CNKIND9     129 - 129    CNKIND10    130 - 130
      CNKIND11    131 - 131    CNKIND12    132 - 132
      CNKIND13    133 - 133    CNKIND14    134 - 134
      CNKIND15    135 - 135    CNKIND16    136 - 136
      CNKIND17    137 - 137    CNKIND18    138 - 138
      CNKIND19    139 - 139    CNKIND20    140 - 140
      CNKIND21    141 - 141    CNKIND22    142 - 142
      CNKIND23    143 - 143    CNKIND24    144 - 144
      CNKIND25    145 - 145    CNKIND26    146 - 146
      CNKIND27    147 - 147    CNKIND28    148 - 148
      CNKIND29    149 - 149    CNKIND30    150 - 150
      CNKIND31    151 - 151    CANAGE1     152 - 154
      CANAGE2     155 - 157    CANAGE3     158 - 160
      CANAGE4     161 - 163    CANAGE5     164 - 166
      CANAGE6     167 - 169    CANAGE7     170 - 172
      CANAGE8     173 - 175    CANAGE9     176 - 178
      CANAGE10    179 - 181    CANAGE11    182 - 184
      CANAGE12    185 - 187    CANAGE13    188 - 190
      CANAGE14    191 - 193    CANAGE15    194 - 196
      CANAGE16    197 - 199    CANAGE17    200 - 202
      CANAGE18    203 - 205    CANAGE19    206 - 208
      CANAGE20    209 - 211    CANAGE21    212 - 214
      CANAGE22    215 - 217    CANAGE23    218 - 220
      CANAGE24    221 - 223    CANAGE25    224 - 226
      CANAGE26    227 - 229    CANAGE27    230 - 232
      CANAGE28    233 - 235    CANAGE29    236 - 238
      CANAGE30    239 - 241    DIBEV       242 - 242
      DIBPRE1     243 - 243    DIBAGE      244 - 245
      DIFAGE2     246 - 247    INSLN       248 - 248
      DIBPILL     249 - 249    EPILEP1     250 - 250
      EPILEP2     251 - 251    EPILEP3     252 - 252
      EPILEP4     253 - 253    EPILEP5     254 - 254
      AHAYFYR     255 - 255    SINYR       256 - 256
      CBRCHYR     257 - 257    KIDWKYR     258 - 258
      LIVYR       259 - 259    JNTSYMP     260 - 260
      JMTHP1      261 - 261    JMTHP2      262 - 262
      JMTHP3      263 - 263    JMTHP4      264 - 264
      JMTHP5      265 - 265    JMTHP6      266 - 266
      JMTHP7      267 - 267    JMTHP8      268 - 268
      JMTHP9      269 - 269    JMTHP10     270 - 270
      JMTHP11     271 - 271    JMTHP12     272 - 272
      JMTHP13     273 - 273    JMTHP14     274 - 274
      JMTHP15     275 - 275    JMTHP16     276 - 276
      JMTHP17     277 - 277    JNTCHR      278 - 278
      JNTHP       279 - 279    ARTH1       280 - 280
      ARTHLMT     281 - 281    PAINECK     282 - 282
      PAINLB      283 - 283    PAINLEG     284 - 284
      PAINFACE    285 - 285    AMIGR       286 - 286
      ACOLD2W     287 - 287    AINTIL2W    288 - 288
      PREGNOW     289 - 289    PREGFLYR    290 - 290
      HRAIDNOW    291 - 291    HRAIDEV     292 - 292
      AHEARST1    293 - 293    AVISION     294 - 294
      ABLIND      295 - 295    LUPPRT      296 - 296


      /* AIS LOCATIONS */

      AIMSUPEV    297 - 297    AIMSPSTL    298 - 298
      AIMSPMED    299 - 299    AIMSPCHC    300 - 300
      AIMSPSHC    301 - 301    AIMSPCAN    302 - 302
      AIMSPCLD    303 - 303

      /* AHS LOCATIONS */

      WKDAYR      304 - 306    BEDDAYR     307 - 309
      AHSTATYR    310 - 310    SPECEQ      311 - 311
      FLWALK      312 - 312    FLCLIMB     313 - 313
      FLSTAND     314 - 314    FLSIT       315 - 315
      FLSTOOP     316 - 316    FLREACH     317 - 317
      FLGRASP     318 - 318    FLCARRY     319 - 319
      FLPUSH      320 - 320    FLSHOP      321 - 321
      FLSOCL      322 - 322    FLRELAX     323 - 323
      FLA1AR      324 - 324    AFLHCA1     325 - 325
      AFLHCA2     326 - 326    AFLHCA3     327 - 327
      AFLHCA4     328 - 328    AFLHCA5     329 - 329
      AFLHCA6     330 - 330    AFLHCA7     331 - 331
      AFLHCA8     332 - 332    AFLHCA9     333 - 333
      AFLHCA10    334 - 334    AFLHCA11    335 - 335
      AFLHCA12    336 - 336    AFLHCA13    337 - 337
      ALHCA14A    338 - 338    AFLHCA15    339 - 339
      AFLHCA16    340 - 340    AFLHCA17    341 - 341
      AFLHCA18    342 - 342    AFLHC19_    343 - 343
      AFLHC20_    344 - 344    AFLHC21_    345 - 345
      AFLHC22_    346 - 346    AFLHC23_    347 - 347
      AFLHC24_    348 - 348    AFLHC25_    349 - 349
      AFLHC26_    350 - 350    AFLHC27_    351 - 351
      AFLHC28_    352 - 352    AFLHC29_    353 - 353
      AFLHC30_    354 - 354    AFLHC31_    355 - 355
      AFLHC32_    356 - 356    AFLHC33_    357 - 357
      AFLHC34_    358 - 358    AFLHCA90    359 - 359
      AFLHCA91    360 - 360    ALTIME1     361 - 362
      ALUNIT1     363 - 363    ALDURA1     364 - 365
      ALDURB1     366 - 366    ALCHRC1     367 - 367
      ALTIME2     368 - 369    ALUNIT2     370 - 370
      ALDURA2     371 - 372    ALDURB2     373 - 373
      ALCHRC2     374 - 374    ALTIME3     375 - 376
      ALUNIT3     377 - 377    ALDURA3     378 - 379
      ALDURB3     380 - 380    ALCHRC3     381 - 381
      ALTIME4     382 - 383    ALUNIT4     384 - 384
      ALDURA4     385 - 386    ALDURB4     387 - 387
      ALCHRC4     388 - 388    ALTIME5     389 - 390
      ALUNIT5     391 - 391    ALDURA5     392 - 393
      ALDURB5     394 - 394    ALCHRC5     395 - 395
      ALTIME6     396 - 397    ALUNIT6     398 - 398
      ALDURA6     399 - 400    ALDURB6     401 - 401
      ALCHRC6     402 - 402    ALTIME7     403 - 404
      ALUNIT7     405 - 405    ALDURA7     406 - 407
      ALDURB7     408 - 408    ALCHRC7     409 - 409
      ALTIME8     410 - 411    ALUNIT8     412 - 412
      ALDURA8     413 - 414    ALDURB8     415 - 415
      ALCHRC8     416 - 416    ALTIME9     417 - 418
      ALUNIT9     419 - 419    ALDURA9     420 - 421
      ALDURB9     422 - 422    ALCHRC9     423 - 423
      ALTIME10    424 - 425    ALUNIT10    426 - 426
      ALDURA10    427 - 428    ALDURB10    429 - 429
      ALCHRC10    430 - 430    ALTIME11    431 - 432
      ALUNIT11    433 - 433    ALDURA11    434 - 435
      ALDURB11    436 - 436    ALCHRC11    437 - 437
      ALTIME12    438 - 439    ALUNIT12    440 - 440
      ALDURA12    441 - 442    ALDURB12    443 - 443
      ALCHRC12    444 - 444    ALTIME13    445 - 446
      ALUNIT13    447 - 447    ALDURA13    448 - 449
      ALDURB13    450 - 450    ALCHRC13    451 - 451
      ATIME14A    452 - 453    AUNIT14A    454 - 454
      ADURA14A    455 - 456    ADURB14A    457 - 457
      ACHRC14A    458 - 458    ALTIME15    459 - 460
      ALUNIT15    461 - 461    ALDURA15    462 - 463
      ALDURB15    464 - 464    ALCHRC15    465 - 465
      ALTIME16    466 - 467    ALUNIT16    468 - 468
      ALDURA16    469 - 470    ALDURB16    471 - 471
      ALCHRC16    472 - 472    ALTIME17    473 - 474
      ALUNIT17    475 - 475    ALDURA17    476 - 477
      ALDURB17    478 - 478    ALCHRC17    479 - 479
      ALTIME18    480 - 481    ALUNIT18    482 - 482
      ALDURA18    483 - 484    ALDURB18    485 - 485
      ALCHRC18    486 - 486    ALTIME19    487 - 488
      ALUNIT19    489 - 489    ALDURA19    490 - 491
      ALDURB19    492 - 492    ALCHRC19    493 - 493
      ALTIME20    494 - 495    ALUNIT20    496 - 496
      ALDURA20    497 - 498    ALDURB20    499 - 499
      ALCHRC20    500 - 500    ALTIME21    501 - 502
      ALUNIT21    503 - 503    ALDURA21    504 - 505
      ALDURB21    506 - 506    ALCHRC21    507 - 507
      ALTIME22    508 - 509    ALUNIT22    510 - 510
      ALDURA22    511 - 512    ALDURB22    513 - 513
      ALCHRC22    514 - 514    ALTIME23    515 - 516
      ALUNIT23    517 - 517    ALDURA23    518 - 519
      ALDURB23    520 - 520    ALCHRC23    521 - 521
      ALTIME24    522 - 523    ALUNIT24    524 - 524
      ALDURA24    525 - 526    ALDURB24    527 - 527
      ALCHRC24    528 - 528    ALTIME25    529 - 530
      ALUNIT25    531 - 531    ALDURA25    532 - 533
      ALDURB25    534 - 534    ALCHRC25    535 - 535
      ALTIME26    536 - 537    ALUNIT26    538 - 538
      ALDURA26    539 - 540    ALDURB26    541 - 541
      ALCHRC26    542 - 542    ALTIME27    543 - 544
      ALUNIT27    545 - 545    ALDURA27    546 - 547
      ALDURB27    548 - 548    ALCHRC27    549 - 549
      ALTIME28    550 - 551    ALUNIT28    552 - 552
      ALDURA28    553 - 554    ALDURB28    555 - 555
      ALCHRC28    556 - 556    ALTIME29    557 - 558
      ALUNIT29    559 - 559    ALDURA29    560 - 561
      ALDURB29    562 - 562    ALCHRC29    563 - 563
      ALTIME30    564 - 565    ALUNIT30    566 - 566
      ALDURA30    567 - 568    ALDURB30    569 - 569
      ALCHRC30    570 - 570    ALTIME31    571 - 572
      ALUNIT31    573 - 573    ALDURA31    574 - 575
      ALDURB31    576 - 576    ALCHRC31    577 - 577
      ALTIME32    578 - 579    ALUNIT32    580 - 580
      ALDURA32    581 - 582    ALDURB32    583 - 583
      ALCHRC32    584 - 584    ALTIME33    585 - 586
      ALUNIT33    587 - 587    ALDURA33    588 - 589
      ALDURB33    590 - 590    ALCHRC33    591 - 591
      ALTIME34    592 - 593    ALUNIT34    594 - 594
      ALDURA34    595 - 596    ALDURB34    597 - 597
      ALCHRC34    598 - 598    ALTIME90    599 - 600
      ALUNIT90    601 - 601    ALDURA90    602 - 603
      ALDURB90    604 - 604    ALCHRC90    605 - 605
      ALTIME91    606 - 607    ALUNIT91    608 - 608
      ALDURA91    609 - 610    ALDURB91    611 - 611
      ALCHRC91    612 - 612    ALCNDRT     613 - 613
      ALCHRONR    614 - 614

      /* AHB LOCATIONS */

      SMKEV       615 - 615    SMKREG      616 - 617
      SMKNOW      618 - 618    SMKSTAT2    619 - 619
      SMKQTNO     620 - 621    SMKQTTP     622 - 622
      SMKQTY      623 - 624    CIGSDA1     625 - 626
      CIGDAMO     627 - 628    CIGSDA2     629 - 630
      CIGSDAY     631 - 632    CIGQTYR     633 - 633
      OTHCIGEV    634 - 634    OTHCIGED    635 - 635
      SMKLESEV    636 - 636    SMKLESED    637 - 637
      TOBLASYR    638 - 638    TOBQTYR     639 - 639
      VIGNO       640 - 642    VIGTP       643 - 643
      VIGFREQW    644 - 645    VIGLNGNO    646 - 648
      VIGLNGTP    649 - 649    VIGMIN      650 - 652
      MODNO       653 - 655    MODTP       656 - 656
      MODFREQW    657 - 658    MODLNGNO    659 - 661
      MODLNGTP    662 - 662    MODMIN      663 - 665
      STRNGNO     666 - 668    STRNGTP     669 - 669
      STRFREQW    670 - 671    ALC1YR      672 - 672
      ALCLIFE     673 - 673    ALC12MNO    674 - 676
      ALC12MTP    677 - 677    ALC12MWK    678 - 679
      ALC12MYR    680 - 682    ALCAMT      683 - 684
      ALCSTAT     685 - 686    ALC5UPNO    687 - 689
      ALC5UPTP    690 - 690    ALC5UPYR    691 - 693
      AHEIGHT     694 - 695    AWEIGHTP    696 - 698
      BMI         699 - 702 .2

      /* AAU LOCATIONS */

      AUSUALPL    703 - 703    APLKIND     704 - 704
      AHCPLROU    705 - 705    AHCPLKND    706 - 706
      AHCCHGYR    707 - 707    AHCCHGHI    708 - 708
      ANOUSPL1    709 - 709    ANOUSPL2    710 - 710
      ANOUSPL3    711 - 711    ANOUSPL4    712 - 712
      ANOUSPL5    713 - 713    ANOUSPL6    714 - 714
      ANOUSPL7    715 - 715    ANOUSPL8    716 - 716
      ANOUSPL9    717 - 717    APRVTRYR    718 - 718
      APRVTRFD    719 - 719    ADRNANP     720 - 720
      ADRNAI      721 - 721    AHCDLYR1    722 - 722
      AHCDLYR2    723 - 723    AHCDLYR3    724 - 724
      AHCDLYR4    725 - 725    AHCDLYR5    726 - 726
      AHCAFYR1    727 - 727    AHCAFYR2    728 - 728
      AHCAFYR3    729 - 729    AHCAFYR4    730 - 730
      AHCAFYR5    731 - 731    AHCAFYR6    732 - 732
      AWORPAY     733 - 733    AHICOMP     734 - 734
      ARX12MO     735 - 735    ARX12_1     736 - 736
      ARX12_2     737 - 737    ARX12_3     738 - 738
      ARX12_4     739 - 739    ARX12_5     740 - 740
      ARX12_6     741 - 741    ADNLONG2    742 - 742
      AHCSYR1     743 - 743    AHCSYR2     744 - 744
      AHCSYR3     745 - 745    AHCSYR4     746 - 746
      AHCSYR5     747 - 747    AHCSYR6     748 - 748
      AHCSYR7     749 - 749    AHCSYR8     750 - 750
      AHCSYR9     751 - 751    AHCSYR10    752 - 752
      AHERNOY2    753 - 754    AERVISND    755 - 755
      AERHOS      756 - 756    AERREA1R    757 - 757
      AERREA2R    758 - 758    AERREA3R    759 - 759
      AERREA4R    760 - 760    AERREA5R    761 - 761
      AERREA6R    762 - 762    AERREA7R    763 - 763
      AERREA8R    764 - 764    AHCHYR      765 - 765
      AHCHMOYR    766 - 767    AHCHNOY2    768 - 769
      AHCNOYR2    770 - 771    ASRGYR      772 - 772
      ASRGNOYR    773 - 774    AMDLONGR    775 - 775
      AVISLAST    776 - 776    ALASTYP1    777 - 777
      ALASTYP2    778 - 778    ALASTYP3    779 - 779
      ALASTYP4    780 - 780    ALASTVRB $  781 - 796
      AVISAPN2    797 - 798    AVISAPT2    799 - 799
      AWAITRMN    800 - 801    AWAITRMT    802 - 802
      HIT1A       803 - 803    HIT2A       804 - 804
      HIT3A       805 - 805    HIT4A       806 - 806
      HIT5A       807 - 807    SHTFLU2     808 - 808
      ASHFLUM2    809 - 810    ASHFLUY2    811 - 814
      FLUSHPG1    815 - 815    FLUSHPG2    816 - 816
      SPRFLU2     817 - 817    ASPFLUM2    818 - 819
      ASPFLUY2    820 - 823    SHTPNUYR    824 - 824
      APOX        825 - 825    APOX12MO    826 - 826
      AHEP        827 - 827    AHEPLIV     828 - 828
      AHEPBTST    829 - 829    SHTHEPB     830 - 830
      SHEPDOS     831 - 831    SHTHEPA     832 - 832
      SHEPANUM    833 - 834    AHEPCTST    835 - 835
      AHEPCRES    836 - 836    SHINGLES    837 - 837
      SHTTD       838 - 838    SHTTD05     839 - 839
      SHTTDAP2    840 - 840    SHTHPV2     841 - 841
      SHHPVDOS    842 - 843    AHPVAGE     844 - 846
      LIVEV       847 - 847    TRAVEL      848 - 848
      WRKHLTH2    849 - 849    WRKDIR      850 - 850
      APSBPCHK    851 - 851    APSCHCHK    852 - 852
      APSBSCHK    853 - 853    APSPAP      854 - 854
      APSMAM      855 - 855    APSCOL      856 - 856
      APSDIET     857 - 857    APSSMKC     858 - 858
      LTCFAM      859 - 859    LTCHELP     860 - 860
      LTCWHO1     861 - 861    LTCWHO2     862 - 862
      LTCWHO3     863 - 863    LTCWHO4     864 - 864
      LTCWHO5     865 - 865    AINDINS     866 - 866
      AINDPRCH    867 - 867    AINDWHO     868 - 868
      AINDDIF1    869 - 869    AINDDIF2    870 - 870
      AINDENY1    871 - 871    AINDENY2    872 - 872
      AINDENY3    873 - 873    AINDNOT1    874 - 874
      AINDNOT2    875 - 875    AINDNOT3    876 - 876
      AINDNOT4    877 - 877    AINDNOT5    878 - 878
      AEXCHNG     879 - 879

      /* NAF LOCATIONS */

      SNONCE      880 - 880    SNNUM1      881 - 883
      PAPHAD1     884 - 884    RPAP1_M1    885 - 886
      RPAP1_Y1    887 - 890    RPAP1N1     891 - 892
      RPAP1T1     893 - 893    RPAP21      894 - 894
      RPAP3A1     895 - 895    RPAP3B1     896 - 896
      PAPREA1     897 - 897    MDRECP1     898 - 898
      PAPWHEN     899 - 900    HYST        901 - 901
      MAMHAD      902 - 902    RMAM1_MT    903 - 904
      RMAM1_YR    905 - 908    RMAM1N      909 - 910
      RMAM1T      911 - 911    RMAM2       912 - 912
      RMAM3A      913 - 913    RMAM3B      914 - 914
      MAMREAS     915 - 915    MDRECMAM    916 - 916
      PSAREC      917 - 917    PSAHAD      918 - 918
      RPSA1_MT    919 - 920    RPSA1_YR    921 - 924
      RPSA1N      925 - 926    RPSA1T      927 - 927
      RPSA2       928 - 928    RPSA3A      929 - 929
      RPSA3B      930 - 930    PSAREAS     931 - 931
      COLHAD      932 - 932    COL_MT      933 - 934
      COL_YR      935 - 938    COLN        939 - 940
      COLT        941 - 941    COL2        942 - 942
      COL3A       943 - 943    COL3B       944 - 944
      COLREAS     945 - 945    SIGHAD      946 - 946
      SIG_MT      947 - 948    SIG_YR      949 - 952
      SIGN        953 - 954    SIGT        955 - 955
      SIG2        956 - 956    SIG3A       957 - 957
      SIG3B       958 - 958    SIGREAS     959 - 959
      HFOBHAD     960 - 960    RHFO1_MT    961 - 962
      RHFO1_YR    963 - 966    RHFO1N      967 - 968
      RHFO1T      969 - 969    RHFO2       970 - 970
      RHFOB3A     971 - 971    RHFOB3B     972 - 972
      HFOBREA1    973 - 973    COLPROB1    974 - 974


      /* ASI LOCATIONS */

      ASICPUSE    975 - 975    ASISATHC    976 - 976
      ASITENUR    977 - 977    ASINHELP    978 - 978
      ASINCNTO    979 - 979    ASINTRU     980 - 980
      ASINKNT     981 - 981    ASISIM      982 - 982
      ASISIF      983 - 983    ASIRETR     984 - 984
      ASIMEDC     985 - 985    ASISTLV     986 - 986
      ASICNHC     987 - 987    ASICCOLL    988 - 988
      ASINBILL    989 - 989    ASIHCST     990 - 990
      ASICCMP     991 - 991    ASISLEEP    992 - 993
      ASISLPFL    994 - 995    ASISLPST    996 - 997
      ASISLPMD    998 - 999    ASIREST    1000 -1001
      ASISAD     1002 -1002    ASINERV    1003 -1003
      ASIRSTLS   1004 -1004    ASIHOPLS   1005 -1005
      ASIEFFRT   1006 -1006    ASIWTHLS   1007 -1007
      ASIMUCH    1008 -1008    ASIHIVT    1009 -1009
      ASIHIVWN   1010 -1011

      /* AWB LOCATIONS */

      AWEBUSE    1012 -1012    AWEBOFNO   1013 -1015
      AWEBOFTP   1016 -1016    AWEBEML    1017 -1017
      AWEBMNO    1018 -1020    AWEBMTP    1021 -1021
;

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
"Detailed industry classification (based on 2007 NAICS-informed codes from Censu
s)"
      INDSTRN2   =
"Simple industry classification (based on 2007 NAICS-informed Codes from Census)
"
      OCCUPN1    =
"Detailed occupation classification (based on 2010 SOC-informed codes from Censu
s)"
      OCCUPN2    =
"Simple occupation classification (based on 2010 SOC-informed codes from Census)
"
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
      CHLYR1     ="Had high cholesterol, past 12 months"
      CHDEV      ="Ever been told you had coronary heart disease"
      ANGEV      ="Ever been told you had angina pectoris"
      MIEV       ="Ever been told you had a heart attack"
      HRTEV      ="Ever been told you had a heart condition/disease"
      STREV      ="Ever been told you had a stroke"
      EPHEV      ="Ever been told you had emphysema"
      COPDEV     ="Ever been told you had COPD"
      ASPMEDEV   ="Ever been told to take low-dose aspirin"
      ASPMEDAD   ="Following low-dose aspirin advice"
      ASPMDMED   ="Advised to stop taking low-dose aspirin"
      ASPONOWN   ="Taking low-dose aspirin on own"
      AASMEV     ="Ever been told you had asthma"
      AASSTILL   ="Still have asthma"
      AASMYR     ="Had an asthma episode/attack past 12 m"
      AASERYR1   ="Had visit to ER due to asthma past 12 m"
      AASMHSP1   ="Had stayed overnight in hospital due to asthma, past 12 m"
      AWZMSWK1   ="# Work days missed due to asthma, past 12 mo."
      AASMMED1   ="Used oral inhaler, past 3 mo"
      AASMTYP    ="Type of rescue prescription asthma medication"
      AASMCAN1   ="Used more than 3 canisters of mouth inhaler, past 3 mo"
      AASMDTP2   ="Taking preventive asthma medication"
      AASWMP1    ="Given asthma action plan"
      AASCLASS   ="Ever taken asthma mgmt. class"
      AAS_REC    ="Taught to recognize asthma episode"
      AAS_RES    ="Taught how to respond to asthma episode"
      AAS_MON    ="Taught how to monitor peak flow for daily therapy"
      AAPENVLN   ="Ever advised to change environment for asthma"
      AAROUTIN   ="Routine checkup for your asthma, past 12 m"
      AASYMPT    ="Last doctor visit, asked how often…had asthma symptoms"
      AARESCUE   ="Last doctor visit, asked how often…used quick relief inhaler"
      AAACTLIM   =
"Last doctor visit, asked how often…asthma symptoms limited activity"
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
      EPILEP1    ="Ever been told you had seizure order/epilepsy"
      EPILEP2    ="Now taking epilepsy meds"
      EPILEP3    ="# Seizures past 12 m"
      EPILEP4    ="Seen neurologist/specialist past 12 m"
      EPILEP5    ="Epilepsy interfered w/ activities past 30 d"
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
      JNTCHR     ="Joint symptoms begin more than 3 months ago"
      JNTHP      ="Ever seen doctor or health professional for joint symptoms"
      ARTH1      ="Ever been told you had arthritis"
      ARTHLMT    ="Limited due to arthritis or joint symptoms"
      PAINECK    ="Had neck pain, past 3 months"
      PAINLB     ="Had low back pain, past 3 months"
      PAINLEG    ="Pain spread down leg/below knees"
      PAINFACE   ="Had pain in jaw/front of ear, past 3 months"
      AMIGR      ="Had severe headache/migraine, past 3 m"
      ACOLD2W    ="Had a head/chest cold past 2 w"
      AINTIL2W   ="Had stomach prob w/vomit/diarrhea, 2 w"
      PREGNOW    ="Currently pregnant"
      PREGFLYR   ="Recently pregnant"
      HRAIDNOW   ="Now use a hearing aid"
      HRAIDEV    ="Ever used a hearing aid if not now using"
      AHEARST1   ="Hearing w/o hearing aid"
      AVISION    ="Trouble seeing even w/glasses/lenses"
      ABLIND     ="Blind or unable to see at all"
      LUPPRT     ="Lost all upper & lower natural teeth"

      /* AIS LABELS */

      AIMSUPEV   ="Ever been told your immune system is weakened"
      AIMSPSTL   ="Still have weakened immune system"
      AIMSPMED   =
"Medications/treatments weakened your immune system, past 6 months"
      AIMSPCHC   ="Current health condition weakens your immune system"
      AIMSPSHC   =
"Ever told your immune system is weakened due to kidney, lung, or liver disease,
 diabetes, poor nutrition or frailty"
      AIMSPCAN   ="Ever told your immune system is weakened due to cancer"
      AIMSPCLD   =
"Ever told your immune system is weakened because of many infections, colds or c
an't seem to get over them."

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
"Lung/breathing problem (e.g., asthma and emphysema)  causes difficulty with act
ivity"
      AFLHCA12   ="Cancer causes difficulty with activity"
      AFLHCA13   ="Birth defect causes difficulty with activity"
      ALHCA14A   =
"Intellectual disability, also known as mental retardation causes difficulty wit
h activity"
      AFLHCA15   =
"Other developmental problem (e.g., cerebral palsy) causes difficulty with activ
ity"
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
"Duration (in years) of lung/breathing problem (e.g., asthma and emphysema), rec
ode 1"
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
"Duration of intellectual disability, also known as mental retardation: Number o
f units"
      AUNIT14A   =
"Duration of intellectual disability, also know as mental retardation: Time unit
"
      ADURA14A   =
"Duration (in years) of intellectual disability, also known as mental retardatio
n, recode 1"
      ADURB14A   =
"Duration of intellectual disability, also known as mental retardation, recode 2
"
      ACHRC14A   =
"Intellectual disability, also known as mental retardation condition status reco
de"
      ALTIME15   =
"Duration of other developmental problem (e.g., cerebral palsy): Number of units
"
      ALUNIT15   =
"Duration of other developmental problem (e.g., cerebral palsy): Time unit"
      ALDURA15   =
"Duration (in years) of other developmental problem (e.g., cerebral palsy), reco
de 1"
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
"Duration of missing limbs (fingers, toes, or digits); amputation: Number of uni
ts"
      ALUNIT19   =
"Duration of missing limbs (fingers, toes, or digits); amputation: Time unit"
      ALDURA19   =
"Duration (in years) of missing limbs (fingers, toes, or digits); amputation, re
code 1"
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
"Duration (in years) of surgical after-effects/medical treatment problems, recod
e 1"
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
      ALC5UPNO   ="Days 5+ drinks, past yr: # days"
      ALC5UPTP   ="Days 5+ drinks, past yr: Time unit"
      ALC5UPYR   ="Number of days had 5+ drinks past year"
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
"Flu shot before/during your current pregnancy, interviewed Jan-Mar or Aug-Dec, 
2013"
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
"Ever traveled outside USA since 1995 (Excluding Europe, Japan, Australia, New Z
ealand, and Canada)"
      WRKHLTH2   ="Work or volunteer in a health care setting"
      WRKDIR     ="Direct contact with patients"
      APSBPCHK   =
"Blood pressure checked by doctor/nurse/health professional, past 12 m"
      APSCHCHK   =
"Cholesterol checked by doctor/nurse/health professional, past 12 m"
      APSBSCHK   ="Fasting test for high blood sugar/diabetes, past 12 m"
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
"Looked into purchasing health insurance coverage through the Health Insurance M
arketplace"

      /* NAF LABELS */

      SNONCE     ="Used indoor tanning device during past 12 months"
      SNNUM1     ="Number of times used tanning device during past 12 months"
      PAPHAD1    ="Ever had Pap smear/Pap test"
      RPAP1_M1   ="Month of most recent Pap test"
      RPAP1_Y1   ="Year of most recent Pap test"
      RPAP1N1    ="Time ago date of most recent Pap test: # of units"
      RPAP1T1    ="Time ago date of most recent Pap test: Time unit"
      RPAP21     ="Most recent Pap test, time categories"
      RPAP3A1    ="Most recent Pap test, time categories (using 2005 method)"
      RPAP3B1    ="Most recent Pap test, time categories (using 2000 method)"
      PAPREA1    ="Main reason for most recent Pap test"
      MDRECP1    ="Doctor recommended Pap test"
      PAPWHEN    ="When next Pap smear/test will be done"
      HYST       ="Ever had a hysterectomy"
      MAMHAD     ="Ever had a mammogram"
      RMAM1_MT   ="Month of most recent mammogram"
      RMAM1_YR   ="Year of most recent mammogram"
      RMAM1N     ="Time ago date of most recent mammogram: # of units"
      RMAM1T     ="Time ago date of most recent mammogram: Time unit"
      RMAM2      ="Most recent mammogram, time categories"
      RMAM3A     ="Most recent mammogram, time categories (using 2005 method)"
      RMAM3B     ="Most recent mammogram, time categories (using 2000 method)"
      MAMREAS    ="Main reason for most recent mammogram"
      MDRECMAM   ="Doctor recommended mammogram"
      PSAREC     ="Doctor recommended a PSA test"
      PSAHAD     ="Ever had a PSA test"
      RPSA1_MT   ="Month of most recent PSA test"
      RPSA1_YR   ="Year of most recent PSA test"
      RPSA1N     ="Time ago date of most recent PSA test: # of units"
      RPSA1T     ="Time ago date of most recent PSA test: Time unit"
      RPSA2      ="Most recent PSA test, time categories"
      RPSA3A     ="Most recent PSA test, time categories (using 2005 method)"
      RPSA3B     ="Most recent PSA test, time categories (using 2000 method)"
      PSAREAS    ="Main reason for most recent PSA test"
      COLHAD     ="Ever had a colonoscopy"
      COL_MT     ="Month of most recent colonoscopy"
      COL_YR     ="Year of most recent colonoscopy"
      COLN       ="Time ago date of most recent colonoscopy: # of units"
      COLT       ="Time ago date of most recent colonoscopy: Time unit"
      COL2       ="Most recent colonoscopy, time categories"
      COL3A      ="Most recent colonoscopy, time categories (using 2005 method)"
      COL3B      ="Most recent colonoscopy, time categories (using 2000 method)"
      COLREAS    ="Main reason for most recent colonoscopy"
      SIGHAD     ="Ever had a Sigmoidoscopy"
      SIG_MT     ="Month of most recent Sigmoidoscopy"
      SIG_YR     ="Year of most recent Sigmoidoscopy"
      SIGN       ="Time ago date of most recent Sigmoidoscopy: # of units"
      SIGT       ="Time ago date of most recent Sigmoidoscopy: Time unit"
      SIG2       ="Most recent Sigmoidoscopy, time categories"
      SIG3A      =
"Most recent Sigmoidoscopy, time categories (using 2005 method)"
      SIG3B      =
"Most recent Sigmoidoscopy, time categories (using 2000 method)"
      SIGREAS    ="Main reason for most recent Sigmoidoscopy"
      HFOBHAD    ="Had blood stool test using home test kit"
      RHFO1_MT   ="Month of most recent home blood stool test"
      RHFO1_YR   ="Year of most recent home blood stool test"
      RHFO1N     =
"Time ago date of most recent home blood stool test: # of units"
      RHFO1T     ="Time ago date of most recent home blood stool test: Time unit
"
      RHFO2      ="Most recent home blood stool test, time categories"
      RHFOB3A    =
"Most recent home blood stool test, time categories (using 2005 method)"
      RHFOB3B    =
"Most recent home blood stool test, time categories (using 2000 method)"
      HFOBREA1   ="Main reason for most recent home blood stool test"
      COLPROB1   =
"Doctor recommended you be tested for colon/rectum problems, past 12 months"

      /* ASI LABELS */

      ASICPUSE   ="How often do you use a computer"
      ASISATHC   ="How satisfied with health care, past 12 mo"
      ASITENUR   ="Length of time living in neighborhood"
      ASINHELP   ="Agree/disagree…people in neighborhood help each other"
      ASINCNTO   ="Agree/disagree…people I count on in neighborhood"
      ASINTRU    ="Agree/disagree…people in neighborhood can be trusted"
      ASINKNT    ="Agree/disagree…close-knit neighborhood"
      ASISIM     ="How you think of yourself (sexual orientation; male)"
      ASISIF     ="How do you think of yourself (Sexual orientation; female)"
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
      CHLYR1    SAP027X.   CHDEV     SAP027X.   ANGEV     SAP027X.
      MIEV      SAP027X.   HRTEV     SAP027X.   STREV     SAP027X.
      EPHEV     SAP027X.   COPDEV    SAP027X.   ASPMEDEV  SAP027X.
      ASPMEDAD  SAP027X.   ASPMDMED  SAP027X.   ASPONOWN  SAP027X.
      AASMEV    SAP027X.   AASSTILL  SAP027X.   AASMYR    SAP027X.
      AASERYR1  SAP027X.   AASMHSP1  SAP027X.   AWZMSWK1  SAP061X.
      AASMMED1  SAP027X.   AASMTYP   SAP063X.   AASMCAN1  SAP027X.
      AASMDTP2  SAP065X.   AASWMP1   SAP027X.   AASCLASS  SAP027X.
      AAS_REC   SAP027X.   AAS_RES   SAP027X.   AAS_MON   SAP027X.
      AAPENVLN  SAP071X.   AAROUTIN  SAP072X.   AASYMPT   SAP073X.
      AARESCUE  SAP073X.   AAACTLIM  SAP073X.   ULCEV     SAP027X.
      ULCYR     SAP027X.   CANEV     SAP027X.   CNKIND1   SAP079X.
      CNKIND2   SAP079X.   CNKIND3   SAP079X.   CNKIND4   SAP079X.
      CNKIND5   SAP079X.   CNKIND6   SAP079X.   CNKIND7   SAP079X.
      CNKIND8   SAP079X.   CNKIND9   SAP079X.   CNKIND10  SAP079X.
      CNKIND11  SAP079X.   CNKIND12  SAP079X.   CNKIND13  SAP079X.
      CNKIND14  SAP079X.   CNKIND15  SAP079X.   CNKIND16  SAP079X.
      CNKIND17  SAP079X.   CNKIND18  SAP079X.   CNKIND19  SAP079X.
      CNKIND20  SAP079X.   CNKIND21  SAP079X.   CNKIND22  SAP079X.
      CNKIND23  SAP079X.   CNKIND24  SAP079X.   CNKIND25  SAP079X.
      CNKIND26  SAP079X.   CNKIND27  SAP079X.   CNKIND28  SAP079X.
      CNKIND29  SAP079X.   CNKIND30  SAP079X.   CNKIND31  SAP079X.
      CANAGE1   SAP110X.   CANAGE2   SAP110X.   CANAGE3   SAP110X.
      CANAGE4   SAP110X.   CANAGE5   SAP110X.   CANAGE6   SAP110X.
      CANAGE7   SAP110X.   CANAGE8   SAP110X.   CANAGE9   SAP110X.
      CANAGE10  SAP110X.   CANAGE11  SAP110X.   CANAGE12  SAP110X.
      CANAGE13  SAP110X.   CANAGE14  SAP110X.   CANAGE15  SAP110X.
      CANAGE16  SAP110X.   CANAGE17  SAP110X.   CANAGE18  SAP110X.
      CANAGE19  SAP110X.   CANAGE20  SAP110X.   CANAGE21  SAP110X.
      CANAGE22  SAP110X.   CANAGE23  SAP110X.   CANAGE24  SAP110X.
      CANAGE25  SAP110X.   CANAGE26  SAP110X.   CANAGE27  SAP110X.
      CANAGE28  SAP110X.   CANAGE29  SAP110X.   CANAGE30  SAP110X.
      DIBEV     SAP140X.   DIBPRE1   SAP027X.   DIBAGE    SAP110X.
      DIFAGE2   SAP143X.   INSLN     SAP027X.   DIBPILL   SAP027X.
      EPILEP1   SAP027X.   EPILEP2   SAP027X.   EPILEP3   SAP148X.
      EPILEP4   SAP027X.   EPILEP5   SAP150X.   AHAYFYR   SAP027X.
      SINYR     SAP027X.   CBRCHYR   SAP027X.   KIDWKYR   SAP027X.
      LIVYR     SAP027X.   JNTSYMP   SAP027X.   JMTHP1    SAP079X.
      JMTHP2    SAP079X.   JMTHP3    SAP079X.   JMTHP4    SAP079X.
      JMTHP5    SAP079X.   JMTHP6    SAP079X.   JMTHP7    SAP079X.
      JMTHP8    SAP079X.   JMTHP9    SAP079X.   JMTHP10   SAP079X.
      JMTHP11   SAP079X.   JMTHP12   SAP079X.   JMTHP13   SAP079X.
      JMTHP14   SAP079X.   JMTHP15   SAP079X.   JMTHP16   SAP079X.
      JMTHP17   SAP079X.   JNTCHR    SAP027X.   JNTHP     SAP027X.
      ARTH1     SAP027X.   ARTHLMT   SAP027X.   PAINECK   SAP027X.
      PAINLB    SAP027X.   PAINLEG   SAP027X.   PAINFACE  SAP027X.
      AMIGR     SAP027X.   ACOLD2W   SAP027X.   AINTIL2W  SAP027X.
      PREGNOW   SAP027X.   PREGFLYR  SAP027X.   HRAIDNOW  SAP027X.
      HRAIDEV   SAP027X.   AHEARST1  SAP189X.   AVISION   SAP027X.
      ABLIND    SAP027X.   LUPPRT    SAP027X.

      /* AIS FORMAT ASSOCIATIONS */

      AIMSUPEV  SAP027X.   AIMSPSTL  SAP027X.   AIMSPMED  SAP027X.
      AIMSPCHC  SAP027X.   AIMSPSHC  SAP027X.   AIMSPCAN  SAP027X.
      AIMSPCLD  SAP027X.

      /* AHS FORMAT ASSOCIATIONS */

      WKDAYR    SAP200X.   BEDDAYR   SAP200X.   AHSTATYR  SAP202X.
      SPECEQ    SAP027X.   FLWALK    SAP204X.   FLCLIMB   SAP204X.
      FLSTAND   SAP204X.   FLSIT     SAP204X.   FLSTOOP   SAP204X.
      FLREACH   SAP204X.   FLGRASP   SAP204X.   FLCARRY   SAP204X.
      FLPUSH    SAP204X.   FLSHOP    SAP204X.   FLSOCL    SAP204X.
      FLRELAX   SAP204X.   FLA1AR    SAP216X.   AFLHCA1   SAP079X.
      AFLHCA2   SAP079X.   AFLHCA3   SAP079X.   AFLHCA4   SAP079X.
      AFLHCA5   SAP079X.   AFLHCA6   SAP079X.   AFLHCA7   SAP079X.
      AFLHCA8   SAP079X.   AFLHCA9   SAP079X.   AFLHCA10  SAP079X.
      AFLHCA11  SAP079X.   AFLHCA12  SAP079X.   AFLHCA13  SAP079X.
      ALHCA14A  SAP079X.   AFLHCA15  SAP079X.   AFLHCA16  SAP079X.
      AFLHCA17  SAP079X.   AFLHCA18  SAP079X.   AFLHC19_  SAP079X.
      AFLHC20_  SAP079X.   AFLHC21_  SAP079X.   AFLHC22_  SAP079X.
      AFLHC23_  SAP079X.   AFLHC24_  SAP079X.   AFLHC25_  SAP079X.
      AFLHC26_  SAP079X.   AFLHC27_  SAP079X.   AFLHC28_  SAP079X.
      AFLHC29_  SAP079X.   AFLHC30_  SAP079X.   AFLHC31_  SAP079X.
      AFLHC32_  SAP079X.   AFLHC33_  SAP079X.   AFLHC34_  SAP079X.
      AFLHCA90  SAP079X.   AFLHCA91  SAP079X.   ALTIME1   SAP253X.
      ALUNIT1   SAP254X.   ALDURA1   SAP255X.   ALDURB1   SAP256X.
      ALCHRC1   SAP257X.   ALTIME2   SAP253X.   ALUNIT2   SAP254X.
      ALDURA2   SAP255X.   ALDURB2   SAP256X.   ALCHRC2   SAP257X.
      ALTIME3   SAP253X.   ALUNIT3   SAP254X.   ALDURA3   SAP255X.
      ALDURB3   SAP256X.   ALCHRC3   SAP257X.   ALTIME4   SAP253X.
      ALUNIT4   SAP254X.   ALDURA4   SAP255X.   ALDURB4   SAP256X.
      ALCHRC4   SAP257X.   ALTIME5   SAP253X.   ALUNIT5   SAP254X.
      ALDURA5   SAP255X.   ALDURB5   SAP256X.   ALCHRC5   SAP257X.
      ALTIME6   SAP253X.   ALUNIT6   SAP254X.   ALDURA6   SAP255X.
      ALDURB6   SAP256X.   ALCHRC6   SAP257X.   ALTIME7   SAP253X.
      ALUNIT7   SAP254X.   ALDURA7   SAP255X.   ALDURB7   SAP256X.
      ALCHRC7   SAP257X.   ALTIME8   SAP253X.   ALUNIT8   SAP254X.
      ALDURA8   SAP255X.   ALDURB8   SAP256X.   ALCHRC8   SAP257X.
      ALTIME9   SAP253X.   ALUNIT9   SAP254X.   ALDURA9   SAP255X.
      ALDURB9   SAP256X.   ALCHRC9   SAP257X.   ALTIME10  SAP253X.
      ALUNIT10  SAP254X.   ALDURA10  SAP255X.   ALDURB10  SAP256X.
      ALCHRC10  SAP257X.   ALTIME11  SAP253X.   ALUNIT11  SAP254X.
      ALDURA11  SAP255X.   ALDURB11  SAP256X.   ALCHRC11  SAP257X.
      ALTIME12  SAP253X.   ALUNIT12  SAP254X.   ALDURA12  SAP255X.
      ALDURB12  SAP256X.   ALCHRC12  SAP257X.   ALTIME13  SAP253X.
      ALUNIT13  SAP254X.   ALDURA13  SAP255X.   ALDURB13  SAP256X.
      ALCHRC13  SAP257X.   ATIME14A  SAP253X.   AUNIT14A  SAP254X.
      ADURA14A  SAP255X.   ADURB14A  SAP256X.   ACHRC14A  SAP257X.
      ALTIME15  SAP253X.   ALUNIT15  SAP254X.   ALDURA15  SAP255X.
      ALDURB15  SAP256X.   ALCHRC15  SAP257X.   ALTIME16  SAP253X.
      ALUNIT16  SAP254X.   ALDURA16  SAP255X.   ALDURB16  SAP256X.
      ALCHRC16  SAP257X.   ALTIME17  SAP253X.   ALUNIT17  SAP254X.
      ALDURA17  SAP255X.   ALDURB17  SAP256X.   ALCHRC17  SAP257X.
      ALTIME18  SAP253X.   ALUNIT18  SAP254X.   ALDURA18  SAP255X.
      ALDURB18  SAP256X.   ALCHRC18  SAP257X.   ALTIME19  SAP253X.
      ALUNIT19  SAP254X.   ALDURA19  SAP255X.   ALDURB19  SAP256X.
      ALCHRC19  SAP257X.   ALTIME20  SAP253X.   ALUNIT20  SAP254X.
      ALDURA20  SAP255X.   ALDURB20  SAP256X.   ALCHRC20  SAP257X.
      ALTIME21  SAP253X.   ALUNIT21  SAP254X.   ALDURA21  SAP255X.
      ALDURB21  SAP256X.   ALCHRC21  SAP257X.   ALTIME22  SAP253X.
      ALUNIT22  SAP254X.   ALDURA22  SAP255X.   ALDURB22  SAP256X.
      ALCHRC22  SAP257X.   ALTIME23  SAP253X.   ALUNIT23  SAP254X.
      ALDURA23  SAP255X.   ALDURB23  SAP256X.   ALCHRC23  SAP257X.
      ALTIME24  SAP253X.   ALUNIT24  SAP254X.   ALDURA24  SAP255X.
      ALDURB24  SAP256X.   ALCHRC24  SAP257X.   ALTIME25  SAP253X.
      ALUNIT25  SAP254X.   ALDURA25  SAP255X.   ALDURB25  SAP256X.
      ALCHRC25  SAP257X.   ALTIME26  SAP253X.   ALUNIT26  SAP254X.
      ALDURA26  SAP255X.   ALDURB26  SAP256X.   ALCHRC26  SAP257X.
      ALTIME27  SAP253X.   ALUNIT27  SAP254X.   ALDURA27  SAP255X.
      ALDURB27  SAP256X.   ALCHRC27  SAP257X.   ALTIME28  SAP253X.
      ALUNIT28  SAP254X.   ALDURA28  SAP255X.   ALDURB28  SAP256X.
      ALCHRC28  SAP257X.   ALTIME29  SAP253X.   ALUNIT29  SAP254X.
      ALDURA29  SAP255X.   ALDURB29  SAP256X.   ALCHRC29  SAP257X.
      ALTIME30  SAP253X.   ALUNIT30  SAP254X.   ALDURA30  SAP255X.
      ALDURB30  SAP256X.   ALCHRC30  SAP257X.   ALTIME31  SAP253X.
      ALUNIT31  SAP254X.   ALDURA31  SAP255X.   ALDURB31  SAP256X.
      ALCHRC31  SAP257X.   ALTIME32  SAP253X.   ALUNIT32  SAP254X.
      ALDURA32  SAP255X.   ALDURB32  SAP256X.   ALCHRC32  SAP257X.
      ALTIME33  SAP253X.   ALUNIT33  SAP254X.   ALDURA33  SAP255X.
      ALDURB33  SAP256X.   ALCHRC33  SAP257X.   ALTIME34  SAP253X.
      ALUNIT34  SAP254X.   ALDURA34  SAP255X.   ALDURB34  SAP256X.
      ALCHRC34  SAP257X.   ALTIME90  SAP253X.   ALUNIT90  SAP254X.
      ALDURA90  SAP255X.   ALDURB90  SAP256X.   ALCHRC90  SAP257X.
      ALTIME91  SAP253X.   ALUNIT91  SAP254X.   ALDURA91  SAP255X.
      ALDURB91  SAP256X.   ALCHRC91  SAP257X.   ALCNDRT   SAP433X.
      ALCHRONR  SAP434X.

      /* AHB FORMAT ASSOCIATIONS */

      SMKEV     SAP027X.   SMKREG    SAP436X.   SMKNOW    SAP437X.
      SMKSTAT2  SAP438X.   SMKQTNO   SAP439X.   SMKQTTP   SAP440X.
      SMKQTY    SAP441X.   CIGSDA1   SAP442X.   CIGDAMO   SAP443X.
      CIGSDA2   SAP442X.   CIGSDAY   SAP442X.   CIGQTYR   SAP027X.
      OTHCIGEV  SAP027X.   OTHCIGED  SAP448X.   SMKLESEV  SAP027X.
      SMKLESED  SAP448X.   TOBLASYR  SAP027X.   TOBQTYR   SAP027X.
      VIGNO     SAP453X.   VIGTP     SAP454X.   VIGFREQW  SAP455X.
      VIGLNGNO  SAP456X.   VIGLNGTP  SAP457X.   VIGMIN    SAP456X.
      MODNO     SAP453X.   MODTP     SAP454X.   MODFREQW  SAP461X.
      MODLNGNO  SAP456X.   MODLNGTP  SAP457X.   MODMIN    SAP456X.
      STRNGNO   SAP453X.   STRNGTP   SAP454X.   STRFREQW  SAP467X.
      ALC1YR    SAP027X.   ALCLIFE   SAP027X.   ALC12MNO  SAP470X.
      ALC12MTP  SAP471X.   ALC12MWK  SAP472X.   ALC12MYR  SAP473X.
      ALCAMT    SAP474X.   ALCSTAT   SAP475X.   ALC5UPNO  SAP473X.
      ALC5UPTP  SAP477X.   ALC5UPYR  SAP473X.   AHEIGHT   SAP479X.
      AWEIGHTP  SAP480X.   BMI       SAP481X.

      /* AAU FORMAT ASSOCIATIONS */

      AUSUALPL  SAP482X.   APLKIND   SAP483X.   AHCPLROU  SAP027X.
      AHCPLKND  SAP485X.   AHCCHGYR  SAP027X.   AHCCHGHI  SAP027X.
      ANOUSPL1  SAP488X.   ANOUSPL2  SAP488X.   ANOUSPL3  SAP488X.
      ANOUSPL4  SAP488X.   ANOUSPL5  SAP488X.   ANOUSPL6  SAP488X.
      ANOUSPL7  SAP488X.   ANOUSPL8  SAP488X.   ANOUSPL9  SAP488X.
      APRVTRYR  SAP027X.   APRVTRFD  SAP073X.   ADRNANP   SAP073X.
      ADRNAI    SAP500X.   AHCDLYR1  SAP027X.   AHCDLYR2  SAP027X.
      AHCDLYR3  SAP027X.   AHCDLYR4  SAP027X.   AHCDLYR5  SAP027X.
      AHCAFYR1  SAP027X.   AHCAFYR2  SAP027X.   AHCAFYR3  SAP027X.
      AHCAFYR4  SAP027X.   AHCAFYR5  SAP073X.   AHCAFYR6  SAP073X.
      AWORPAY   SAP512X.   AHICOMP   SAP202X.   ARX12MO   SAP027X.
      ARX12_1   SAP027X.   ARX12_2   SAP073X.   ARX12_3   SAP027X.
      ARX12_4   SAP027X.   ARX12_5   SAP027X.   ARX12_6   SAP027X.
      ADNLONG2  SAP521X.   AHCSYR1   SAP027X.   AHCSYR2   SAP027X.
      AHCSYR3   SAP027X.   AHCSYR4   SAP027X.   AHCSYR5   SAP027X.
      AHCSYR6   SAP027X.   AHCSYR7   SAP027X.   AHCSYR8   SAP027X.
      AHCSYR9   SAP027X.   AHCSYR10  SAP027X.   AHERNOY2  SAP532X.
      AERVISND  SAP027X.   AERHOS    SAP027X.   AERREA1R  SAP027X.
      AERREA2R  SAP027X.   AERREA3R  SAP027X.   AERREA4R  SAP027X.
      AERREA5R  SAP027X.   AERREA6R  SAP027X.   AERREA7R  SAP073X.
      AERREA8R  SAP073X.   AHCHYR    SAP027X.   AHCHMOYR  SAP544X.
      AHCHNOY2  SAP545X.   AHCNOYR2  SAP532X.   ASRGYR    SAP027X.
      ASRGNOYR  SAP548X.   AMDLONGR  SAP521X.   AVISLAST  SAP550X.
      ALASTYP1  SAP079X.   ALASTYP2  SAP079X.   ALASTYP3  SAP079X.
      ALASTYP4  SAP079X.   ALASTVRB  $SAP555X.  AVISAPN2  SAP556X.
      AVISAPT2  SAP557X.   AWAITRMN  SAP558X.   AWAITRMT  SAP559X.
      HIT1A     SAP073X.   HIT2A     SAP027X.   HIT3A     SAP027X.
      HIT4A     SAP073X.   HIT5A     SAP073X.   SHTFLU2   SAP027X.
      ASHFLUM2  SAP566X.   ASHFLUY2  SAP567X.   FLUSHPG1  SAP568X.
      FLUSHPG2  SAP569X.   SPRFLU2   SAP027X.   ASPFLUM2  SAP566X.
      ASPFLUY2  SAP567X.   SHTPNUYR  SAP027X.   APOX      SAP027X.
      APOX12MO  SAP027X.   AHEP      SAP027X.   AHEPLIV   SAP027X.
      AHEPBTST  SAP073X.   SHTHEPB   SAP027X.   SHEPDOS   SAP580X.
      SHTHEPA   SAP027X.   SHEPANUM  SAP582X.   AHEPCTST  SAP073X.
      AHEPCRES  SAP584X.   SHINGLES  SAP027X.   SHTTD     SAP027X.
      SHTTD05   SAP027X.   SHTTDAP2  SAP588X.   SHTHPV2   SAP589X.
      SHHPVDOS  SAP590X.   AHPVAGE   SAP456X.   LIVEV     SAP027X.
      TRAVEL    SAP027X.   WRKHLTH2  SAP027X.   WRKDIR    SAP027X.
      APSBPCHK  SAP027X.   APSCHCHK  SAP027X.   APSBSCHK  SAP027X.
      APSPAP    SAP027X.   APSMAM    SAP027X.   APSCOL    SAP073X.
      APSDIET   SAP027X.   APSSMKC   SAP073X.   LTCFAM    SAP073X.
      LTCHELP   SAP605X.   LTCWHO1   SAP488X.   LTCWHO2   SAP488X.
      LTCWHO3   SAP488X.   LTCWHO4   SAP488X.   LTCWHO5   SAP488X.
      AINDINS   SAP073X.   AINDPRCH  SAP073X.   AINDWHO   SAP613X.
      AINDDIF1  SAP614X.   AINDDIF2  SAP615X.   AINDENY1  SAP073X.
      AINDENY2  SAP073X.   AINDENY3  SAP073X.   AINDNOT1  SAP488X.
      AINDNOT2  SAP488X.   AINDNOT3  SAP488X.   AINDNOT4  SAP488X.
      AINDNOT5  SAP488X.   AEXCHNG   SAP027X.

      /* NAF FORMAT ASSOCIATIONS */

      SNONCE    SAP027X.   SNNUM1    SAP456X.   PAPHAD1   SAP027X.
      RPAP1_M1  SAP628X.   RPAP1_Y1  SAP629X.   RPAP1N1   SAP439X.
      RPAP1T1   SAP631X.   RPAP21    SAP632X.   RPAP3A1   SAP633X.
      RPAP3B1   SAP633X.   PAPREA1   SAP635X.   MDRECP1   SAP636X.
      PAPWHEN   SAP637X.   HYST      SAP027X.   MAMHAD    SAP027X.
      RMAM1_MT  SAP628X.   RMAM1_YR  SAP629X.   RMAM1N    SAP439X.
      RMAM1T    SAP631X.   RMAM2     SAP632X.   RMAM3A    SAP632X.
      RMAM3B    SAP632X.   MAMREAS   SAP635X.   MDRECMAM  SAP636X.
      PSAREC    SAP027X.   PSAHAD    SAP027X.   RPSA1_MT  SAP628X.
      RPSA1_YR  SAP629X.   RPSA1N    SAP439X.   RPSA1T    SAP631X.
      RPSA2     SAP632X.   RPSA3A    SAP632X.   RPSA3B    SAP632X.
      PSAREAS   SAP635X.   COLHAD    SAP027X.   COL_MT    SAP628X.
      COL_YR    SAP629X.   COLN      SAP439X.   COLT      SAP631X.
      COL2      SAP664X.   COL3A     SAP664X.   COL3B     SAP664X.
      COLREAS   SAP667X.   SIGHAD    SAP027X.   SIG_MT    SAP628X.
      SIG_YR    SAP629X.   SIGN      SAP439X.   SIGT      SAP631X.
      SIG2      SAP664X.   SIG3A     SAP664X.   SIG3B     SAP664X.
      SIGREAS   SAP667X.   HFOBHAD   SAP027X.   RHFO1_MT  SAP628X.
      RHFO1_YR  SAP629X.   RHFO1N    SAP439X.   RHFO1T    SAP631X.
      RHFO2     SAP664X.   RHFOB3A   SAP664X.   RHFOB3B   SAP664X.
      HFOBREA1  SAP635X.   COLPROB1  SAP027X.

      /* ASI FORMAT ASSOCIATIONS */

      ASICPUSE  SAP687X.   ASISATHC  SAP688X.   ASITENUR  SAP689X.
      ASINHELP  SAP690X.   ASINCNTO  SAP690X.   ASINTRU   SAP690X.
      ASINKNT   SAP690X.   ASISIM    SAP694X.   ASISIF    SAP695X.
      ASIRETR   SAP696X.   ASIMEDC   SAP696X.   ASISTLV   SAP696X.
      ASICNHC   SAP696X.   ASICCOLL  SAP700X.   ASINBILL  SAP696X.
      ASIHCST   SAP696X.   ASICCMP   SAP703X.   ASISLEEP  SAP544X.
      ASISLPFL  SAP705X.   ASISLPST  SAP706X.   ASISLPMD  SAP707X.
      ASIREST   SAP708X.   ASISAD    SAP709X.   ASINERV   SAP709X.
      ASIRSTLS  SAP709X.   ASIHOPLS  SAP709X.   ASIEFFRT  SAP709X.
      ASIWTHLS  SAP709X.   ASIMUCH   SAP715X.   ASIHIVT   SAP027X.
      ASIHIVWN  SAP717X.

      /* AWB FORMAT ASSOCIATIONS */

      AWEBUSE   SAP027X.   AWEBOFNO  SAP456X.   AWEBOFTP  SAP720X.
      AWEBEML   SAP027X.   AWEBMNO   SAP456X.   AWEBMTP   SAP720X.;
RUN;

PROC CONTENTS DATA=NHIS.SAMADULT;
   TITLE1 'CONTENTS OF THE 2013 NHIS Sample Adult FILE';

PROC FREQ DATA=NHIS.SAMADULT NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2013 NHIS Sample Adult FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA_SA;

PROC FREQ DATA=NHIS.SAMADULT NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2013 NHIS Sample Adult FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
