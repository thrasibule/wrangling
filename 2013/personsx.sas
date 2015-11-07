*********************************************************************
 MAY 30, 2014  1:14 PM
 
 This is an example of a SAS program that creates a SAS
 file from the 2013 NHIS Public Use PERSONSX.DAT ASCII file
 
 This is stored in PERSONSX.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2013";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2013";

FILENAME ASCIIDAT 'C:\NHIS2013\PERSONSX.dat';

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
   VALUE PEP001X
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
   VALUE PEP002X
      .                   = '.'
      OTHER              = "Survey Year"
   ;
   VALUE PEP004X
      1                  = "1 Quarter 1"
      2                  = "2 Quarter 2"
      3                  = "3 Quarter 3"
      4                  = "4 Quarter 4"
   ;
   VALUE PEP005X
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
   VALUE PEP010X
      1                  = "1 Northeast"
      2                  = "2 Midwest"
      3                  = "3 South"
      4                  = "4 West"
   ;
   VALUE PEP013X
      1                  = "1 Male"
      2                  = "2 Female"
   ;
   VALUE PEP014X
      1                  = "1 Yes"
      2                  = "2 No"
   ;
   VALUE PEP015X
      1                  = "1 Imputed: was 'refused' Hispanic Origin"
      2                  = "2 Imputed: was 'not ascertained' Hispanic Origin"
      3                  = "3 Imputed: was 'does not know' Hispanic Origin"
      4                  = "4 Hispanic origin given by respondent/proxy"
   ;
   VALUE PEP016X
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
   VALUE PEP017X
      1                  = "1 Imputed: was 'refused' Hispanic Origin"
      2                  = "2 Imputed: was 'not ascertained' Hispanic Origin"
      3                  = "3 Imputed: was 'does not know' Hispanic Origin"
      4                  = "4 Hispanic Origin type given by respondent/proxy"
   ;
   VALUE PEP018X
      01                 = "01 White only"
      02                 = "02 Black/African American only"
      03                 = "03 AIAN only"
      04                 = "04 Asian only"
      05                 = "05 Race group not releasable (See file layout)"
      06                 = "06 Multiple race"
   ;
   VALUE PEP019X
      1                  = "1 Imputed: was 'refused'"
      2                  = "2 Imputed: was 'not ascertained'"
      3                  = "3 Imputed: was 'does not know'"
      4                  = "4 Imputed: was other race'"
      5                  = "5 Imputed: was 'unspecified multiple race'"
      6                  = "6 Race given by respondent/proxy"
   ;
   VALUE PEP020X
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
   VALUE PEP021X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American) (includes Eskimo, Aleut)"
      06                 = "06 Chinese"
      07                 = "07 Filipino"
      12                 = "12 Asian Indian"
      16                 = "16 Other race (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE PEP022X
      1                  = "1 White"
      2                  = "2 Black"
      3                  = "3 Asian"
      4                  = "4 All other race groups (See file layout)"
   ;
   VALUE PEP023X
      1                  = "1 Hispanic"
      2                  = "2 Non-Hispanic White"
      3                  = "3 Non-Hispanic Black"
      4                  = "4 Non-Hispanic Asian"
      5                  = "5 Non-Hispanic All other race groups"
   ;
   VALUE PEP024X
      1                  = "1 Ethnicity/race imputed"
      2                  = "2 Ethnicity/race given by respondent/proxy"
   ;
   VALUE PEP025X
      1                  = "1 Armed Forces"
      2                  = "2 Not Armed Forces"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP026X
      01                 = "01 Household reference person"
      02                 = "02 Spouse (husband/wife)"
      03                 = "03 Unmarried Partner"
      04                 = "04 Child (biological/adoptive/in-law/step/foster)"
      05                 = "05 Child of partner"
      06                 = "06 Grandchild"
      07                 = "07 Parent (biological/adoptive/in-law/step/foster)"
      08                 = 
"08 Brother/sister (biological/adoptive/in-law/step/foster)"
      09                 = "09 Grandparent (Grandmother/Grandfather)"
      10                 = "10 Aunt/Uncle"
      11                 = "11 Niece/Nephew"
      12                 = "12 Other relative"
      13                 = "13 Housemate/roommate"
      14                 = "14 Roomer/Boarder"
      15                 = "15 Other nonrelative"
      16                 = "16 Legal guardian"
      17                 = "17 Ward"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE $PEP027X
      "8"                = "8 Not ascertained"
      "P"                = "P HH Reference person"
   ;
   VALUE PEP028X
      01                 = "01 Family reference person"
      02                 = "02 Spouse (husband/wife)"
      03                 = "03 Unmarried Partner"
      04                 = "04 Child (biological/adoptive/in-law/step/foster)"
      05                 = "05 Child of partner"
      06                 = "06 Grandchild"
      07                 = "07 Parent (biological/adoptive/in-law/step/foster)"
      08                 = 
"08 Brother/sister (biological/adoptive/in-law/step/foster)"
      09                 = "09 Grandparent (Grandmother/Grandfather)"
      10                 = "10 Aunt/Uncle"
      11                 = "11 Niece/Nephew"
      12                 = "12 Other relative"
      16                 = "16 Legal guardian"
      17                 = "17 Ward"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE $PEP029X
      "01"               = "01 January"
      "02"               = "02 February"
      "03"               = "03 March"
      "04"               = "04 April"
      "05"               = "05 May"
      "06"               = "06 June"
      "07"               = "07 July"
      "08"               = "08 August"
      "09"               = "09 September"
      "10"               = "10 October"
      "11"               = "11 November"
      "12"               = "12 December"
      "97"               = "97 Refused"
      "98"               = "98 Not ascertained"
      "99"               = "99 Don't know"
   ;
   VALUE $PEP030X
      OTHER              = "Birth Year"
      ' '                 = ' '
      "9997"             = "9997 Refused"
      "9998"             = "9998 Not ascertained"
      "9999"             = "9999 Don't know"
   ;
   VALUE PEP031X
      00                 = "00 Under 1 year"
      85                 = "85 85+ years"
   ;
   VALUE PEP032X
      1                  = "1 Change on AGE due to data entry error"
   ;
   VALUE $PEP033X
      "8"                = "8 Not ascertained"
      "B"                = "B Family respondent"
   ;
   VALUE $PEP034X
      "8"                = "8 Not ascertained"
      "P"                = "P Family reference person"
   ;
   VALUE PEP035X
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
   VALUE $PEP036X
      "98"               = "98 Not ascertained"
   ;
   VALUE PEP037X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP038X
      1                  = "1 Married"
      2                  = "2 Widowed"
      3                  = "3 Divorced"
      4                  = "4 Separated"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP040X
      1                  = "1 Separated"
      2                  = "2 Divorced"
      3                  = "3 Married"
      4                  = "4 Single/never married"
      5                  = "5 Widowed"
      9                  = "9 Unknown marital status"
   ;
   VALUE PEP041X
      1                  = "1 Full or Adopted {brother/sister}"
      2                  = "2 Half {brother/sister}"
      3                  = "3 Step {brother/sister}"
      4                  = "4 {Brother/Sister}-in-law"
      9                  = "9 Other and unknown"
   ;
   VALUE $PEP042X
      "00"               = "00 Mother not a household member"
      "97"               = "97 Refused"
      "98"               = "98 Not ascertained"
      "99"               = "99 Don't know"
   ;
   VALUE PEP043X
      1                  = "1 Biological or adoptive"
      2                  = "2 Step"
      3                  = "3 In-law"
      9                  = "9 Other and unknown"
   ;
   VALUE $PEP044X
      "00"               = "00 Father not in household"
      "97"               = "97 Refused"
      "98"               = "98 Not ascertained"
      "99"               = "99 Don't know"
   ;
   VALUE PEP046X
      1                  = "1 Mother, no father"
      2                  = "2 Father, no mother"
      3                  = "3 Mother and father"
      4                  = "4 Neither mother nor father"
      9                  = "9 Unknown"
   ;
   VALUE PEP047X
      01                 = "01 Less than/equal to 8th grade"
      02                 = "02 9-12th grade, no high school diploma"
      03                 = "03 High school graduate/GED recipient"
      04                 = "04 Some college, no degree"
      05                 = "05 AA degree, technical or vocational"
      06                 = "06 AA degree, academic program"
      07                 = "07 Bachelor's degree"
      08                 = "08 Master's, professional, or doctoral degree"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP049X
      0                  = "0 Sample Adult - no record"
      1                  = "1 Sample Adult - has record"
      2                  = "2 Not selected as Sample Adult"
      3                  = "3 No one selected as Sample Adult"
      4                  = "4 Armed Force member"
      5                  = "5 Armed Force member - selected as Sample Adult"
   ;
   VALUE PEP050X
      0                  = "0 Sample Child - no record"
      1                  = "1 Sample Child - has record"
      2                  = "2 Not selected as Sample Child"
      3                  = "3 No one selected as Sample Child"
      4                  = "4 Emancipated minor"
   ;
   VALUE PEP051X
      1                  = "1 No sample adult record due to quality reasons"
   ;
   VALUE PEP052X
      1                  = "1 No sample child record due to quality reasons"
   ;
   VALUE PEP053X
      1                  = 
"1 Families selected to receive AFD (sample adults) section"
      2                  = 
"2 Families selected to receive FDB (all persons 1 year and older) section"
   ;
   VALUE PEP067X
      0                  = "0 Unable to work"
      1                  = "1 Limited in work"
      2                  = "2 Not limited in work"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP070X
      0                  = "0 Limitation previously mentioned"
      1                  = "1 Yes, limited in some other way"
      2                  = "2 Not limited in any way"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP071X
      1                  = "1 Limited in any way"
      2                  = "2 Not limited in any way"
      3                  = "3 Unknown if limited"
   ;
   VALUE PEP072X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP087X
      95                 = "95 95+"
      96                 = "96 Since birth"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP088X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      6                  = "6 Since birth"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP089X
      00                 = "00 Less than 1 year"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP090X
      0                  = "0 Since birth and child <1 year of age"
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP091X
      1                  = "1 Chronic"
      2                  = "2 Not chronic"
      9                  = "9 Unknown if chronic"
   ;
   VALUE PEP200X
      00                 = "00 Less than 1 year"
      85                 = "85 85+ years"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP201X
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP378X
      1                  = 
"1 At least one condition causing limitation of activity is chronic"
      2                  = 
"2 No condition causing limitation of activity is chronic"
      9                  = 
"9 Unknown if any condition causing limitation of activity is chronic"
   ;
   VALUE PEP379X
      0                  = 
"0 Not limited in any way (including unknown if limited)"
      1                  = "1 Limited; caused by at least one chronic condition"
      2                  = "2 Limited; not caused by chronic condition"
      3                  = "3 Limited; unknown if condition is chronic"
   ;
   VALUE PEP380X
      1                  = "1 Excellent"
      2                  = "2 Very good"
      3                  = "3 Good"
      4                  = "4 Fair"
      5                  = "5 Poor"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP384X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE PEP387X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP393X
      1                  = "1 Not covered"
      2                  = "2 Covered"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP394X
      1                  = "1 Yes, information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP395X
      1                  = "1 Part A - Hospital only"
      2                  = "2 Part B - Medical only"
      3                  = "3 Both Part A and Part B"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP398X
      1                  = "1 Medicare Advantage"
      2                  = "2 Private plan not Medicare Advantage"
      7                  = "7 Refused"
      8                  = "8 Not Ascertained"
      9                  = "9 Don't Know"
   ;
   VALUE PEP403X
      1                  = "1  Any doctor"
      2                  = "2  Select from book/list"
      3                  = "3  Doctor is assigned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP406X
      1                  = "1 Yes, with information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP420X
      1                  = "1 In own name"
      2                  = "2 Someone else in family"
      3                  = "3 Person not in household"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP421X
      1                  = "1 Child (including stepchildren)"
      2                  = "2 Spouse"
      3                  = "3 Former spouse"
      4                  = "4 Some other relationship"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP428X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don’t know"
   ;
   VALUE PEP432X
      01                 = "01 Through employer"
      02                 = "02 Through union"
      03                 = 
"03 Through workplace, but don't know if employer or union"
      04                 = 
"04 Through workplace, self-employed or professional association"
      05                 = "05 Purchased directly"
      06                 = 
"06 Through a state/local government or community program"
      07                 = "07 Other"
      08                 = "08 Through school"
      09                 = "09 Through parents"
      10                 = "10 Through relative other than parents"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP441X
      20000              = "20000 $20,000 or more"
      99997              = "99997 Refused"
      99998              = "99998 Not ascertained"
      99999              = "99999 Don't know"
   ;
   VALUE PEP442X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE PEP443X
      40000              = "40000 $40,000 or more"
      99997              = "99997 Refused"
      99998              = "99998 Not ascertained"
      99999              = "99999 Don't know"
   ;
   VALUE PEP444X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don’t know"
   ;
   VALUE PEP445X
      1                  = "1 HMO/IPA"
      2                  = "2 PPO"
      3                  = "3 POS"
      4                  = "4 Fee-for-service/indemnity"
      5                  = "5 Other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP446X
      1                  = "1 Less than [$1,250/$2,500]"
      2                  = "2 [$1,250/$2,500] or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP448X
      1                  = "1 Any doctor"
      2                  = "2 Select from group/list"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP481X
      1                  = "1 Less than [$1,200/$2,400]"
      2                  = "2 [$1,200/$2,400] or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP491X
      1                  = "1 Very confident"
      2                  = "2 Somewhat confident"
      3                  = "3 Not too confident"
      4                  = "4 Not confident at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE PEP509X
      1                  = "1 TRICARE Prime"
      2                  = "2 TRICARE Extra"
      3                  = "3 TRICARE Standard"
      4                  = "4 TRICARE for life"
      5                  = "5 TRICARE other (specify)"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP511X
      1                  = "1 6 months or less"
      2                  = "2 More than 6 months, but not more than 1 year ago"
      3                  = "3 More than 1 year, but not more than 3 years ago"
      4                  = "4 More than 3 years"
      5                  = "5 Never"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP542X
      0                  = "0 Zero"
      1                  = "1 Less than $500"
      2                  = "2 $500 - $1,999"
      3                  = "3 $2,000 - $2,999"
      4                  = "4 $3,000 - $4,999"
      5                  = "5 $5,000 or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP562X
      01                 = "01 United States"
      02                 = "02 Mexico, Central America, Caribbean Islands"
      03                 = "03 South America"
      04                 = "04 Europe"
      05                 = "05 Russia (and former USSR areas)"
      06                 = "06 Africa"
      07                 = "07 Middle East"
      08                 = "08 Indian Subcontinent"
      09                 = "09 Asia"
      10                 = "10 SE Asia"
      11                 = "11 Elsewhere"
      99                 = "99 Unknown"
   ;
   VALUE PEP563X
      1                  = "1 USA: born in one of the 50 United States or D.C."
      2                  = "2 USA: born in a U.S. territory"
      3                  = "3 Not born in the U.S. or a U.S. territory"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP564X
      1                  = "1 Less than 1 year"
      2                  = "2 1 yr., less than 5 yrs."
      3                  = "3 5 yrs., less than 10 yrs."
      4                  = "4 10 yrs., less than 15 yrs."
      5                  = "5 15 years or more"
      9                  = "9 Unknown"
   ;
   VALUE PEP565X
      1                  = "1 Yes, citizen of the United States"
      2                  = "2 No, not a citizen of the United States"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP568X
      00                 = "00 Never attended/kindergarten only"
      01                 = "01 1st grade"
      02                 = "02 2nd grade"
      03                 = "03 3rd grade"
      04                 = "04 4th grade"
      05                 = "05 5th grade"
      06                 = "06 6th grade"
      07                 = "07 7th grade"
      08                 = "08 8th grade"
      09                 = "09 9th grade"
      10                 = "10 10th grade"
      11                 = "11 11th grade"
      12                 = "12 12th grade, no diploma"
      13                 = "13 GED or equivalent"
      14                 = "14 High School Graduate"
      15                 = "15 Some college, no degree"
      16                 = 
"16 Associate degree: occupational, technical, or vocational program"
      17                 = "17 Associate degree: academic program"
      18                 = "18 Bachelor's degree (Example: BA, AB, BS, BBA)"
      19                 = "19 Master's degree (Example: MA, MS, MEng, MEd, MBA)
"
      20                 = 
"20 Professional School degree (Example: MD, DDS, DVM, JD)"
      21                 = "21 Doctoral degree (Example: PhD, EdD)"
      96                 = "96 Child under 5 years old"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP580X
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
   VALUE PEP581X
      01                 = "01 Taking care of house or family"
      02                 = "02 Going to school"
      03                 = "03 Retired"
      04                 = "04 On a planned vacation from work"
      05                 = "05 On family or maternity leave"
      06                 = "06 Temporarily unable to work for health reasons"
      07                 = "07 Have job/contract and off-season"
      08                 = "08 On layoff"
      09                 = "09 Disabled"
      10                 = "10 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP582X
      95                 = "95 95+ hours"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP585X
      01                 = "01 1 month or less"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP586X
      01                 = "01 $01-$4,999"
      02                 = "02 $5,000-$9,999"
      03                 = "03 $10,000-$14,999"
      04                 = "04 $15,000-$19,999"
      05                 = "05 $20,000-$24,999"
      06                 = "06 $25,000-$34,999"
      07                 = "07 $35,000-$44,999"
      08                 = "08 $45,000-$54,999"
      09                 = "09 $55,000-$64,999"
      10                 = "10 $65,000-$74,999"
      11                 = "11 $75,000 and over"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP588X
      1                  = "1 Enter 1 to continue"
      8                  = "8 Not ascertained"
   ;
   VALUE PEP607X
      0                  = "0 No WIC age-eligible family members"
      1                  = "1 At least 1 WIC age-eligible family member"
   ;
   VALUE PEP609X
      0                  = "0 Person not age-eligible"
      1                  = "1 Person age-eligible"
   ;
   VALUE PEP610X
      1                  = "1 Very well"
      2                  = "2 Well"
      3                  = "3 Not well"
      4                  = "4 Not at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;

DATA NHIS.PERSONSX;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=802;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE    3   SRVY_YR    4   HHX      $ 6   INTV_QRT   3
      INTV_MON   3   FMX      $ 2   FPX      $ 2   WTIA       8
      WTFA       8

      /* UCF LENGTHS */

      REGION     3   STRAT_P    4   PSU_P      3

      /* HHC LENGTHS */

      SEX        3   ORIGIN_I   3   ORIGIMPT   3   HISPAN_I   3
      HISPIMPT   3   RACERPI2   3   RACEIMP2   3   MRACRPI2   3
      MRACBPI2   3   RACRECI3   3   HISCODI3   3   ERIMPFLG   3
      NOWAF      3   RRP        3   HHREFLG  $ 1   FRRP       3
      DOB_M    $ 2   DOB_Y_P  $ 4   AGE_P      3   AGE_CHG    3

      /* FID LENGTHS */

      FMRPFLG  $ 1   FMREFLG  $ 1   R_MARITL   3   FSPOUS2  $ 2
      COHAB1     3   COHAB2     3   FCOHAB3  $ 2   CDCMSTAT   3
      SIB_DEGP   3   FMOTHER1 $ 2   MOM_DEGP   3   FFATHER1 $ 2
      DAD_DEGP   3   PARENTS    3   MOM_ED     3   DAD_ED     3
      ASTATFLG   3   CSTATFLG   3   QCADULT    3   QCCHILD    3

      /* FDB LENGTHS */

      FDRN_FLG   3

      /* FHS LENGTHS */

      PLAPLYLM   3   PLAPLYUN   3   PSPEDEIS   3   PSPEDEM    3
      PLAADL     3   LABATH     3   LADRESS    3   LAEAT      3
      LABED      3   LATOILT    3   LAHOME     3   PLAIADL    3
      PLAWKNOW   3   PLAWKLIM   3   PLAWALK    3   PLAREMEM   3
      PLIMANY    3   LA1AR      3   LAHCC1     3   LAHCC2     3
      LAHCC3     3   LAHCC4     3   LAHCC5     3   LAHCC6     3
      LAHCC7A    3   LAHCC8     3   LAHCC9     3   LAHCC10    3
      LAHCC11    3   LAHCC12    3   LAHCC13    3   LAHCC90    3
      LAHCC91    3   LCTIME1    3   LCUNIT1    3   LCDURA1    3
      LCDURB1    3   LCCHRC1    3   LCTIME2    3   LCUNIT2    3
      LCDURA2    3   LCDURB2    3   LCCHRC2    3   LCTIME3    3
      LCUNIT3    3   LCDURA3    3   LCDURB3    3   LCCHRC3    3
      LCTIME4    3   LCUNIT4    3   LCDURA4    3   LCDURB4    3
      LCCHRC4    3   LCTIME5    3   LCUNIT5    3   LCDURA5    3
      LCDURB5    3   LCCHRC5    3   LCTIME6    3   LCUNIT6    3
      LCDURA6    3   LCDURB6    3   LCCHRC6    3   LCTIME7A   3
      LCUNIT7A   3   LCDURA7A   3   LCDURB7A   3   LCCHRC7A   3
      LCTIME8    3   LCUNIT8    3   LCDURA8    3   LCDURB8    3
      LCCHRC8    3   LCTIME9    3   LCUNIT9    3   LCDURA9    3
      LCDURB9    3   LCCHRC9    3   LCTIME10   3   LCUNIT10   3
      LCDURA10   3   LCDURB10   3   LCCHRC10   3   LCTIME11   3
      LCUNIT11   3   LCDURA11   3   LCDURB11   3   LCCHRC11   3
      LCTIME12   3   LCUNIT12   3   LCDURA12   3   LCDURB12   3
      LCCHRC12   3   LCTIME13   3   LCUNIT13   3   LCDURA13   3
      LCDURB13   3   LCCHRC13   3   LCTIME90   3   LCUNIT90   3
      LCDURA90   3   LCDURB90   3   LCCHRC90   3   LCTIME91   3
      LCUNIT91   3   LCDURA91   3   LCDURB91   3   LCCHRC91   3
      LAHCA1     3   LAHCA2     3   LAHCA3     3   LAHCA4     3
      LAHCA5     3   LAHCA6     3   LAHCA7     3   LAHCA8     3
      LAHCA9     3   LAHCA10    3   LAHCA11    3   LAHCA12    3
      LAHCA13    3   LAHCA14A   3   LAHCA15    3   LAHCA16    3
      LAHCA17    3   LAHCA18    3   LAHCA19_   3   LAHCA20_   3
      LAHCA21_   3   LAHCA22_   3   LAHCA23_   3   LAHCA24_   3
      LAHCA25_   3   LAHCA26_   3   LAHCA27_   3   LAHCA28_   3
      LAHCA29_   3   LAHCA30_   3   LAHCA31_   3   LAHCA32_   3
      LAHCA33_   3   LAHCA34_   3   LAHCA90    3   LAHCA91    3
      LATIME1    3   LAUNIT1    3   LADURA1    3   LADURB1    3
      LACHRC1    3   LATIME2    3   LAUNIT2    3   LADURA2    3
      LADURB2    3   LACHRC2    3   LATIME3    3   LAUNIT3    3
      LADURA3    3   LADURB3    3   LACHRC3    3   LATIME4    3
      LAUNIT4    3   LADURA4    3   LADURB4    3   LACHRC4    3
      LATIME5    3   LAUNIT5    3   LADURA5    3   LADURB5    3
      LACHRC5    3   LATIME6    3   LAUNIT6    3   LADURA6    3
      LADURB6    3   LACHRC6    3   LATIME7    3   LAUNIT7    3
      LADURA7    3   LADURB7    3   LACHRC7    3   LATIME8    3
      LAUNIT8    3   LADURA8    3   LADURB8    3   LACHRC8    3
      LATIME9    3   LAUNIT9    3   LADURA9    3   LADURB9    3
      LACHRC9    3   LATIME10   3   LAUNIT10   3   LADURA10   3
      LADURB10   3   LACHRC10   3   LATIME11   3   LAUNIT11   3
      LADURA11   3   LADURB11   3   LACHRC11   3   LATIME12   3
      LAUNIT12   3   LADURA12   3   LADURB12   3   LACHRC12   3
      LATIME13   3   LAUNIT13   3   LADURA13   3   LADURB13   3
      LACHRC13   3   LTIME14A   3   LUNIT14A   3   LDURA14A   3
      LDURB14A   3   LCHRC14A   3   LATIME15   3   LAUNIT15   3
      LADURA15   3   LADURB15   3   LACHRC15   3   LATIME16   3
      LAUNIT16   3   LADURA16   3   LADURB16   3   LACHRC16   3
      LATIME17   3   LAUNIT17   3   LADURA17   3   LADURB17   3
      LACHRC17   3   LATIME18   3   LAUNIT18   3   LADURA18   3
      LADURB18   3   LACHRC18   3   LATIME19   3   LAUNIT19   3
      LADURA19   3   LADURB19   3   LACHRC19   3   LATIME20   3
      LAUNIT20   3   LADURA20   3   LADURB20   3   LACHRC20   3
      LATIME21   3   LAUNIT21   3   LADURA21   3   LADURB21   3
      LACHRC21   3   LATIME22   3   LAUNIT22   3   LADURA22   3
      LADURB22   3   LACHRC22   3   LATIME23   3   LAUNIT23   3
      LADURA23   3   LADURB23   3   LACHRC23   3   LATIME24   3
      LAUNIT24   3   LADURA24   3   LADURB24   3   LACHRC24   3
      LATIME25   3   LAUNIT25   3   LADURA25   3   LADURB25   3
      LACHRC25   3   LATIME26   3   LAUNIT26   3   LADURA26   3
      LADURB26   3   LACHRC26   3   LATIME27   3   LAUNIT27   3
      LADURA27   3   LADURB27   3   LACHRC27   3   LATIME28   3
      LAUNIT28   3   LADURA28   3   LADURB28   3   LACHRC28   3
      LATIME29   3   LAUNIT29   3   LADURA29   3   LADURB29   3
      LACHRC29   3   LATIME30   3   LAUNIT30   3   LADURA30   3
      LADURB30   3   LACHRC30   3   LATIME31   3   LAUNIT31   3
      LADURA31   3   LADURB31   3   LACHRC31   3   LATIME32   3
      LAUNIT32   3   LADURA32   3   LADURB32   3   LACHRC32   3
      LATIME33   3   LAUNIT33   3   LADURA33   3   LADURB33   3
      LACHRC33   3   LATIME34   3   LAUNIT34   3   LADURA34   3
      LADURB34   3   LACHRC34   3   LATIME90   3   LAUNIT90   3
      LADURA90   3   LADURB90   3   LACHRC90   3   LATIME91   3
      LAUNIT91   3   LADURA91   3   LADURB91   3   LACHRC91   3
      LCONDRT    3   LACHRONR   3   PHSTAT     3

      /* FAU LENGTHS */

      PDMED12M   3   PNMED12M   3   PHOSPYR2   3   HOSPNO     4
      HPNITE     4   PHCHM2W    3   PHCHMN2W   3   PHCPH2WR   3
      PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3   P10DVYR    3

      /* FHI LENGTHS */

      NOTCOV     3   MEDICARE   3   MCPART     3   MCCHOICE   3
      MCHMO      3   MCADVR     3   MCPREM     3   MCREF      3
      MCPARTD    3   MEDICAID   3   MACHMD     3   MAPCMD     3
      MAREF      3   SINGLE     3   SSTYPEA    3   SSTYPEB    3
      SSTYPEC    3   SSTYPED    3   SSTYPEE    3   SSTYPEF    3
      SSTYPEG    3   SSTYPEH    3   SSTYPEI    3   SSTYPEJ    3
      SSTYPEK    3   SSTYPEL    3   PRIVATE    3   WHONAM1    3
      PRPOLH1    3   PRCOOH1    3   PRCTOH1    3   PRRLOH11   3
      PRRLOH21   3   PRRLOH31   3   PRRLOH41   3   PRCNUM1    3
      COHU191    3   COH19251   3   COHO251    3   PLNWRKR1   3
      PLNPAY11   3   PLNPAY21   3   PLNPAY31   3   PLNPAY41   3
      PLNPAY51   3   PLNPAY61   3   PLNPAY71   3   PLNPRE1    3
      HICOSTR1   4   EMPPAY1    3   ECOSTR1    4   EMPCSTP1   4
      PLNMGD1    3   HDHP1      3   HSAHRA1    3   MGCHMD1    3
      MGPRMD1    3   MGPYMD1    3   MGPREF1    3   PCPREQ1    3
      PRRXCOV1   3   PRDNCOV1   3   WHONAM2    3   PRPOLH2    3
      PRCOOH2    3   PRCTOH2    3   PRRLOH12   3   PRRLOH22   3
      PRRLOH32   3   PRRLOH42   3   PRCNUM2    3   COHU192    3
      COH19252   3   COHO252    3   PLNWRKR2   3   PLNPAY12   3
      PLNPAY22   3   PLNPAY32   3   PLNPAY42   3   PLNPAY52   3
      PLNPAY62   3   PLNPAY72   3   PLNPRE2    3   HICOSTR2   4
      EMPPAY2    3   ECOSTR2    4   EMPCSTP2   4   PLNMGD2    3
      HDHP2      3   HSAHRA2    3   MGCHMD2    3   MGPRMD2    3
      MGPYMD2    3   MGPREF2    3   PCPREQ2    3   PRRXCOV2   3
      PRDNCOV2   3   PRPLPLUS   3   FCOVCONF   3   SCHIP      3
      STDOC1     3   STPCMD1    3   STREF1     3   OTHPUB     3
      STDOC2     3   STPCMD2    3   STREF2     3   OTHGOV     3
      STDOC3     3   STPCMD3    3   STREF3     3   MILCARE    3
      MILSPC1    3   MILSPC2    3   MILSPC3    3   MILSPC4    3
      MILMAN     3   IHS        3   HILAST     3   HISTOP1    3
      HISTOP2    3   HISTOP3    3   HISTOP4    3   HISTOP5    3
      HISTOP6    3   HISTOP7    3   HISTOP8    3   HISTOP9    3
      HISTOP10   3   HISTOP11   3   HISTOP12   3   HISTOP13   3
      HISTOP14   3   HISTOP15   3   HINOTYR    3   HINOTMYR   3
      FHICHNG    3   FHIKDBA    3   FHIKDBB    3   FHIKDBC    3
      FHIKDBD    3   FHIKDBE    3   FHIKDBF    3   FHIKDBG    3
      FHIKDBH    3   FHIKDBI    3   FHIKDBJ    3   FHIKDBK    3
      PWRKBR1    3   HCSPFYR    3   MEDBILL    3   MEDBPAY    3
      MEDBNOP    3   FSA        3   HIKINDNA   3   HIKINDNB   3
      HIKINDNC   3   HIKINDND   3   HIKINDNE   3   HIKINDNF   3
      HIKINDNG   3   HIKINDNH   3   HIKINDNI   3   HIKINDNJ   3
      HIKINDNK   3   MCAREPRB   3   MCAIDPRB   3   SINCOV     3

      /* FSD LENGTHS */

      PLBORN     3   REGIONBR   3   GEOBRTH    3   YRSINUS    3
      CITIZENP   3   HEADST     3   HEADSTV1   3   EDUC1      3
      ARMFVER    3   ARMFEV     3   ARMFFC     3   ARMFTMR1   3
      ARMFTM2P   3   ARMFTMR3   3   ARMFTMR4   3   ARMFTMR5   3
      ARMFTM6P   3   ARMFTM7P   3   ARMFDS2P   3   DOINGLWP   3
      WHYNOWKP   3   WRKHRS2    3   WRKFTALL   3   WRKLYR1    3
      WRKMYR     3   ERNYR_P    3   HIEMPOF    3

      /* FIN LENGTHS */

      FINCINT    3   PSAL       3   PSEINC     3   PSSRR      3
      PSSRRDB    3   PSSRRD     3   PPENS      3   POPENS     3
      PSSI       3   PSSID      3   PTANF      3   POWBEN     3
      PINTRSTR   3   PDIVD      3   PCHLDSP    3   PINCOT     3
      PSSAPL     3   PSDAPL     3   TANFMYR    3   ELIGPWIC   3
      PWIC       3   WIC_FLAG   3

      /* FLG LENGTHS */

      ENGLANG    3 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    INTV_QRT     13 -  13
      INTV_MON     14 -  15    FMX      $   16 -  17
      FPX      $   18 -  19    WTIA         20 -  25 .1
      WTFA         26 -  31

      /* UCF LOCATIONS */

      REGION       32 -  32    STRAT_P      33 -  35
      PSU_P        36 -  37

      /* HHC LOCATIONS */

      SEX          38 -  38    ORIGIN_I     39 -  39
      ORIGIMPT     40 -  40    HISPAN_I     41 -  42
      HISPIMPT     43 -  43    RACERPI2     44 -  45
      RACEIMP2     46 -  46    MRACRPI2     47 -  48
      MRACBPI2     49 -  50    RACRECI3     51 -  51
      HISCODI3     52 -  52    ERIMPFLG     53 -  53
      NOWAF        54 -  54    RRP          55 -  56
      HHREFLG  $   57 -  57    FRRP         58 -  59
      DOB_M    $   60 -  61    DOB_Y_P  $   62 -  65
      AGE_P        66 -  67    AGE_CHG      68 -  68


      /* FID LOCATIONS */

      FMRPFLG  $   69 -  69    FMREFLG  $   70 -  70
      R_MARITL     71 -  71    FSPOUS2  $   72 -  73
      COHAB1       74 -  74    COHAB2       75 -  75
      FCOHAB3  $   76 -  77    CDCMSTAT     78 -  78
      SIB_DEGP     79 -  79    FMOTHER1 $   80 -  81
      MOM_DEGP     82 -  82    FFATHER1 $   83 -  84
      DAD_DEGP     85 -  85    PARENTS      86 -  86
      MOM_ED       87 -  88    DAD_ED       89 -  90
      ASTATFLG     91 -  91    CSTATFLG     92 -  92
      QCADULT      93 -  93    QCCHILD      94 -  94


      /* FDB LOCATIONS */

      FDRN_FLG     95 -  95

      /* FHS LOCATIONS */

      PLAPLYLM     96 -  96    PLAPLYUN     97 -  97
      PSPEDEIS     98 -  98    PSPEDEM      99 -  99
      PLAADL      100 - 100    LABATH      101 - 101
      LADRESS     102 - 102    LAEAT       103 - 103
      LABED       104 - 104    LATOILT     105 - 105
      LAHOME      106 - 106    PLAIADL     107 - 107
      PLAWKNOW    108 - 108    PLAWKLIM    109 - 109
      PLAWALK     110 - 110    PLAREMEM    111 - 111
      PLIMANY     112 - 112    LA1AR       113 - 113
      LAHCC1      114 - 114    LAHCC2      115 - 115
      LAHCC3      116 - 116    LAHCC4      117 - 117
      LAHCC5      118 - 118    LAHCC6      119 - 119
      LAHCC7A     120 - 120    LAHCC8      121 - 121
      LAHCC9      122 - 122    LAHCC10     123 - 123
      LAHCC11     124 - 124    LAHCC12     125 - 125
      LAHCC13     126 - 126    LAHCC90     127 - 127
      LAHCC91     128 - 128    LCTIME1     129 - 130
      LCUNIT1     131 - 131    LCDURA1     132 - 133
      LCDURB1     134 - 134    LCCHRC1     135 - 135
      LCTIME2     136 - 137    LCUNIT2     138 - 138
      LCDURA2     139 - 140    LCDURB2     141 - 141
      LCCHRC2     142 - 142    LCTIME3     143 - 144
      LCUNIT3     145 - 145    LCDURA3     146 - 147
      LCDURB3     148 - 148    LCCHRC3     149 - 149
      LCTIME4     150 - 151    LCUNIT4     152 - 152
      LCDURA4     153 - 154    LCDURB4     155 - 155
      LCCHRC4     156 - 156    LCTIME5     157 - 158
      LCUNIT5     159 - 159    LCDURA5     160 - 161
      LCDURB5     162 - 162    LCCHRC5     163 - 163
      LCTIME6     164 - 165    LCUNIT6     166 - 166
      LCDURA6     167 - 168    LCDURB6     169 - 169
      LCCHRC6     170 - 170    LCTIME7A    171 - 172
      LCUNIT7A    173 - 173    LCDURA7A    174 - 175
      LCDURB7A    176 - 176    LCCHRC7A    177 - 177
      LCTIME8     178 - 179    LCUNIT8     180 - 180
      LCDURA8     181 - 182    LCDURB8     183 - 183
      LCCHRC8     184 - 184    LCTIME9     185 - 186
      LCUNIT9     187 - 187    LCDURA9     188 - 189
      LCDURB9     190 - 190    LCCHRC9     191 - 191
      LCTIME10    192 - 193    LCUNIT10    194 - 194
      LCDURA10    195 - 196    LCDURB10    197 - 197
      LCCHRC10    198 - 198    LCTIME11    199 - 200
      LCUNIT11    201 - 201    LCDURA11    202 - 203
      LCDURB11    204 - 204    LCCHRC11    205 - 205
      LCTIME12    206 - 207    LCUNIT12    208 - 208
      LCDURA12    209 - 210    LCDURB12    211 - 211
      LCCHRC12    212 - 212    LCTIME13    213 - 214
      LCUNIT13    215 - 215    LCDURA13    216 - 217
      LCDURB13    218 - 218    LCCHRC13    219 - 219
      LCTIME90    220 - 221    LCUNIT90    222 - 222
      LCDURA90    223 - 224    LCDURB90    225 - 225
      LCCHRC90    226 - 226    LCTIME91    227 - 228
      LCUNIT91    229 - 229    LCDURA91    230 - 231
      LCDURB91    232 - 232    LCCHRC91    233 - 233
      LAHCA1      234 - 234    LAHCA2      235 - 235
      LAHCA3      236 - 236    LAHCA4      237 - 237
      LAHCA5      238 - 238    LAHCA6      239 - 239
      LAHCA7      240 - 240    LAHCA8      241 - 241
      LAHCA9      242 - 242    LAHCA10     243 - 243
      LAHCA11     244 - 244    LAHCA12     245 - 245
      LAHCA13     246 - 246    LAHCA14A    247 - 247
      LAHCA15     248 - 248    LAHCA16     249 - 249
      LAHCA17     250 - 250    LAHCA18     251 - 251
      LAHCA19_    252 - 252    LAHCA20_    253 - 253
      LAHCA21_    254 - 254    LAHCA22_    255 - 255
      LAHCA23_    256 - 256    LAHCA24_    257 - 257
      LAHCA25_    258 - 258    LAHCA26_    259 - 259
      LAHCA27_    260 - 260    LAHCA28_    261 - 261
      LAHCA29_    262 - 262    LAHCA30_    263 - 263
      LAHCA31_    264 - 264    LAHCA32_    265 - 265
      LAHCA33_    266 - 266    LAHCA34_    267 - 267
      LAHCA90     268 - 268    LAHCA91     269 - 269
      LATIME1     270 - 271    LAUNIT1     272 - 272
      LADURA1     273 - 274    LADURB1     275 - 275
      LACHRC1     276 - 276    LATIME2     277 - 278
      LAUNIT2     279 - 279    LADURA2     280 - 281
      LADURB2     282 - 282    LACHRC2     283 - 283
      LATIME3     284 - 285    LAUNIT3     286 - 286
      LADURA3     287 - 288    LADURB3     289 - 289
      LACHRC3     290 - 290    LATIME4     291 - 292
      LAUNIT4     293 - 293    LADURA4     294 - 295
      LADURB4     296 - 296    LACHRC4     297 - 297
      LATIME5     298 - 299    LAUNIT5     300 - 300
      LADURA5     301 - 302    LADURB5     303 - 303
      LACHRC5     304 - 304    LATIME6     305 - 306
      LAUNIT6     307 - 307    LADURA6     308 - 309
      LADURB6     310 - 310    LACHRC6     311 - 311
      LATIME7     312 - 313    LAUNIT7     314 - 314
      LADURA7     315 - 316    LADURB7     317 - 317
      LACHRC7     318 - 318    LATIME8     319 - 320
      LAUNIT8     321 - 321    LADURA8     322 - 323
      LADURB8     324 - 324    LACHRC8     325 - 325
      LATIME9     326 - 327    LAUNIT9     328 - 328
      LADURA9     329 - 330    LADURB9     331 - 331
      LACHRC9     332 - 332    LATIME10    333 - 334
      LAUNIT10    335 - 335    LADURA10    336 - 337
      LADURB10    338 - 338    LACHRC10    339 - 339
      LATIME11    340 - 341    LAUNIT11    342 - 342
      LADURA11    343 - 344    LADURB11    345 - 345
      LACHRC11    346 - 346    LATIME12    347 - 348
      LAUNIT12    349 - 349    LADURA12    350 - 351
      LADURB12    352 - 352    LACHRC12    353 - 353
      LATIME13    354 - 355    LAUNIT13    356 - 356
      LADURA13    357 - 358    LADURB13    359 - 359
      LACHRC13    360 - 360    LTIME14A    361 - 362
      LUNIT14A    363 - 363    LDURA14A    364 - 365
      LDURB14A    366 - 366    LCHRC14A    367 - 367
      LATIME15    368 - 369    LAUNIT15    370 - 370
      LADURA15    371 - 372    LADURB15    373 - 373
      LACHRC15    374 - 374    LATIME16    375 - 376
      LAUNIT16    377 - 377    LADURA16    378 - 379
      LADURB16    380 - 380    LACHRC16    381 - 381
      LATIME17    382 - 383    LAUNIT17    384 - 384
      LADURA17    385 - 386    LADURB17    387 - 387
      LACHRC17    388 - 388    LATIME18    389 - 390
      LAUNIT18    391 - 391    LADURA18    392 - 393
      LADURB18    394 - 394    LACHRC18    395 - 395
      LATIME19    396 - 397    LAUNIT19    398 - 398
      LADURA19    399 - 400    LADURB19    401 - 401
      LACHRC19    402 - 402    LATIME20    403 - 404
      LAUNIT20    405 - 405    LADURA20    406 - 407
      LADURB20    408 - 408    LACHRC20    409 - 409
      LATIME21    410 - 411    LAUNIT21    412 - 412
      LADURA21    413 - 414    LADURB21    415 - 415
      LACHRC21    416 - 416    LATIME22    417 - 418
      LAUNIT22    419 - 419    LADURA22    420 - 421
      LADURB22    422 - 422    LACHRC22    423 - 423
      LATIME23    424 - 425    LAUNIT23    426 - 426
      LADURA23    427 - 428    LADURB23    429 - 429
      LACHRC23    430 - 430    LATIME24    431 - 432
      LAUNIT24    433 - 433    LADURA24    434 - 435
      LADURB24    436 - 436    LACHRC24    437 - 437
      LATIME25    438 - 439    LAUNIT25    440 - 440
      LADURA25    441 - 442    LADURB25    443 - 443
      LACHRC25    444 - 444    LATIME26    445 - 446
      LAUNIT26    447 - 447    LADURA26    448 - 449
      LADURB26    450 - 450    LACHRC26    451 - 451
      LATIME27    452 - 453    LAUNIT27    454 - 454
      LADURA27    455 - 456    LADURB27    457 - 457
      LACHRC27    458 - 458    LATIME28    459 - 460
      LAUNIT28    461 - 461    LADURA28    462 - 463
      LADURB28    464 - 464    LACHRC28    465 - 465
      LATIME29    466 - 467    LAUNIT29    468 - 468
      LADURA29    469 - 470    LADURB29    471 - 471
      LACHRC29    472 - 472    LATIME30    473 - 474
      LAUNIT30    475 - 475    LADURA30    476 - 477
      LADURB30    478 - 478    LACHRC30    479 - 479
      LATIME31    480 - 481    LAUNIT31    482 - 482
      LADURA31    483 - 484    LADURB31    485 - 485
      LACHRC31    486 - 486    LATIME32    487 - 488
      LAUNIT32    489 - 489    LADURA32    490 - 491
      LADURB32    492 - 492    LACHRC32    493 - 493
      LATIME33    494 - 495    LAUNIT33    496 - 496
      LADURA33    497 - 498    LADURB33    499 - 499
      LACHRC33    500 - 500    LATIME34    501 - 502
      LAUNIT34    503 - 503    LADURA34    504 - 505
      LADURB34    506 - 506    LACHRC34    507 - 507
      LATIME90    508 - 509    LAUNIT90    510 - 510
      LADURA90    511 - 512    LADURB90    513 - 513
      LACHRC90    514 - 514    LATIME91    515 - 516
      LAUNIT91    517 - 517    LADURA91    518 - 519
      LADURB91    520 - 520    LACHRC91    521 - 521
      LCONDRT     522 - 522    LACHRONR    523 - 523
      PHSTAT      524 - 524

      /* FAU LOCATIONS */

      PDMED12M    525 - 525    PNMED12M    526 - 526
      PHOSPYR2    527 - 527    HOSPNO      528 - 530
      HPNITE      531 - 533    PHCHM2W     534 - 534
      PHCHMN2W    535 - 536    PHCPH2WR    537 - 537
      PHCPHN2W    538 - 539    PHCDV2W     540 - 540
      PHCDVN2W    541 - 542    P10DVYR     543 - 543


      /* FHI LOCATIONS */

      NOTCOV      544 - 544    MEDICARE    545 - 545
      MCPART      546 - 546    MCCHOICE    547 - 547
      MCHMO       548 - 548    MCADVR      549 - 549
      MCPREM      550 - 550    MCREF       551 - 551
      MCPARTD     552 - 552    MEDICAID    553 - 553
      MACHMD      554 - 554    MAPCMD      555 - 555
      MAREF       556 - 556    SINGLE      557 - 557
      SSTYPEA     558 - 558    SSTYPEB     559 - 559
      SSTYPEC     560 - 560    SSTYPED     561 - 561
      SSTYPEE     562 - 562    SSTYPEF     563 - 563
      SSTYPEG     564 - 564    SSTYPEH     565 - 565
      SSTYPEI     566 - 566    SSTYPEJ     567 - 567
      SSTYPEK     568 - 568    SSTYPEL     569 - 569
      PRIVATE     570 - 570    WHONAM1     571 - 571
      PRPOLH1     572 - 572    PRCOOH1     573 - 573
      PRCTOH1     574 - 575    PRRLOH11    576 - 576
      PRRLOH21    577 - 577    PRRLOH31    578 - 578
      PRRLOH41    579 - 579    PRCNUM1     580 - 581
      COHU191     582 - 583    COH19251    584 - 585
      COHO251     586 - 587    PLNWRKR1    588 - 589
      PLNPAY11    590 - 590    PLNPAY21    591 - 591
      PLNPAY31    592 - 592    PLNPAY41    593 - 593
      PLNPAY51    594 - 594    PLNPAY61    595 - 595
      PLNPAY71    596 - 596    PLNPRE1     597 - 597
      HICOSTR1    598 - 602    EMPPAY1     603 - 603
      ECOSTR1     604 - 608    EMPCSTP1    609 - 611
      PLNMGD1     612 - 612    HDHP1       613 - 613
      HSAHRA1     614 - 614    MGCHMD1     615 - 615
      MGPRMD1     616 - 616    MGPYMD1     617 - 617
      MGPREF1     618 - 618    PCPREQ1     619 - 619
      PRRXCOV1    620 - 620    PRDNCOV1    621 - 621
      WHONAM2     622 - 622    PRPOLH2     623 - 623
      PRCOOH2     624 - 624    PRCTOH2     625 - 626
      PRRLOH12    627 - 627    PRRLOH22    628 - 628
      PRRLOH32    629 - 629    PRRLOH42    630 - 630
      PRCNUM2     631 - 632    COHU192     633 - 634
      COH19252    635 - 636    COHO252     637 - 638
      PLNWRKR2    639 - 640    PLNPAY12    641 - 641
      PLNPAY22    642 - 642    PLNPAY32    643 - 643
      PLNPAY42    644 - 644    PLNPAY52    645 - 645
      PLNPAY62    646 - 646    PLNPAY72    647 - 647
      PLNPRE2     648 - 648    HICOSTR2    649 - 653
      EMPPAY2     654 - 654    ECOSTR2     655 - 659
      EMPCSTP2    660 - 662    PLNMGD2     663 - 663
      HDHP2       664 - 664    HSAHRA2     665 - 665
      MGCHMD2     666 - 666    MGPRMD2     667 - 667
      MGPYMD2     668 - 668    MGPREF2     669 - 669
      PCPREQ2     670 - 670    PRRXCOV2    671 - 671
      PRDNCOV2    672 - 672    PRPLPLUS    673 - 673
      FCOVCONF    674 - 674    SCHIP       675 - 675
      STDOC1      676 - 676    STPCMD1     677 - 677
      STREF1      678 - 678    OTHPUB      679 - 679
      STDOC2      680 - 680    STPCMD2     681 - 681
      STREF2      682 - 682    OTHGOV      683 - 683
      STDOC3      684 - 684    STPCMD3     685 - 685
      STREF3      686 - 686    MILCARE     687 - 687
      MILSPC1     688 - 688    MILSPC2     689 - 689
      MILSPC3     690 - 690    MILSPC4     691 - 691
      MILMAN      692 - 692    IHS         693 - 693
      HILAST      694 - 694    HISTOP1     695 - 695
      HISTOP2     696 - 696    HISTOP3     697 - 697
      HISTOP4     698 - 698    HISTOP5     699 - 699
      HISTOP6     700 - 700    HISTOP7     701 - 701
      HISTOP8     702 - 702    HISTOP9     703 - 703
      HISTOP10    704 - 704    HISTOP11    705 - 705
      HISTOP12    706 - 706    HISTOP13    707 - 707
      HISTOP14    708 - 708    HISTOP15    709 - 709
      HINOTYR     710 - 710    HINOTMYR    711 - 712
      FHICHNG     713 - 713    FHIKDBA     714 - 714
      FHIKDBB     715 - 715    FHIKDBC     716 - 716
      FHIKDBD     717 - 717    FHIKDBE     718 - 718
      FHIKDBF     719 - 719    FHIKDBG     720 - 720
      FHIKDBH     721 - 721    FHIKDBI     722 - 722
      FHIKDBJ     723 - 723    FHIKDBK     724 - 724
      PWRKBR1     725 - 726    HCSPFYR     727 - 727
      MEDBILL     728 - 728    MEDBPAY     729 - 729
      MEDBNOP     730 - 730    FSA         731 - 731
      HIKINDNA    732 - 732    HIKINDNB    733 - 733
      HIKINDNC    734 - 734    HIKINDND    735 - 735
      HIKINDNE    736 - 736    HIKINDNF    737 - 737
      HIKINDNG    738 - 738    HIKINDNH    739 - 739
      HIKINDNI    740 - 740    HIKINDNJ    741 - 741
      HIKINDNK    742 - 742    MCAREPRB    743 - 743
      MCAIDPRB    744 - 744    SINCOV      745 - 745


      /* FSD LOCATIONS */

      PLBORN      746 - 746    REGIONBR    747 - 748
      GEOBRTH     749 - 749    YRSINUS     750 - 750
      CITIZENP    751 - 751    HEADST      752 - 752
      HEADSTV1    753 - 753    EDUC1       754 - 755
      ARMFVER     756 - 756    ARMFEV      757 - 757
      ARMFFC      758 - 758    ARMFTMR1    759 - 759
      ARMFTM2P    760 - 760    ARMFTMR3    761 - 761
      ARMFTMR4    762 - 762    ARMFTMR5    763 - 763
      ARMFTM6P    764 - 764    ARMFTM7P    765 - 765
      ARMFDS2P    766 - 766    DOINGLWP    767 - 767
      WHYNOWKP    768 - 769    WRKHRS2     770 - 771
      WRKFTALL    772 - 772    WRKLYR1     773 - 773
      WRKMYR      774 - 775    ERNYR_P     776 - 777
      HIEMPOF     778 - 778

      /* FIN LOCATIONS */

      FINCINT     779 - 779    PSAL        780 - 780
      PSEINC      781 - 781    PSSRR       782 - 782
      PSSRRDB     783 - 783    PSSRRD      784 - 784
      PPENS       785 - 785    POPENS      786 - 786
      PSSI        787 - 787    PSSID       788 - 788
      PTANF       789 - 789    POWBEN      790 - 790
      PINTRSTR    791 - 791    PDIVD       792 - 792
      PCHLDSP     793 - 793    PINCOT      794 - 794
      PSSAPL      795 - 795    PSDAPL      796 - 796
      TANFMYR     797 - 798    ELIGPWIC    799 - 799
      PWIC        800 - 800    WIC_FLAG    801 - 801


      /* FLG LOCATIONS */

      ENGLANG     802 - 802;

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
      WTIA       ="Weight - Interim Annual"
      WTFA       ="Weight - Final Annual"

      /* UCF LABELS */

      REGION     ="Region"
      STRAT_P    ="Pseudo-stratum for public-use file variance estimation"
      PSU_P      ="Pseudo-PSU for public-use file variance estimation"

      /* HHC LABELS */

      SEX        ="Sex"
      ORIGIN_I   ="Hispanic Ethnicity"
      ORIGIMPT   ="Hispanic Origin Imputation Flag"
      HISPAN_I   ="Hispanic subgroup detail"
      HISPIMPT   ="Type of Hispanic Origin Imputation Flag"
      RACERPI2   ="OMB groups w/multiple race"
      RACEIMP2   ="Race Imputation Flag"
      MRACRPI2   ="Race coded to single/multiple race group"
      MRACBPI2   ="Race coded to single/multiple race group"
      RACRECI3   ="Race Recode"
      HISCODI3   ="Race/ethnicity recode"
      ERIMPFLG   ="Ethnicity/Race Imputation Flag"
      NOWAF      ="Armed Forces Status"
      RRP        ="Relationship to the HH reference person"
      HHREFLG    ="HH Reference Person Flag"
      FRRP       ="Relationship to family ref. Person"
      DOB_M      ="Month of Birth"
      DOB_Y_P    ="Year of Birth"
      AGE_P      ="Age"
      AGE_CHG    ="Indication of AGE correction due to data entry error"

      /* FID LABELS */

      FMRPFLG    ="Family Respondent Flag"
      FMREFLG    ="Family Reference Person Flag"
      R_MARITL   ="Marital Status"
      FSPOUS2    ="Person # of spouse"
      COHAB1     ="Cohabiting person ever married"
      COHAB2     ="Cohabiting person's current marital status"
      FCOHAB3    ="Person # of partner"
      CDCMSTAT   ="CDC standard for legal marital status"
      SIB_DEGP   ="Degree of sibling relationship to HH reference person"
      FMOTHER1   ="Person # of mother"
      MOM_DEGP   ="Type of relationship with Mother"
      FFATHER1   ="Person # of father"
      DAD_DEGP   ="Type of relationship with Father"
      PARENTS    ="Parent(s) present in the family"
      MOM_ED     ="Education of Mother"
      DAD_ED     ="Education of Father"
      ASTATFLG   ="Sample Adult Flag"
      CSTATFLG   ="Sample Child Flag"
      QCADULT    ="Quality control flag for sample adult"
      QCCHILD    ="Quality control flag for sample child"

      /* FDB LABELS */

      FDRN_FLG   ="Disability Questions flag"

      /* FHS LABELS */

      PLAPLYLM   ="Is - - limited in kind/amount play?"
      PLAPLYUN   ="Is - - able to play at all?"
      PSPEDEIS   ="Does - - receive Special Education or EIS?"
      PSPEDEM    =
"Receive Special Education/EIS due to emotional/behavioral problem"
      PLAADL     ="Does - - need help with personal care?"
      LABATH     ="Does - - need help with bathing/showering?"
      LADRESS    ="Does - - need help dressing?"
      LAEAT      ="Does - - need help eating?"
      LABED      ="Does - - need help in/out of bed or chairs?"
      LATOILT    ="Does - - need help using the toilet?"
      LAHOME     ="Does - - need help to get around in the home?"
      PLAIADL    ="Does - - need help with routine needs?"
      PLAWKNOW   ="Is - - unable to work NOW due to health problem?"
      PLAWKLIM   ="Is - - limited in kind/amount of work?"
      PLAWALK    ="Does - - have difficulty walking without equipment?"
      PLAREMEM   ="Is - - limited by difficulty remembering?"
      PLIMANY    ="Is - - limited in any (other) way?"
      LA1AR      ="Any limitation - all persons, all conditions"
      LAHCC1     ="Vision/problem seeing causes limitation"
      LAHCC2     ="Hearing problem causes limitation"
      LAHCC3     ="Speech problem causes limitation"
      LAHCC4     ="Asthma/breathing problem causes limitation"
      LAHCC5     ="Birth defect causes limitation"
      LAHCC6     ="Injury causes limitation"
      LAHCC7A    =
"Intellectual disability, also known as mental retardation causes limitation"
      LAHCC8     =
"Other developmental problem (e.g., cerebral palsy) causes limitation"
      LAHCC9     =
"Other mental, emotional, or behavioral problem causes limitation"
      LAHCC10    ="Bone, joint, or muscle problem causes limitation"
      LAHCC11    ="Epilepsy or seizures cause limitation"
      LAHCC12    ="Learning disability causes limitation"
      LAHCC13    =
"Attention Deficit/Hyperactivity Disorder (ADD/ADHD) causes limitation"
      LAHCC90    ="Other impairment/problem (1) causes limitation"
      LAHCC91    ="Other impairment/problem (2) causes limitation"
      LCTIME1    ="Duration of vision problem: Number of units"
      LCUNIT1    ="Duration of vision problem: Time unit"
      LCDURA1    ="Duration of vision problem (in years)"
      LCDURB1    ="Duration of vision problem recode 2"
      LCCHRC1    ="Vision problem condition status"
      LCTIME2    ="Duration of hearing problem: Number of units"
      LCUNIT2    ="Duration of hearing problem: Time unit"
      LCDURA2    ="Duration of hearing problem (in years)"
      LCDURB2    ="Duration of hearing problem recode 2"
      LCCHRC2    ="Hearing problem condition status"
      LCTIME3    ="Duration of speech problem: Number of units"
      LCUNIT3    ="Duration of speech problem: Time unit"
      LCDURA3    ="Duration of speech problem (in years)"
      LCDURB3    ="Duration of speech problem recode 2"
      LCCHRC3    ="Speech problem condition status"
      LCTIME4    ="Duration of asthma/breathing problem: Number of units"
      LCUNIT4    ="Duration of asthma/breathing problem: Time unit"
      LCDURA4    ="Duration of asthma/breathing problem (in years)"
      LCDURB4    ="Duration of asthma/breathing problem recode 2"
      LCCHRC4    ="Asthma/breathing problem condition status"
      LCTIME5    ="Duration of birth defect: Number of units"
      LCUNIT5    ="Duration of birth defect: Time unit"
      LCDURA5    ="Duration of birth defect (in years)"
      LCDURB5    ="Duration of birth defect recode 2"
      LCCHRC5    ="Birth defect condition status"
      LCTIME6    ="Duration of injury: Number of units"
      LCUNIT6    ="Duration of injury: Time unit"
      LCDURA6    ="Duration of injury (in years)"
      LCDURB6    ="Duration of injury recode 2"
      LCCHRC6    ="Injury condition status"
      LCTIME7A   =
"Duration of intellectual disability, also known as mental retardation: Number o
f units"
      LCUNIT7A   =
"Duration of intellectual disability, also known as mental retardation: Time uni
t"
      LCDURA7A   =
"Duration of intellectual disability, also known as mental retardation (in years
)"
      LCDURB7A   =
"Duration of intellectual disability, also known as mental retardation recode 2"
      LCCHRC7A   =
"Intellectual disability, also known as mental retardation condition status"
      LCTIME8    ="Duration of other developmental problem: Number of units"
      LCUNIT8    ="Duration of other developmental problem: Time unit"
      LCDURA8    ="Duration of other developmental problem (in years)"
      LCDURB8    ="Duration of other developmental problem recode 2"
      LCCHRC8    ="Other developmental problem condition status"
      LCTIME9    =
"Duration of other mental/emotional/behavioral problem: Number of units"
      LCUNIT9    =
"Duration of other mental, emotional, or behavioral problem: Number of units"
      LCDURA9    =
"Duration of other mental, emotional, or behavioral problem (in years)"
      LCDURB9    =
"Duration of other mental, emotional, or behavioral problem recode 2"
      LCCHRC9    =
"Other mental, emotional, or behavioral problem condition status"
      LCTIME10   ="Duration of bone, joint, or muscle problem: Number of units"
      LCUNIT10   ="Duration of bone, joint, or muscle problem: Time unit"
      LCDURA10   ="Duration of bone, joint, or muscle problem (in years)"
      LCDURB10   ="Duration of bone, joint, or muscle problem recode 2"
      LCCHRC10   ="Bone, joint, or muscle problem condition status"
      LCTIME11   ="Duration of epilepsy or seizures: Number of units"
      LCUNIT11   ="Duration of epilepsy or seizures: Time unit"
      LCDURA11   ="Duration of epilepsy or seizures (in years)"
      LCDURB11   ="Duration of epilepsy or seizures recode 2"
      LCCHRC11   ="Epilepsy or seizures condition status"
      LCTIME12   ="Duration of learning disability: Number of units"
      LCUNIT12   ="Duration of learning disability: Time unit"
      LCDURA12   ="Duration of learning disability (in years)"
      LCDURB12   ="Duration of learning disability recode 2"
      LCCHRC12   ="Learning disability condition status"
      LCTIME13   =
"Duration of attention deficit/hyperactivity disorder (ADD/ADHD): Number of unit
s"
      LCUNIT13   =
"Duration of attention deficit/hyperactivity disorder (ADD/ADHD): Time unit"
      LCDURA13   =
"Duration of attention deficit/hyperactivity disorder (ADD/ADHD) (in years)"
      LCDURB13   =
"Duration of attention deficit/hyperactivity disorder (ADD/ADHD) recode 2"
      LCCHRC13   =
"Attention deficit/hyperactivity disorder (ADD/ADHD) condition status"
      LCTIME90   ="Duration of other impairment problem (1): Number of units"
      LCUNIT90   ="Duration of other impairment/problem (1): Time unit"
      LCDURA90   ="Duration of other impairment/problem (1) (in years)"
      LCDURB90   ="Duration of other impairment/problem (1) recode 2"
      LCCHRC90   ="Other impairment/problem (1) condition status"
      LCTIME91   ="Duration of other impairment/problem (2): Number of units"
      LCUNIT91   ="Duration of other impairment/problem (2): Time unit"
      LCDURA91   ="Duration of other impairment/problem (2) (in years)"
      LCDURB91   ="Duration of other impairment/problem (2) recode 2"
      LCCHRC91   ="Other impairment/problem (2) condition status"
      LAHCA1     ="Vision/problem seeing causes limitation"
      LAHCA2     ="Hearing problem causes limitation"
      LAHCA3     ="Arthritis/rheumatism causes limitation"
      LAHCA4     ="Back or neck problem causes limitation"
      LAHCA5     ="Fracture, bone/joint injury causes limitation"
      LAHCA6     ="Other injury causes limitation"
      LAHCA7     ="Heart problem causes limitation"
      LAHCA8     ="Stroke problem causes limitation"
      LAHCA9     ="Hypertension/high blood pressure causes limitation"
      LAHCA10    ="Diabetes causes limitation"
      LAHCA11    =
"Lung/breathing problem (e.g., asthma and emphysema) causes limitation"
      LAHCA12    ="Cancer causes limitation"
      LAHCA13    ="Birth defect causes limitation"
      LAHCA14A   =
"Intellectual disability, also known as mental retardation causes limitation"
      LAHCA15    =
"Other developmental problem (e.g., cerebral palsy) causes limitation"
      LAHCA16    ="Senility causes limitation"
      LAHCA17    ="Depression/anxiety/emotional problem causes limitation"
      LAHCA18    ="Weight problem causes limitation"
      LAHCA19_   ="Missing or amputated limb/finger/digit causes limitation"
      LAHCA20_   ="Musculoskeletal/connective tissue problem causes limitation"
      LAHCA21_   ="Circulation problems (including blood clots) cause limitation
"
      LAHCA22_   ="Endocrine/nutritional/metabolic problem causes limitation"
      LAHCA23_   ="Nervous system/sensory organ condition causes limitation"
      LAHCA24_   ="Digestive system problem causes limitation"
      LAHCA25_   ="Genitourinary system problem causes limitation"
      LAHCA26_   ="Skin/subcutaneous system problem causes limitation"
      LAHCA27_   ="Blood or blood-forming organ problem causes limitation"
      LAHCA28_   ="Benign tumor/cyst causes limitation"
      LAHCA29_   ="Alcohol/drug/substance abuse problem causes limitation"
      LAHCA30_   =
"Other mental problem/ADD/bipolar/schizophrenia causes limitation"
      LAHCA31_   ="Surgical after-effects/medical treatment causes limitation"
      LAHCA32_   ='"Old age"/elderly/aging-related problem causes limitation'
      LAHCA33_   ="Fatigue/tiredness/weakness causes limitation"
      LAHCA34_   ="Pregnancy-related problem causes limitation"
      LAHCA90    ="Other impairment/problem (1) causes limitation"
      LAHCA91    ="Other impairment/problem (2) causes limitation"
      LATIME1    ="Duration of vision problem: Number of units"
      LAUNIT1    ="Duration of vision problem: Time unit"
      LADURA1    ="Duration of vision problem (in years)"
      LADURB1    ="Duration of vision problem recode 2"
      LACHRC1    ="Vision problem condition status"
      LATIME2    ="Duration of hearing problem: Number of units"
      LAUNIT2    ="Duration of hearing problem: Time unit"
      LADURA2    ="Duration of hearing problem (in years)"
      LADURB2    ="Duration of hearing problem recode 2"
      LACHRC2    ="Hearing problem condition status"
      LATIME3    ="Duration of arthritis/rheumatism: Number of units"
      LAUNIT3    ="Duration of arthritis/rheumatism: Time unit"
      LADURA3    ="Duration of arthritis/rheumatism (in years)"
      LADURB3    ="Duration of arthritis/rheumatism recode 2"
      LACHRC3    ="Arthritis/rheumatism condition status"
      LATIME4    ="Duration of back or neck problem: Number of units"
      LAUNIT4    ="Duration of back or neck problem: Time unit"
      LADURA4    ="Duration of back or neck problem (in years)"
      LADURB4    ="Duration of back or neck problem recode 2"
      LACHRC4    ="Back or neck problem condition status"
      LATIME5    ="Duration of fracture, bone/joint injury: Number of units"
      LAUNIT5    ="Duration of fracture, bone/joint injury: Time unit"
      LADURA5    ="Duration of fracture, bone/joint injury (in years)"
      LADURB5    ="Duration of fracture, bone/joint injury recode 2"
      LACHRC5    ="Fracture, bone/joint injury condition status"
      LATIME6    ="Duration of other injury: Number of units"
      LAUNIT6    ="Duration of other injury: Time unit"
      LADURA6    ="Duration of other injury (in years)"
      LADURB6    ="Duration of other injury recode 2"
      LACHRC6    ="Other injury condition status"
      LATIME7    ="Duration of heart problem: Number of units"
      LAUNIT7    ="Duration of heart problem: Time unit"
      LADURA7    ="Duration of heart problem (in years)"
      LADURB7    ="Duration of heart problem recode 2"
      LACHRC7    ="Heart problem condition status"
      LATIME8    ="Duration of stroke problem: Number of units"
      LAUNIT8    ="Duration of stroke problem: Time unit"
      LADURA8    ="Duration of stroke problem (in years)"
      LADURB8    ="Duration of stroke problem recode 2"
      LACHRC8    ="Stroke problem condition status"
      LATIME9    =
"Duration of hypertension or high blood pressure: Number of units"
      LAUNIT9    ="Duration of hypertension or high blood pressure: Time unit"
      LADURA9    ="Duration of hypertension or high blood pressure (in years)"
      LADURB9    ="Duration of hypertension or high blood pressure: recode 2"
      LACHRC9    ="Hypertension or high blood pressure condition status"
      LATIME10   ="Duration of diabetes: Number of units"
      LAUNIT10   ="Duration of diabetes: Time unit"
      LADURA10   ="Duration of diabetes (in years)"
      LADURB10   ="Duration of diabetes recode 2"
      LACHRC10   ="Diabetes condition status"
      LATIME11   =
"Duration of lung or breathing problem (e.g., asthma and emphysema): Number of u
nits"
      LAUNIT11   =
"Duration of lung or breathing problem (e.g., asthma and emphysema): Time unit"
      LADURA11   =
"Duration of lung or breathing problem (e.g., asthma and emphysema) (in years)"
      LADURB11   =
"Duration of lung or breathing problem (e.g., asthma and emphysema): recode 2"
      LACHRC11   =
"Lung or breathing problem (e.g., asthma and emphysema): condition status"
      LATIME12   ="Duration of cancer: Number of units"
      LAUNIT12   ="Duration of cancer: Time unit"
      LADURA12   ="Duration of cancer (in years)"
      LADURB12   ="Duration of cancer recode 2"
      LACHRC12   ="Cancer condition status"
      LATIME13   ="Duration of birth defect: Number of units"
      LAUNIT13   ="Duration of birth defect: Time unit"
      LADURA13   ="Duration of birth defect (in years)"
      LADURB13   ="Duration of birth defect recode 2"
      LACHRC13   ="Birth defect condition status"
      LTIME14A   =
"Duration of intellectual disability, also known as mental retardation: Number o
f units"
      LUNIT14A   =
"Duration of intellectual disability, also known as mental retardation: Time uni
t"
      LDURA14A   =
"Duration of intellectual disability, also known as mental retardation (in years
)"
      LDURB14A   =
"Duration of intellectual disability, also known as mental retardation recode 2"
      LCHRC14A   =
"Intellectual disability, also known as mental retardation condition status"
      LATIME15   =
"Duration of other developmental problem (e.g., cerebral palsy): Number of units
"
      LAUNIT15   =
"Duration of other developmental problem (e.g., cerebral palsy): Time unit"
      LADURA15   =
"Duration of other developmental problem (e.g., cerebral palsy) (in years)"
      LADURB15   =
"Duration of other developmental problem (e.g., cerebral palsy) recode 2"
      LACHRC15   =
"Other developmental problem (e.g., cerebral palsy) condition status"
      LATIME16   ="Duration of senility: Number of units"
      LAUNIT16   ="Duration of senility: Time unit"
      LADURA16   ="Duration of senility (in years)"
      LADURB16   ="Duration of senility recode 2"
      LACHRC16   ="Senility condition status"
      LATIME17   =
"Duration of depression, anxiety, or emotional problem: Number of units"
      LAUNIT17   =
"Duration of depression, anxiety, or emotional problem: Time unit"
      LADURA17   =
"Duration of depression, anxiety, or emotional problem (in years)"
      LADURB17   =
"Duration of depression, anxiety, or emotional problem recode 2"
      LACHRC17   ="Depression/anxiety/emotional problem condition status"
      LATIME18   ="Duration of weight problem: Number of units"
      LAUNIT18   ="Duration of weight problem: Time unit"
      LADURA18   ="Duration of weight problem (in years)"
      LADURB18   ="Duration of weight problem recode 2"
      LACHRC18   ="Weight problem condition status"
      LATIME19   =
"Duration of missing limbs (fingers, toes, or digits); amputation: Number of uni
ts"
      LAUNIT19   =
"Duration of missing limbs (fingers, toes, or digits); amputation: Time unit"
      LADURA19   =
"Duration of missing limbs (fingers, toes, or digits); amputation (in years)"
      LADURB19   =
"Duration of missing limbs (fingers, toes, or digits); amputation recode 2"
      LACHRC19   =
"Missing limbs (fingers, toes, or digits); amputation condition status"
      LATIME20   =
"Duration of musculoskeletal/connective tissue problem: Number of units"
      LAUNIT20   =
"Duration of musculoskeletal/connective tissue problem: Time unit"
      LADURA20   =
"Duration of musculoskeletal/connective tissue problem (in years)"
      LADURB20   =
"Duration of musculoskeletal/connective tissue problem recode 2"
      LACHRC20   ="Musculoskeletal/connective tissue problem condition status"
      LATIME21   =
"Duration of circulation problems (including blood clots) : Number of units"
      LAUNIT21   =
"Duration of circulation problems (including blood clots): Time unit"
      LADURA21   =
"Duration of circulation problems (including blood clots) (in years)"
      LADURB21   =
"Duration of circulation problems (including blood clots) recode 2"
      LACHRC21   ="Circulation problems (including blood clots) condition status
"
      LATIME22   =
"Duration of endocrine/nutritional/metabolic problem: Number of units"
      LAUNIT22   =
"Duration of endocrine/nutritional/metabolic problem: Time unit"
      LADURA22   =
"Duration of endocrine/nutritional/metabolic problem (in years)"
      LADURB22   ="Duration of endocrine/nutritional/metabolic problem recode 2"
      LACHRC22   ="Endocrine/nutritional/metabolic problem condition status"
      LATIME23   =
"Duration of nervous system /sensory organ condition: Number of units"
      LAUNIT23   ="Duration of nervous system/sensory organ condition: Time unit
"
      LADURA23   ="Duration of nervous system/sensory organ condition (in years)
"
      LADURB23   ="Duration of nervous system/sensory organ condition recode 2"
      LACHRC23   ="Nervous system/sensory organ condition status"
      LATIME24   ="Duration of digestive system problems: Number of units"
      LAUNIT24   ="Duration of digestive system problems: Number of units"
      LADURA24   ="Duration of digestive system problems (in years)"
      LADURB24   ="Duration of digestive system problems recode 2"
      LACHRC24   ="Digestive system problems condition status"
      LATIME25   ="Duration of genitourinary system problem: Number of units"
      LAUNIT25   ="Duration of genitourinary system problem: Time unit"
      LADURA25   ="Duration of genitourinary system problem (in years)"
      LADURB25   ="Duration of genitourinary system problem recode 2"
      LACHRC25   ="Genitourinary system problem condition status"
      LATIME26   =
"Duration of skin/subcutaneous system problems: Number of units"
      LAUNIT26   ="Duration of skin/subcutaneous system problems: Time unit"
      LADURA26   ="Duration of skin/subcutaneous system problems (in years)"
      LADURB26   ="Duration of skin/subcutaneous system problem recode 2"
      LACHRC26   ="Skin/subcutaneous system problems condition status"
      LATIME27   =
"Duration of blood or blood-forming organ problem: Number of units"
      LAUNIT27   ="Duration of blood or blood-forming organ problem: Time unit"
      LADURA27   ="Duration of blood or blood-forming organ problem (in years)"
      LADURB27   ="Duration of blood or blood-forming organ problem recode 2"
      LACHRC27   ="Blood or blood-forming organ problem condition status"
      LATIME28   ="Duration of benign tumor/cyst: Number of units"
      LAUNIT28   ="Duration of benign tumor/cyst: Time unit"
      LADURA28   ="Duration of benign tumor/cyst (in years)"
      LADURB28   ="Duration of benign tumor/cyst recode 2"
      LACHRC28   ="Benign tumor/cyst condition status"
      LATIME29   =
"Duration of alcohol/drug/substance abuse problem: Number of units"
      LAUNIT29   ="Duration of alcohol/drug/substance abuse problem: Time unit"
      LADURA29   ="Duration of alcohol/drug/substance abuse problem (in years)"
      LADURB29   ="Duration of alcohol/drug/substance abuse problem recode 2"
      LACHRC29   ="Alcohol/drug/substance abuse problem condition status"
      LATIME30   =
"Duration of other mental problem/ADD/Bipolar/Schizophrenia: Number of units"
      LAUNIT30   =
"Duration of other mental problem/ADD/Bipolar/Schizophrenia: Time unit"
      LADURA30   =
"Duration of other mental problem/ADD/Bipolar/Schizophrenia (in years)"
      LADURB30   =
"Duration of other mental problem/ADD/Bipolar/Schizophrenia recode 2"
      LACHRC30   =
"Other mental problem/ADD/Bipolar/Schizophrenia condition status"
      LATIME31   =
"Duration of surgical after-effects/medical treatment problems: Number of units"
      LAUNIT31   =
"Duration of surgical after-effects/medical treatment problems: Time unit"
      LADURA31   =
"Duration of surgical after-effects/medical treatment problems (in years)"
      LADURB31   =
"Duration of surgical after-effects/medical treatment problems recode 2"
      LACHRC31   =
"Surgical after-effects/medical treatment problems condition status"
      LATIME32   =
'Duration of "old age"/elderly/aging-related problems: Number of units'
      LAUNIT32   =
'Duration of "old age"/elderly/aging-related problems: Number of units'
      LADURA32   =
'Duration of "old age"/elderly/aging-related problems (in years)'
      LADURB32   ='Duration of "old age"/elderly/aging-related problems recode 2
'
      LACHRC32   ='"Old age"/elderly/aging-related problems condition status'
      LATIME33   =
"Duration of fatigue/tiredness/weakness problem: Number of units"
      LAUNIT33   ="Duration of fatigue/tiredness/weakness problem: Time unit"
      LADURA33   ="Duration of fatigue/tiredness/weakness problem (in years)"
      LADURB33   ="Duration of fatigue/tiredness/weakness problem recode 2"
      LACHRC33   ="Fatigue/tiredness/weakness problem condition status"
      LATIME34   ="Duration of pregnancy-related problem: Number of units"
      LAUNIT34   ="Duration of pregnancy-related problem: Time unit"
      LADURA34   ="Duration of pregnancy-related problem (in years)"
      LADURB34   ="Duration of pregnancy-related problem recode 2"
      LACHRC34   ="Pregnancy-related condition status"
      LATIME90   =
"Duration of other impairment/problem N.E.C. (1): Number of units"
      LAUNIT90   ="Duration of other impairment/problem N.E.C. (1): Time unit"
      LADURA90   ="Duration of other impairment/problem N.E.C. (1) (in years)"
      LADURB90   ="Duration of other impairment/problem N.E.C. (1) recode 2"
      LACHRC90   ="Other impairment/problem N.E.C. (1) condition status"
      LATIME91   =
"Duration of other impairment/problem N.E.C. (2): Number of units"
      LAUNIT91   ="Duration of other impairment/problem N.E.C. (2): Time unit"
      LADURA91   ="Duration of other impairment/problem N.E.C. (2) (in years)"
      LADURB91   ="Duration of other impairment/problem N.E.C. (2) recode 2"
      LACHRC91   ="Other impairment/problem N.E.C. (2) condition status"
      LCONDRT    =
"Chronic condition recode for person with limitation of activity"
      LACHRONR   ="Limitation of activity recode by chronic condition status"
      PHSTAT     ="Reported health status"

      /* FAU LABELS */

      PDMED12M   ="Has medical care been delayed for - - (cost), 12m"
      PNMED12M   ="Did - - need and NOT get medical care (cost), 12m"
      PHOSPYR2   ="Has - - been in a hospital OVERNIGHT, 12m"
      HOSPNO     ="Number of times in hospital overnight, 12m"
      HPNITE     ="Number of nights in hospital, 12m"
      PHCHM2W    ="Did - - receive HOME care by health professional, 2 wk"
      PHCHMN2W   ="Number of HOME visits by health professional, 2wk"
      PHCPH2WR   ="Did--get advice/test results by phone, 2wk"
      PHCPHN2W   ="Number of PHONE calls to health professional, 2wk"
      PHCDV2W    ="Did - - see health professional in office, etc, 2wk"
      PHCDVN2W   ="Number of times VISITED health professional, 2wk"
      P10DVYR    ="Did - - receive care 10+ times, 12m"

      /* FHI LABELS */

      NOTCOV     ="Cov stat as used in Health United States"
      MEDICARE   ="Medicare coverage recode"
      MCPART     ="Type of Medicare coverage"
      MCCHOICE   ="Enrolled in Medicare Advantage Plan"
      MCHMO      ="Is - - signed up with an HMO"
      MCADVR     ="Medicare Advantage Plan"
      MCPREM     ="Premium for Medicare Advantage/ Medicare HMO"
      MCREF      ="Need a referral for special care"
      MCPARTD    ="Medicare Part D"
      MEDICAID   ="Medicaid coverage recode"
      MACHMD     ="Any doc, chooses from a list, doc assigned"
      MAPCMD     ="Primary care physician for routine care"
      MAREF      ="Need a referral for special care"
      SINGLE     ="Single service plan recode"
      SSTYPEA    ="Accidents"
      SSTYPEB    ="AIDS care"
      SSTYPEC    ="Cancer treatment"
      SSTYPED    ="Catastrophic care"
      SSTYPEE    ="Dental care"
      SSTYPEF    ="Disability insurance"
      SSTYPEG    ="Hospice care"
      SSTYPEH    ="Hospitalization only"
      SSTYPEI    ="Long-term care"
      SSTYPEJ    ="Prescriptions"
      SSTYPEK    ="Vision care"
      SSTYPEL    ="Other"
      PRIVATE    ="Private health insurance recode"
      WHONAM1    ="Plan in whose name (Plan 1)"
      PRPOLH1    ="Relationship to outside policyholder (Plan 1)"
      PRCOOH1    ="Covered persons outside family roster (Plan 1)"
      PRCTOH1    ="Number of persons (Plan 1)"
      PRRLOH11   ="Child, including stepchild (Plan 1)"
      PRRLOH21   ="Spouse (Plan 1)"
      PRRLOH31   ="Former spouse (Plan 1)"
      PRRLOH41   ="Some other relationship (Plan 1)"
      PRCNUM1    ="Number of children covered who live elsewhere (Plan 1)"
      COHU191    ="Number of children age 0-18 (Plan 1)"
      COH19251   ="Number of children age 19-25 (Plan 1)"
      COHO251    ="Number of children age 26+ (Plan 1)"
      PLNWRKR1   ="How plan was originally obtained (Plan 1)"
      PLNPAY11   ="Paid for by self or family (Plan 1)"
      PLNPAY21   ="Paid for by employer or union (Plan 1)"
      PLNPAY31   ="Paid for by someone outside the household (Plan 1)"
      PLNPAY41   ="Paid for by Medicare (Plan 1)"
      PLNPAY51   ="Paid for by Medicaid (Plan 1)"
      PLNPAY61   ="Paid for by CHIP (Plan 1)"
      PLNPAY71   ="Paid for by government program (Plan 1)"
      PLNPRE1    ="Premium based on income (Plan 1)"
      HICOSTR1   ="Out-of-pocket premium cost (Plan 1)"
      EMPPAY1    ="Know how much employer or union pays (Plan 1)"
      ECOSTR1    ="Employer premium cost (Plan 1)"
      EMPCSTP1   ="Percent employer or union pays (Plan 1)"
      PLNMGD1    ="Type of private plan (Plan 1)"
      HDHP1      ="High deductible health plan (Plan 1)"
      HSAHRA1    =
"Health Savings Accounts/Health Reimbursement Accounts (plan 1)"
      MGCHMD1    ="Doctor choice (Plan 1)"
      MGPRMD1    ="Preferred list (Plan 1)"
      MGPYMD1    ="Out of plan use (Plan 1)"
      MGPREF1    ="Private referral (Plan 1)"
      PCPREQ1    ="Primary care doctor required (Plan 1)"
      PRRXCOV1   ="Prescription drug benefit (Plan 1)"
      PRDNCOV1   ="Dental Coverage (Plan 1)"
      WHONAM2    ="Plan in whose name (Plan 2)"
      PRPOLH2    ="Relationship to outside policyholder (Plan 2)"
      PRCOOH2    ="Covered persons outside family roster (Plan 2)"
      PRCTOH2    ="Number of persons (Plan 2)"
      PRRLOH12   ="Child including stepchild (Plan 2)"
      PRRLOH22   ="Spouse (Plan 2)"
      PRRLOH32   ="Former spouse (Plan 2)"
      PRRLOH42   ="Some other relationship (Plan 2)"
      PRCNUM2    ="Number of children covered who live elsewhere (Plan 2)"
      COHU192    ="Number of children age 0-18 (Plan 2)"
      COH19252   ="Number of children age 19-25 (Plan 2)"
      COHO252    ="Number of children age 26+ (Plan 2)"
      PLNWRKR2   ="How plan was originally obtained (Plan 2)"
      PLNPAY12   ="Paid for by self or family (Plan 2)"
      PLNPAY22   ="Paid for by employer or union (Plan 2)"
      PLNPAY32   ="Paid for by someone outside the household (Plan 2)"
      PLNPAY42   ="Paid for by Medicare (Plan 2)"
      PLNPAY52   ="Paid for by Medicaid (Plan 2)"
      PLNPAY62   ="Paid for by CHIP (Plan 2)"
      PLNPAY72   ="Paid for by government program (Plan 2)"
      PLNPRE2    ="Premium based on income (Plan 2)"
      HICOSTR2   ="Out-of-pocket premium cost (Plan 2)"
      EMPPAY2    ="Know how much employer or union pays (Plan 2)"
      ECOSTR2    ="Employer premium cost (Plan 2)"
      EMPCSTP2   ="Percent employer or union pays (Plan 2)"
      PLNMGD2    ="Type of private plan (plan 2)"
      HDHP2      ="High deductible health plan (Plan 2)"
      HSAHRA2    =
"Health Savings Accounts/Health Reimbursement Accounts (plan 2)"
      MGCHMD2    ="Doctor choice (Plan 2)"
      MGPRMD2    ="Preferred list (Plan 2)"
      MGPYMD2    ="Out of plan use (Plan 2)"
      MGPREF2    ="Private referral (Plan 2)"
      PCPREQ2    ="Primary care doctor required (Plan 2)"
      PRRXCOV2   ="Prescription drug benefit (Plan 2)"
      PRDNCOV2   ="Dental Coverage (Plan 2)"
      PRPLPLUS   ="Person has more than two private plans"
      FCOVCONF   ="Obtaining affordable coverage"
      SCHIP      ="SCHIP coverage recode"
      STDOC1     ="Any doc, chooses from a list, doc assigned (SCHIP)"
      STPCMD1    ="Primary care physician for routine care (SCHIP)"
      STREF1     ="Need a referral for special care (SCHIP)"
      OTHPUB     ="State-sponsored health plan recode"
      STDOC2     ="Any doc, chooses from a list, doc assigned (OTHPUB)"
      STPCMD2    ="Primary care physician for routine care (OTHPUB)"
      STREF2     ="Need a referral for special care (OTHPUB)"
      OTHGOV     ="Other government program recode"
      STDOC3     ="Any doc, chooses from a list, doc assigned (OTHGOV)"
      STPCMD3    ="Primary care physician for routine care (OTHGOV)"
      STREF3     ="Need a referral for special care (OTHGOV)"
      MILCARE    ="Military health care coverage recode"
      MILSPC1    ="TRICARE coverage"
      MILSPC2    ="VA coverage"
      MILSPC3    ="CHAMP-VA coverage"
      MILSPC4    ="Other military coverage"
      MILMAN     ="Type of TRICARE coverage"
      IHS        ="Indian Health Service recode"
      HILAST     ="How long since last had health coverage"
      HISTOP1    ="Lost job or changed employers"
      HISTOP2    ="Divorced/sep/death of spouse or parent"
      HISTOP3    ="Ineligible because of age/left school"
      HISTOP4    ="Employer does not offer/not eligible for cov"
      HISTOP5    ="Cost is too high"
      HISTOP6    ="Insurance company refused coverage"
      HISTOP7    ="Medicaid/medi plan stopped after pregnancy"
      HISTOP8    ="Lost Medicaid/new job/increase in income"
      HISTOP9    ="Lost Medicaid (other)"
      HISTOP10   ="Other"
      HISTOP11   ="Never had health insurance"
      HISTOP12   ="Moved from another county/state/country"
      HISTOP13   ="Self-employed"
      HISTOP14   ="No need for it/chooses not to have"
      HISTOP15   ="Got married"
      HINOTYR    ="No health coverage during past 12 months"
      HINOTMYR   ="Months without coverage in past 12 months"
      FHICHNG    ="Change in coverage in past 12 months"
      FHIKDBA    ="Had private health insurance coverage in the past 12 months"
      FHIKDBB    ="Had Medicare coverage in the past 12 months"
      FHIKDBC    ="Had Medi-Gap coverage in the past 12 months"
      FHIKDBD    ="Had Medicaid coverage in the past 12 months"
      FHIKDBE    ="Had SCHIP coverage in the past 12 months"
      FHIKDBF    ="Had Military health care coverage in the past 12 months"
      FHIKDBG    ="Had Indian Health Service coverage in the past 12 months"
      FHIKDBH    =
"Had State-sponsored health plan coverage in the past 12 months"
      FHIKDBI    ="Had Other government program coverage in the past 12 months"
      FHIKDBJ    ="Had Single service plan coverage in the past 12 months"
      FHIKDBK    ="Had no coverage in the past 12 months"
      PWRKBR1    =
"Which one of these categories best describes how [fill 1: your/ALIAS's] private
 health insurance was obtained?"
      HCSPFYR    ="Amount family spent for medical care"
      MEDBILL    ="Problems paying medical bills"
      MEDBPAY    ="Medical bills being paid off over time"
      MEDBNOP    ="Unable to pay medical bills"
      FSA        ="Flexible Spending Accounts"
      HIKINDNA   ="Private health insurance"
      HIKINDNB   ="Medicare"
      HIKINDNC   ="Medi-Gap"
      HIKINDND   ="Medicaid"
      HIKINDNE   ="SCHIP"
      HIKINDNF   ="Military health care"
      HIKINDNG   ="Indian Health Service"
      HIKINDNH   ="State-sponsored health plan"
      HIKINDNI   ="Other government plan"
      HIKINDNJ   ="Single service plan"
      HIKINDNK   ="No coverage of any type"
      MCAREPRB   ="Medicare coverage probe"
      MCAIDPRB   ="Medicaid coverage probe"
      SINCOV     ="Single service plan probe"

      /* FSD LABELS */

      PLBORN     ="Born in the United States"
      REGIONBR   ="Geographic region of birth recode"
      GEOBRTH    ="Geographic place of birth recode"
      YRSINUS    ="Years that - - has been in the U.S."
      CITIZENP   ="U.S. citizenship status"
      HEADST     ="Now attending Head Start"
      HEADSTV1   ="Ever attended Head Start"
      EDUC1      ="Highest level of school completed"
      ARMFVER    ="Currently on full-time active duty with the Armed Forces"
      ARMFEV     =
"Has - - ever served in U.S. Armed Forces, Reserves, or National Guard?"
      ARMFFC     =
"Was - - active duty personnel who served on a humanitarian or peacekeeping miss
ion?"
      ARMFTMR1   =
"Was - - active duty in the U.S. Armed Forces in September, 2001 or later?"
      ARMFTM2P   =
"Was - - active duty in the U.S. Armed Forces in August, 1990 to August, 2001 (i
ncluding Persian Gulf War)?"
      ARMFTMR3   =
"Was - - active duty in the U.S. Armed Forces in May, 1975 to July, 1990?"
      ARMFTMR4   =
"Was - - active duty in the U.S. Armed Forces in August, 1964 to April 1975 (Vie
tnam War)?"
      ARMFTMR5   =
"Was - - active duty in the U.S. Armed Forces in February, 1955 to July, 1964?"
      ARMFTM6P   =
"Was - - active duty in the U.S. Armed Forces in July, 1950 to January, 1955 (Ko
rean War)?"
      ARMFTM7P   =
"Was -- active duty in the U.S. Armed Forces in June, 1950 or earlier?"
      ARMFDS2P   =
"Was - - active duty in the Persian Gulf during Desert Shield and/or Desert Stor
m between Aug., 1990 to Apr., 1991?"
      DOINGLWP   ="What was - - doing last week"
      WHYNOWKP   ="Main reason for not working last week"
      WRKHRS2    ="Hours worked last week"
      WRKFTALL   ="Usually work full time"
      WRKLYR1    ="Work for pay last year"
      WRKMYR     ="Months worked last year"
      ERNYR_P    ="Total earnings last year"
      HIEMPOF    ="Health insurance offered at workplace"

      /* FIN LABELS */

      FINCINT    ="Introduction to the family income section"
      PSAL       ="Received income from wages or salary (last CY)"
      PSEINC     ="Received income from self-employment (last CY)"
      PSSRR      =
"Received income from Social Security or Railroad Retirement (last CY)"
      PSSRRDB    =
"Received Social Security or Railroad Retirement income as a disability benefit"
      PSSRRD     ="Received benefit due to disability"
      PPENS      =
"Received income from any disability pension other than Social Security or Railr
oad Retirement"
      POPENS     ="Received income from any other pension"
      PSSI       ="Received income from SSI"
      PSSID      ="Received SSI due to disability"
      PTANF      =
"Received income from a state or county welfare program (e.g., TANF)"
      POWBEN     ="Received other government assistance"
      PINTRSTR   ="Received interest income"
      PDIVD      ="Received dividends from stocks, funds, etc."
      PCHLDSP    ="Received income from child support"
      PINCOT     ="Received income from any other source"
      PSSAPL     ="Ever applied for Supplemental Security Income (SSI)"
      PSDAPL     ="Ever applied for Social Security Disability Insurance (SSDI)"
      TANFMYR    ="Months received welfare/TANF (last CY)"
      ELIGPWIC   ="Anyone age-eligible for the WIC program?"
      PWIC       ="Received WIC benefits"
      WIC_FLAG   ="WIC recipient age-eligible"

      /* FLG LABELS */

      ENGLANG    ="How well English is spoken"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
   *    (PUT ASTERISK (*) BEFORE WORD "FORMAT"
        IN NEXT STATEMENT TO PREVENT FORMAT
        ASSOCIATIONS BEING STORED WITH DATA SET);
   FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE   PEP001X.   SRVY_YR   PEP002X.   HHX       $GROUPC.
      INTV_QRT  PEP004X.   INTV_MON  PEP005X.   WTIA      GROUPN.
      WTFA      GROUPN.

      /* UCF FORMAT ASSOCIATIONS */

      REGION    PEP010X.

      /* HHC FORMAT ASSOCIATIONS */

      SEX       PEP013X.   ORIGIN_I  PEP014X.   ORIGIMPT  PEP015X.
      HISPAN_I  PEP016X.   HISPIMPT  PEP017X.   RACERPI2  PEP018X.
      RACEIMP2  PEP019X.   MRACRPI2  PEP020X.   MRACBPI2  PEP021X.
      RACRECI3  PEP022X.   HISCODI3  PEP023X.   ERIMPFLG  PEP024X.
      NOWAF     PEP025X.   RRP       PEP026X.   HHREFLG   $PEP027X.
      FRRP      PEP028X.   DOB_M     $PEP029X.  DOB_Y_P   $PEP030X.
      AGE_P     PEP031X.   AGE_CHG   PEP032X.

      /* FID FORMAT ASSOCIATIONS */

      FMRPFLG   $PEP033X.  FMREFLG   $PEP034X.  R_MARITL  PEP035X.
      FSPOUS2   $PEP036X.  COHAB1    PEP037X.   COHAB2    PEP038X.
      CDCMSTAT  PEP040X.   SIB_DEGP  PEP041X.   FMOTHER1  $PEP042X.
      MOM_DEGP  PEP043X.   FFATHER1  $PEP044X.  DAD_DEGP  PEP043X.
      PARENTS   PEP046X.   MOM_ED    PEP047X.   DAD_ED    PEP047X.
      ASTATFLG  PEP049X.   CSTATFLG  PEP050X.   QCADULT   PEP051X.
      QCCHILD   PEP052X.

      /* FDB FORMAT ASSOCIATIONS */

      FDRN_FLG  PEP053X.

      /* FHS FORMAT ASSOCIATIONS */

      PLAPLYLM  PEP037X.   PLAPLYUN  PEP037X.   PSPEDEIS  PEP037X.
      PSPEDEM   PEP037X.   PLAADL    PEP037X.   LABATH    PEP037X.
      LADRESS   PEP037X.   LAEAT     PEP037X.   LABED     PEP037X.
      LATOILT   PEP037X.   LAHOME    PEP037X.   PLAIADL   PEP037X.
      PLAWKNOW  PEP037X.   PLAWKLIM  PEP067X.   PLAWALK   PEP037X.
      PLAREMEM  PEP037X.   PLIMANY   PEP070X.   LA1AR     PEP071X.
      LAHCC1    PEP072X.   LAHCC2    PEP072X.   LAHCC3    PEP072X.
      LAHCC4    PEP072X.   LAHCC5    PEP072X.   LAHCC6    PEP072X.
      LAHCC7A   PEP072X.   LAHCC8    PEP072X.   LAHCC9    PEP072X.
      LAHCC10   PEP072X.   LAHCC11   PEP072X.   LAHCC12   PEP072X.
      LAHCC13   PEP072X.   LAHCC90   PEP072X.   LAHCC91   PEP072X.
      LCTIME1   PEP087X.   LCUNIT1   PEP088X.   LCDURA1   PEP089X.
      LCDURB1   PEP090X.   LCCHRC1   PEP091X.   LCTIME2   PEP087X.
      LCUNIT2   PEP088X.   LCDURA2   PEP089X.   LCDURB2   PEP090X.
      LCCHRC2   PEP091X.   LCTIME3   PEP087X.   LCUNIT3   PEP088X.
      LCDURA3   PEP089X.   LCDURB3   PEP090X.   LCCHRC3   PEP091X.
      LCTIME4   PEP087X.   LCUNIT4   PEP088X.   LCDURA4   PEP089X.
      LCDURB4   PEP090X.   LCCHRC4   PEP091X.   LCTIME5   PEP087X.
      LCUNIT5   PEP088X.   LCDURA5   PEP089X.   LCDURB5   PEP090X.
      LCCHRC5   PEP091X.   LCTIME6   PEP087X.   LCUNIT6   PEP088X.
      LCDURA6   PEP089X.   LCDURB6   PEP090X.   LCCHRC6   PEP091X.
      LCTIME7A  PEP087X.   LCUNIT7A  PEP088X.   LCDURA7A  PEP089X.
      LCDURB7A  PEP090X.   LCCHRC7A  PEP091X.   LCTIME8   PEP087X.
      LCUNIT8   PEP088X.   LCDURA8   PEP089X.   LCDURB8   PEP090X.
      LCCHRC8   PEP091X.   LCTIME9   PEP087X.   LCUNIT9   PEP088X.
      LCDURA9   PEP089X.   LCDURB9   PEP090X.   LCCHRC9   PEP091X.
      LCTIME10  PEP087X.   LCUNIT10  PEP088X.   LCDURA10  PEP089X.
      LCDURB10  PEP090X.   LCCHRC10  PEP091X.   LCTIME11  PEP087X.
      LCUNIT11  PEP088X.   LCDURA11  PEP089X.   LCDURB11  PEP090X.
      LCCHRC11  PEP091X.   LCTIME12  PEP087X.   LCUNIT12  PEP088X.
      LCDURA12  PEP089X.   LCDURB12  PEP090X.   LCCHRC12  PEP091X.
      LCTIME13  PEP087X.   LCUNIT13  PEP088X.   LCDURA13  PEP089X.
      LCDURB13  PEP090X.   LCCHRC13  PEP091X.   LCTIME90  PEP087X.
      LCUNIT90  PEP088X.   LCDURA90  PEP089X.   LCDURB90  PEP090X.
      LCCHRC90  PEP091X.   LCTIME91  PEP087X.   LCUNIT91  PEP088X.
      LCDURA91  PEP089X.   LCDURB91  PEP090X.   LCCHRC91  PEP091X.
      LAHCA1    PEP072X.   LAHCA2    PEP072X.   LAHCA3    PEP072X.
      LAHCA4    PEP072X.   LAHCA5    PEP072X.   LAHCA6    PEP072X.
      LAHCA7    PEP072X.   LAHCA8    PEP072X.   LAHCA9    PEP072X.
      LAHCA10   PEP072X.   LAHCA11   PEP072X.   LAHCA12   PEP072X.
      LAHCA13   PEP072X.   LAHCA14A  PEP072X.   LAHCA15   PEP072X.
      LAHCA16   PEP072X.   LAHCA17   PEP072X.   LAHCA18   PEP072X.
      LAHCA19_  PEP072X.   LAHCA20_  PEP072X.   LAHCA21_  PEP072X.
      LAHCA22_  PEP072X.   LAHCA23_  PEP072X.   LAHCA24_  PEP072X.
      LAHCA25_  PEP072X.   LAHCA26_  PEP072X.   LAHCA27_  PEP072X.
      LAHCA28_  PEP072X.   LAHCA29_  PEP072X.   LAHCA30_  PEP072X.
      LAHCA31_  PEP072X.   LAHCA32_  PEP072X.   LAHCA33_  PEP072X.
      LAHCA34_  PEP072X.   LAHCA90   PEP072X.   LAHCA91   PEP072X.
      LATIME1   PEP087X.   LAUNIT1   PEP088X.   LADURA1   PEP200X.
      LADURB1   PEP201X.   LACHRC1   PEP091X.   LATIME2   PEP087X.
      LAUNIT2   PEP088X.   LADURA2   PEP200X.   LADURB2   PEP201X.
      LACHRC2   PEP091X.   LATIME3   PEP087X.   LAUNIT3   PEP088X.
      LADURA3   PEP200X.   LADURB3   PEP201X.   LACHRC3   PEP091X.
      LATIME4   PEP087X.   LAUNIT4   PEP088X.   LADURA4   PEP200X.
      LADURB4   PEP201X.   LACHRC4   PEP091X.   LATIME5   PEP087X.
      LAUNIT5   PEP088X.   LADURA5   PEP200X.   LADURB5   PEP201X.
      LACHRC5   PEP091X.   LATIME6   PEP087X.   LAUNIT6   PEP088X.
      LADURA6   PEP200X.   LADURB6   PEP201X.   LACHRC6   PEP091X.
      LATIME7   PEP087X.   LAUNIT7   PEP088X.   LADURA7   PEP200X.
      LADURB7   PEP201X.   LACHRC7   PEP091X.   LATIME8   PEP087X.
      LAUNIT8   PEP088X.   LADURA8   PEP200X.   LADURB8   PEP201X.
      LACHRC8   PEP091X.   LATIME9   PEP087X.   LAUNIT9   PEP088X.
      LADURA9   PEP200X.   LADURB9   PEP201X.   LACHRC9   PEP091X.
      LATIME10  PEP087X.   LAUNIT10  PEP088X.   LADURA10  PEP200X.
      LADURB10  PEP201X.   LACHRC10  PEP091X.   LATIME11  PEP087X.
      LAUNIT11  PEP088X.   LADURA11  PEP200X.   LADURB11  PEP201X.
      LACHRC11  PEP091X.   LATIME12  PEP087X.   LAUNIT12  PEP088X.
      LADURA12  PEP200X.   LADURB12  PEP201X.   LACHRC12  PEP091X.
      LATIME13  PEP087X.   LAUNIT13  PEP088X.   LADURA13  PEP200X.
      LADURB13  PEP201X.   LACHRC13  PEP091X.   LTIME14A  PEP087X.
      LUNIT14A  PEP088X.   LDURA14A  PEP200X.   LDURB14A  PEP201X.
      LCHRC14A  PEP091X.   LATIME15  PEP087X.   LAUNIT15  PEP088X.
      LADURA15  PEP200X.   LADURB15  PEP201X.   LACHRC15  PEP091X.
      LATIME16  PEP087X.   LAUNIT16  PEP088X.   LADURA16  PEP200X.
      LADURB16  PEP201X.   LACHRC16  PEP091X.   LATIME17  PEP087X.
      LAUNIT17  PEP088X.   LADURA17  PEP200X.   LADURB17  PEP201X.
      LACHRC17  PEP091X.   LATIME18  PEP087X.   LAUNIT18  PEP088X.
      LADURA18  PEP200X.   LADURB18  PEP201X.   LACHRC18  PEP091X.
      LATIME19  PEP087X.   LAUNIT19  PEP088X.   LADURA19  PEP200X.
      LADURB19  PEP201X.   LACHRC19  PEP091X.   LATIME20  PEP087X.
      LAUNIT20  PEP088X.   LADURA20  PEP200X.   LADURB20  PEP201X.
      LACHRC20  PEP091X.   LATIME21  PEP087X.   LAUNIT21  PEP088X.
      LADURA21  PEP200X.   LADURB21  PEP201X.   LACHRC21  PEP091X.
      LATIME22  PEP087X.   LAUNIT22  PEP088X.   LADURA22  PEP200X.
      LADURB22  PEP201X.   LACHRC22  PEP091X.   LATIME23  PEP087X.
      LAUNIT23  PEP088X.   LADURA23  PEP200X.   LADURB23  PEP201X.
      LACHRC23  PEP091X.   LATIME24  PEP087X.   LAUNIT24  PEP088X.
      LADURA24  PEP200X.   LADURB24  PEP201X.   LACHRC24  PEP091X.
      LATIME25  PEP087X.   LAUNIT25  PEP088X.   LADURA25  PEP200X.
      LADURB25  PEP201X.   LACHRC25  PEP091X.   LATIME26  PEP087X.
      LAUNIT26  PEP088X.   LADURA26  PEP200X.   LADURB26  PEP201X.
      LACHRC26  PEP091X.   LATIME27  PEP087X.   LAUNIT27  PEP088X.
      LADURA27  PEP200X.   LADURB27  PEP201X.   LACHRC27  PEP091X.
      LATIME28  PEP087X.   LAUNIT28  PEP088X.   LADURA28  PEP200X.
      LADURB28  PEP201X.   LACHRC28  PEP091X.   LATIME29  PEP087X.
      LAUNIT29  PEP088X.   LADURA29  PEP200X.   LADURB29  PEP201X.
      LACHRC29  PEP091X.   LATIME30  PEP087X.   LAUNIT30  PEP088X.
      LADURA30  PEP200X.   LADURB30  PEP201X.   LACHRC30  PEP091X.
      LATIME31  PEP087X.   LAUNIT31  PEP088X.   LADURA31  PEP200X.
      LADURB31  PEP201X.   LACHRC31  PEP091X.   LATIME32  PEP087X.
      LAUNIT32  PEP088X.   LADURA32  PEP200X.   LADURB32  PEP201X.
      LACHRC32  PEP091X.   LATIME33  PEP087X.   LAUNIT33  PEP088X.
      LADURA33  PEP200X.   LADURB33  PEP201X.   LACHRC33  PEP091X.
      LATIME34  PEP087X.   LAUNIT34  PEP088X.   LADURA34  PEP200X.
      LADURB34  PEP201X.   LACHRC34  PEP091X.   LATIME90  PEP087X.
      LAUNIT90  PEP088X.   LADURA90  PEP200X.   LADURB90  PEP201X.
      LACHRC90  PEP091X.   LATIME91  PEP087X.   LAUNIT91  PEP088X.
      LADURA91  PEP200X.   LADURB91  PEP201X.   LACHRC91  PEP091X.
      LCONDRT   PEP378X.   LACHRONR  PEP379X.   PHSTAT    PEP380X.

      /* FAU FORMAT ASSOCIATIONS */

      PDMED12M  PEP037X.   PNMED12M  PEP037X.   PHOSPYR2  PEP037X.
      HOSPNO    PEP384X.   HPNITE    PEP384X.   PHCHM2W   PEP037X.
      PHCHMN2W  PEP387X.   PHCPH2WR  PEP037X.   PHCPHN2W  PEP387X.
      PHCDV2W   PEP037X.   PHCDVN2W  PEP387X.   P10DVYR   PEP037X.

      /* FHI FORMAT ASSOCIATIONS */

      NOTCOV    PEP393X.   MEDICARE  PEP394X.   MCPART    PEP395X.
      MCCHOICE  PEP037X.   MCHMO     PEP037X.   MCADVR    PEP398X.
      MCPREM    PEP037X.   MCREF     PEP037X.   MCPARTD   PEP037X.
      MEDICAID  PEP394X.   MACHMD    PEP403X.   MAPCMD    PEP037X.
      MAREF     PEP037X.   SINGLE    PEP406X.   SSTYPEA   PEP072X.
      SSTYPEB   PEP072X.   SSTYPEC   PEP072X.   SSTYPED   PEP072X.
      SSTYPEE   PEP072X.   SSTYPEF   PEP072X.   SSTYPEG   PEP072X.
      SSTYPEH   PEP072X.   SSTYPEI   PEP072X.   SSTYPEJ   PEP072X.
      SSTYPEK   PEP072X.   SSTYPEL   PEP072X.   PRIVATE   PEP394X.
      WHONAM1   PEP420X.   PRPOLH1   PEP421X.   PRCOOH1   PEP037X.
      PRCTOH1   PEP387X.   PRRLOH11  PEP072X.   PRRLOH21  PEP072X.
      PRRLOH31  PEP072X.   PRRLOH41  PEP072X.   PRCNUM1   PEP428X.
      COHU191   PEP387X.   COH19251  PEP387X.   COHO251   PEP387X.
      PLNWRKR1  PEP432X.   PLNPAY11  PEP072X.   PLNPAY21  PEP072X.
      PLNPAY31  PEP072X.   PLNPAY41  PEP072X.   PLNPAY51  PEP072X.
      PLNPAY61  PEP072X.   PLNPAY71  PEP072X.   PLNPRE1   PEP037X.
      HICOSTR1  PEP441X.   EMPPAY1   PEP442X.   ECOSTR1   PEP443X.
      EMPCSTP1  PEP444X.   PLNMGD1   PEP445X.   HDHP1     PEP446X.
      HSAHRA1   PEP037X.   MGCHMD1   PEP448X.   MGPRMD1   PEP037X.
      MGPYMD1   PEP037X.   MGPREF1   PEP037X.   PCPREQ1   PEP037X.
      PRRXCOV1  PEP037X.   PRDNCOV1  PEP037X.   WHONAM2   PEP420X.
      PRPOLH2   PEP421X.   PRCOOH2   PEP037X.   PRCTOH2   PEP387X.
      PRRLOH12  PEP072X.   PRRLOH22  PEP072X.   PRRLOH32  PEP072X.
      PRRLOH42  PEP072X.   PRCNUM2   PEP428X.   COHU192   PEP387X.
      COH19252  PEP387X.   COHO252   PEP387X.   PLNWRKR2  PEP432X.
      PLNPAY12  PEP072X.   PLNPAY22  PEP072X.   PLNPAY32  PEP072X.
      PLNPAY42  PEP072X.   PLNPAY52  PEP072X.   PLNPAY62  PEP072X.
      PLNPAY72  PEP072X.   PLNPRE2   PEP037X.   HICOSTR2  PEP441X.
      EMPPAY2   PEP442X.   ECOSTR2   PEP443X.   EMPCSTP2  PEP444X.
      PLNMGD2   PEP445X.   HDHP2     PEP481X.   HSAHRA2   PEP037X.
      MGCHMD2   PEP448X.   MGPRMD2   PEP037X.   MGPYMD2   PEP037X.
      MGPREF2   PEP037X.   PCPREQ2   PEP037X.   PRRXCOV2  PEP037X.
      PRDNCOV2  PEP037X.   PRPLPLUS  PEP037X.   FCOVCONF  PEP491X.
      SCHIP     PEP394X.   STDOC1    PEP403X.   STPCMD1   PEP037X.
      STREF1    PEP037X.   OTHPUB    PEP394X.   STDOC2    PEP403X.
      STPCMD2   PEP037X.   STREF2    PEP037X.   OTHGOV    PEP394X.
      STDOC3    PEP403X.   STPCMD3   PEP037X.   STREF3    PEP037X.
      MILCARE   PEP394X.   MILSPC1   PEP072X.   MILSPC2   PEP072X.
      MILSPC3   PEP072X.   MILSPC4   PEP072X.   MILMAN    PEP509X.
      IHS       PEP037X.   HILAST    PEP511X.   HISTOP1   PEP072X.
      HISTOP2   PEP072X.   HISTOP3   PEP072X.   HISTOP4   PEP072X.
      HISTOP5   PEP072X.   HISTOP6   PEP072X.   HISTOP7   PEP072X.
      HISTOP8   PEP072X.   HISTOP9   PEP072X.   HISTOP10  PEP072X.
      HISTOP11  PEP072X.   HISTOP12  PEP072X.   HISTOP13  PEP072X.
      HISTOP14  PEP072X.   HISTOP15  PEP072X.   HINOTYR   PEP037X.
      HINOTMYR  PEP387X.   FHICHNG   PEP037X.   FHIKDBA   PEP072X.
      FHIKDBB   PEP072X.   FHIKDBC   PEP072X.   FHIKDBD   PEP072X.
      FHIKDBE   PEP072X.   FHIKDBF   PEP072X.   FHIKDBG   PEP072X.
      FHIKDBH   PEP072X.   FHIKDBI   PEP072X.   FHIKDBJ   PEP072X.
      FHIKDBK   PEP072X.   PWRKBR1   PEP432X.   HCSPFYR   PEP542X.
      MEDBILL   PEP037X.   MEDBPAY   PEP037X.   MEDBNOP   PEP037X.
      FSA       PEP037X.   HIKINDNA  PEP072X.   HIKINDNB  PEP072X.
      HIKINDNC  PEP072X.   HIKINDND  PEP072X.   HIKINDNE  PEP072X.
      HIKINDNF  PEP072X.   HIKINDNG  PEP072X.   HIKINDNH  PEP072X.
      HIKINDNI  PEP072X.   HIKINDNJ  PEP072X.   HIKINDNK  PEP072X.
      MCAREPRB  PEP037X.   MCAIDPRB  PEP037X.   SINCOV    PEP037X.

      /* FSD FORMAT ASSOCIATIONS */

      PLBORN    PEP037X.   REGIONBR  PEP562X.   GEOBRTH   PEP563X.
      YRSINUS   PEP564X.   CITIZENP  PEP565X.   HEADST    PEP037X.
      HEADSTV1  PEP037X.   EDUC1     PEP568X.   ARMFVER   PEP037X.
      ARMFEV    PEP037X.   ARMFFC    PEP037X.   ARMFTMR1  PEP072X.
      ARMFTM2P  PEP072X.   ARMFTMR3  PEP072X.   ARMFTMR4  PEP072X.
      ARMFTMR5  PEP072X.   ARMFTM6P  PEP072X.   ARMFTM7P  PEP072X.
      ARMFDS2P  PEP037X.   DOINGLWP  PEP580X.   WHYNOWKP  PEP581X.
      WRKHRS2   PEP582X.   WRKFTALL  PEP037X.   WRKLYR1   PEP037X.
      WRKMYR    PEP585X.   ERNYR_P   PEP586X.   HIEMPOF   PEP037X.

      /* FIN FORMAT ASSOCIATIONS */

      FINCINT   PEP588X.   PSAL      PEP037X.   PSEINC    PEP037X.
      PSSRR     PEP037X.   PSSRRDB   PEP037X.   PSSRRD    PEP037X.
      PPENS     PEP037X.   POPENS    PEP037X.   PSSI      PEP037X.
      PSSID     PEP037X.   PTANF     PEP037X.   POWBEN    PEP037X.
      PINTRSTR  PEP037X.   PDIVD     PEP037X.   PCHLDSP   PEP037X.
      PINCOT    PEP037X.   PSSAPL    PEP037X.   PSDAPL    PEP037X.
      TANFMYR   PEP387X.   ELIGPWIC  PEP607X.   PWIC      PEP037X.
      WIC_FLAG  PEP609X.

      /* FLG FORMAT ASSOCIATIONS */

      ENGLANG   PEP610X.;
RUN;

PROC CONTENTS DATA=NHIS.PERSONSX;
   TITLE1 'CONTENTS OF THE 2013 NHIS Person FILE';

PROC FREQ DATA=NHIS.PERSONSX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2013 NHIS Person FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA;

PROC FREQ DATA=NHIS.PERSONSX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2013 NHIS Person FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
