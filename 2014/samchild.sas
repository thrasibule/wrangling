*********************************************************************
 JUNE 8, 2015  2:38 PM
 
 This is an example of a SAS program that creates a SAS
 file from the 2014 NHIS Public Use SAMCHILD.DAT ASCII file
 
 This is stored in SAMCHILD.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2014";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2014";

FILENAME ASCIIDAT 'C:\NHIS2014\SAMCHILD.dat';

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
   VALUE SCP001X
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
   VALUE SCP002X
      .                   = '.'
      OTHER              = "Survey Year"
   ;
   VALUE SCP004X
      1                  = "1 Quarter 1"
      2                  = "2 Quarter 2"
      3                  = "3 Quarter 3"
      4                  = "4 Quarter 4"
   ;
   VALUE SCP005X
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
   VALUE SCP010X
      1                  = "1 Northeast"
      2                  = "2 Midwest"
      3                  = "3 South"
      4                  = "4 West"
   ;
   VALUE SCP013X
      1                  = "1 Male"
      2                  = "2 Female"
   ;
   VALUE SCP014X
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
   VALUE SCP015X
      01                 = "01 White only"
      02                 = "02 Black/African American only"
      03                 = "03 AIAN only"
      04                 = "04 Asian only"
      05                 = "05 Race group not releasable (See file layout)"
      06                 = "06 Multiple race"
   ;
   VALUE SCP016X
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
   VALUE SCP017X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American) (includes Eskimo, Aleut)"
      06                 = "06 Chinese"
      07                 = "07 Filipino"
      12                 = "12 Asian Indian"
      16                 = "16 Other race (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE SCP018X
      00                 = "00 Under 1 year"
      85                 = "85 85+ years"
   ;
   VALUE $SCP019X
      "96"               = "96 No person available"
      "98"               = "98 Not ascertained"
   ;
   VALUE SCP020X
      1                  = "1 Parent (Biological, adoptive, or step)"
      2                  = "2 Grandparent"
      3                  = "3 Aunt/Uncle"
      4                  = "4 Brother"
      5                  = "5 Other relative or other non-relative"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP021X
      1                  = 
"1 Started Sample Child Core 2+ weeks after the initial interview"
      2                  = 
"2 Started Sample Child Core less than 2 weeks after the initial interview"
   ;
   VALUE SCP022X
      1                  = 
"1 Families selected to receive AFD (sample adults) section"
      2                  = 
"2 Families selected to receive FDB (all persons 1 year and older) section"
   ;
   VALUE SCP023X
      018                = "018 18 ounces or less"
      193                = "193 193+ ounces"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SCP024X
      0500               = "0500 500 grams or less"
      5485               = "5485 5485+ grams"
      9997               = "9997 Refused"
      9998               = "9998 Not ascertained"
      9999               = "9999 Don't know"
   ;
   VALUE SCP025X
      96                 = "96 Not available"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Unknown"
   ;
   VALUE SCP026X
      996                = "996 Not available"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Unknown"
   ;
   VALUE SCP027X
      9995               = "9995 99.95+"
      9999               = "9999 Unknown"
   ;
   VALUE SCP028X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP034X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP043X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      9                  = "9 Don't know"
   ;
   VALUE SCP067X
      1                  = "1 Better"
      2                  = "2 Worse"
      3                  = "3 About the same"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP068X
      000                = "000 None"
      996                = "996 Did not go to school"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SCP071X
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
   VALUE SCP081X
      1                  = "1 Always"
      2                  = "2 Usually"
      3                  = "3 About half the time"
      4                  = "4 Seldom"
      5                  = "5 Never"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP084X
      01                 = "01 At birth"
      02                 = "02 0 to 2 years of age"
      03                 = "03 3 to 5 years of age"
      04                 = "04 6 to 8 years of age"
      05                 = "05 9 to 11 years of age"
      06                 = "06 12 to 14 years of age"
      07                 = "07 15 to 17 years of age"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SCP085X
      01                 = 
"01 Mother had infection while pregnant, e.g., cytomegalovirus (CMV), rubella"
      02                 = "02 Genetic reason(s)"
      03                 = 
"03 Born very early, preterm birth or low birth weight"
      04                 = 
"04 Child had infectious disease after birth (measles, meningitis, mumps, etc.)"
      05                 = 
"05 Ear infections (fluid in middle ear, otitis, glue ear, etc.)"
      06                 = "06 Ear injury or head/neck trauma"
      07                 = "07 Ear disease or surgery"
      08                 = 
"08 Medications/drugs, such as gentamicin (aminoglycosides), cisplatin (cancer d
rugs), 	antibiotics, anti-inflammatory drugs, diuretics"
      09                 = 
"09 Loud, brief noise from firecrackers, nearby fireworks, gunfire, blasts, or e
xplosions"
      10                 = 
"10 Sudden hearing loss, unexplained by loud, brief noise or other known causes"
      11                 = 
"11 Long term noise exposure from machinery, aircraft, power tools, loud music, 
loud toys, appliances, personal stereos or MP3 players, hair dryers, etc"
      12                 = "12 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SCP086X
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
   VALUE SCP089X
      00                 = "00 Never"
      01                 = "01 Less than 6 months old"
      02                 = "02 6 to 11 months of age"
      03                 = "03 12 to 17 months of age"
      04                 = "04 18 to 23 months of age"
      05                 = "05 2 to 3 years of age"
      06                 = "06 4 to 5 years of age"
      07                 = "07 6 to 8 years of age"
      08                 = "08 9 years or older"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SCP091X
      01                 = "01 Less than 6 months old"
      02                 = "02 6 to 11 months of age"
      03                 = "03 12 to 17 months of age"
      04                 = "04 18 to 23 months of age"
      05                 = "05 2 to 3 years of age"
      06                 = "06 4 to 5 years of age"
      07                 = "07 6 to 8 years of age"
      08                 = "08 9 years or older"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SCP092X
      1                  = "1 Yes"
      2                  = "2 No"
      3                  = "3 Home schooled"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP094X
      1                  = "1 Less than 1 year ago"
      2                  = "2 1 to 2 years ago"
      3                  = "3 to 4 years ago"
      4                  = "4 5 to 9 years ago"
      5                  = "5 10 or more years ago"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP097X
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
   VALUE SCP098X
      0                  = "0 None"
      1                  = "1 Less than 1 hour a day"
      2                  = "2 1 to 3 hours a day"
      3                  = "3 4 to 7 hours a day"
      4                  = "4 8 or more hours per day"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP130X
      1                  = "1 to less than 100 events"
      2                  = "2 100 to less than 1000 events"
      3                  = "3 1000 to less than 10,000 events"
      4                  = "4 10,000 to less than 50,000 events"
      5                  = "5 50,000 events or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP133X
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
   VALUE SCP161X
      99                 = "99 Unknown"
   ;
   VALUE SCP162X
      0                  = "0 Not true"
      1                  = "1 Sometimes true"
      2                  = "2 Often true"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP165X
      1                  = "1 Yes"
      2                  = "2 There is NO place"
      3                  = "3 There is MORE THAN ONE place"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP166X
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
   VALUE SCP168X
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
   VALUE SCP171X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SCP181X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SCP198X
      0                  = "0 Never"
      1                  = "1 6 months or less"
      2                  = "2 More than 6 months, but not more than 1 year ago"
      3                  = "3 More than 1 year, but not more than 2 years ago"
      4                  = "4 More than 2 years, but not more than 5 years ago"
      5                  = "5 More than 5 years ago"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP215X
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
   VALUE SCP227X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SCP228X
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
   VALUE SCP231X
      95                 = "95 95+ times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SCP233X
      0                  = "0 Not true"
      1                  = "1 Somewhat true"
      2                  = "2 Certainly true"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP238X
      0                  = "0 No"
      1                  = "1 Yes, minor difficulties"
      2                  = "2 Yes, definite difficulties"
      3                  = "3 Yes, severe difficulties"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP240X
      1                  = "1 1 vaccination or dose"
      2                  = "2 2 or more vaccination doses"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP241X
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
   VALUE SCP242X
      .                   = '.'
      OTHER              = "Year"
      9997               = "9997 Refused"
      9998               = "9998 Not ascertained"
      9999               = "9999 Don't know"
   ;
   VALUE SCP243X
      1                  = "1 Flu shot"
      2                  = "2 Flu nasal spray (spray, mist or drop in nose)"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;

DATA NHIS.SAMCHILD;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=313;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE    3   SRVY_YR    4   HHX      $ 6   INTV_QRT   3
      INTV_MON   3   FMX      $ 2   FPX      $ 2   WTIA_SC    8
      WTFA_SC    8

      /* UCF LENGTHS */

      REGION     3   STRAT_P    4   PSU_P      3

      /* HHC LENGTHS */

      SEX        3   HISPAN_I   3   RACERPI2   3   MRACRPI2   3
      MRACBPI2   3   AGE_P      3

      /* CID LENGTHS */

      CSRESPNO $ 2   CSRELTVP   3   LATEINTC   3

      /* FDB LENGTHS */

      FDRN_FLG   3

      /* CHS LENGTHS */

      TOTOZ_P    4   BWTGRM_P   4   CHGHT_TC   3   CWGHT_TC   4
      BMI_SC     4   AMR1R      3   AODD1      3   ADD2       3
      AMR2R      3   AUTISM     3   AODD2      3   CCONDRR1   3
      CCONDRR2   3   CCONDRR3   3   CCONDRR4   3   CCONDRR5   3
      CCONDRR6   3   CCONDRR7   3   CCONDRR8   3   CCONDRR9   3
      CPOX       3   CPOX12MO   3   CASHMEV    3   CASSTILL   3
      CASHYR     3   CASERYR1   3   HAYF1      3   RALLG1     3
      DALLG1     3   SALLG1     3   DIARH1     3   ANEMIA1    3
      EARINF1    3   SEIZE1     3   HAYF2      3   RALLG2     3
      DALLG2     3   SALLG2     3   DIARH2     3   ANEMIA2    3
      FHEAD      3   EARINF2    3   SEIZE2     3   STUTTER    3
      CHSTATYR   3   SCHDAYR1   4   CCOLD2W    3   CINTIL2W   3
      CHEARST2   3   CHRWORS    3   CHRWORSE   3   CHRWHIS1   3
      CHRTALK1   3   CHRSHOU1   3   CHRSPEA1   3   CHRCOCR1   3
      CHRCOCI1   3   CHRFAM     3   CHRMIS     3   CHRUNDST   3
      CHRUNDNS   3   CHEARAG1   3   CHRCAUS1   3   CHRPRBHP   3
      CHRENT     3   CHREHDI    3   CHREIAGE   3   CHRTUBE    3
      CHRTBAGE   3   CHRTSCH    3   CHRTSCHM   3   CHRTSCHR   3
      CHRTEST    3   CHRAIDNW   3   CHRAIDLG   3   CHRAIDYR   3
      CHRAIDEV   3   CHRAIDRC   3   CHRAIDLP   3   CHRAIDOF   3
      CHRAID01   3   CHRAID02   3   CHRAID03   3   CHRAID04   3
      CHRAID05   3   CHRAID06   3   CHRAID07   3   CHRAID08   3
      CHRAID09   3   CHRAID10   3   CHRAID11   3   CHRAUD     3
      CHRALDS    3   CHRALD01   3   CHRALD02   3   CHRALD03   3
      CHRALD04   3   CHRALD05   3   CHRALD06   3   CHRALD07   3
      CHRALD08   3   CHRALD09   3   CHRALD10   3   CHRALD11   3
      CHRALD12   3   CHRFIRE    3   CHRFRCRK   3   CHRTOTR    3
      CHRFRPRT   3   CHRWKVLN   3   CHRWKVLT   3   CHRWKPRT   3
      CHRLESNS   3   CHRLST01   3   CHRLST02   3   CHRLST03   3
      CHRLST04   3   CHRLST05   3   CHRLST06   3   CHRLST07   3
      CHRLST08   3   CHRLST09   3   CHRLST10   3   CHRLST11   3
      CHRLST12   3   CHRLSPRT   3   CHRINT     3   CHRINTHL   3
      CHRINTHA   3   CHRINTHP   3   CHRINHPR   3   CVISION    3
      CBLIND     3   IHSPEQ     3   IHMOB      3   IHMOBYR    3
      PROBRX     3   LEARND     3   MHIBOY2    3   CMHAGM15   3
      MHIGRL2    3   CMHAGF15   3

      /* CAU LENGTHS */

      CUSUALPL   3   CPLKIND    3   CHCPLROU   3   CHCPLKND   3
      CHCCHGYR   3   CHCCHGHI   3   CNOUSPL1   3   CNOUSPL2   3
      CNOUSPL3   3   CNOUSPL4   3   CNOUSPL5   3   CNOUSPL6   3
      CNOUSPL7   3   CNOUSPL8   3   CNOUSPL9   3   CPRVTRYR   3
      CPRVTRFD   3   CDRNANP    3   CDRNAI     3   CHCDLYR1   3
      CHCDLYR2   3   CHCDLYR3   3   CHCDLYR4   3   CHCDLYR5   3
      CHCAFYR    3   CHCAFYRN   3   CHCAFYRF   3   CHCAFYR1   3
      CHCAFYR2   3   CHCAFYR3   3   CHCAFYR4   3   CHCAFYR5   3
      CHCAFYR6   3   CDNLONGR   3   CHCSYR11   3   CHCSYR12   3
      CHCSYR13   3   CHCSYR14   3   CHCSYR1    3   CHCSYR2    3
      CHCSYR3    3   CHCSYR4    3   CHCSYR5    3   CHCSYR6    3
      CHCSYR7    3   CHCSYR81   3   CHCSYR82   3   CHCSYR10   3
      CHCSYREM   3   CHPXYR_C   3   CHERNOY2   3   CERVISND   3
      CERHOS     3   CERREA1R   3   CERREA2R   3   CERREA3R   3
      CERREA4R   3   CERREA5R   3   CERREA6R   3   CERREA7R   3
      CERREA8R   3   CHCHYR     3   CHCHMOYR   3   CHCHNOY2   3
      CHCNOYR2   3   CSRGYR     3   RSRGNOYR   3   CMDLONGR   3

      /* CMB LENGTHS */

      RSCL2_C2   3   RSCL2_E2   3   RSCL3_E3   3   RSCL5_P5   3
      RSCL5_H5   3   RSCL6      3

      /* CFI LENGTHS */

      CSHFLU12   3   CSHFLUNM   3   CSHFLUM1   3   CSHFLUY1   4
      CSHSPFL1   3   CSHFLUM2   3   CSHFLUY2   4   CSHSPFL2   3 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    INTV_QRT     13 -  13
      INTV_MON     14 -  15    FMX      $   16 -  17
      FPX      $   18 -  19    WTIA_SC      20 -  26 .1
      WTFA_SC      27 -  32

      /* UCF LOCATIONS */

      REGION       33 -  33    STRAT_P      34 -  36
      PSU_P        37 -  38

      /* HHC LOCATIONS */

      SEX          39 -  39    HISPAN_I     40 -  41
      RACERPI2     42 -  43    MRACRPI2     44 -  45
      MRACBPI2     46 -  47    AGE_P        48 -  49


      /* CID LOCATIONS */

      CSRESPNO $   50 -  51    CSRELTVP     52 -  52
      LATEINTC     53 -  53

      /* FDB LOCATIONS */

      FDRN_FLG     54 -  54

      /* CHS LOCATIONS */

      TOTOZ_P      55 -  57    BWTGRM_P     58 -  61
      CHGHT_TC     62 -  63    CWGHT_TC     64 -  66
      BMI_SC       67 -  70    AMR1R        71 -  71
      AODD1        72 -  72    ADD2         73 -  73
      AMR2R        74 -  74    AUTISM       75 -  75
      AODD2        76 -  76    CCONDRR1     77 -  77
      CCONDRR2     78 -  78    CCONDRR3     79 -  79
      CCONDRR4     80 -  80    CCONDRR5     81 -  81
      CCONDRR6     82 -  82    CCONDRR7     83 -  83
      CCONDRR8     84 -  84    CCONDRR9     85 -  85
      CPOX         86 -  86    CPOX12MO     87 -  87
      CASHMEV      88 -  88    CASSTILL     89 -  89
      CASHYR       90 -  90    CASERYR1     91 -  91
      HAYF1        92 -  92    RALLG1       93 -  93
      DALLG1       94 -  94    SALLG1       95 -  95
      DIARH1       96 -  96    ANEMIA1      97 -  97
      EARINF1      98 -  98    SEIZE1       99 -  99
      HAYF2       100 - 100    RALLG2      101 - 101
      DALLG2      102 - 102    SALLG2      103 - 103
      DIARH2      104 - 104    ANEMIA2     105 - 105
      FHEAD       106 - 106    EARINF2     107 - 107
      SEIZE2      108 - 108    STUTTER     109 - 109
      CHSTATYR    110 - 110    SCHDAYR1    111 - 113
      CCOLD2W     114 - 114    CINTIL2W    115 - 115
      CHEARST2    116 - 116    CHRWORS     117 - 117
      CHRWORSE    118 - 118    CHRWHIS1    119 - 119
      CHRTALK1    120 - 120    CHRSHOU1    121 - 121
      CHRSPEA1    122 - 122    CHRCOCR1    123 - 123
      CHRCOCI1    124 - 124    CHRFAM      125 - 125
      CHRMIS      126 - 126    CHRUNDST    127 - 127
      CHRUNDNS    128 - 128    CHEARAG1    129 - 130
      CHRCAUS1    131 - 132    CHRPRBHP    133 - 133
      CHRENT      134 - 134    CHREHDI     135 - 135
      CHREIAGE    136 - 137    CHRTUBE     138 - 138
      CHRTBAGE    139 - 140    CHRTSCH     141 - 141
      CHRTSCHM    142 - 142    CHRTSCHR    143 - 143
      CHRTEST     144 - 144    CHRAIDNW    145 - 145
      CHRAIDLG    146 - 147    CHRAIDYR    148 - 148
      CHRAIDEV    149 - 149    CHRAIDRC    150 - 150
      CHRAIDLP    151 - 152    CHRAIDOF    153 - 153
      CHRAID01    154 - 154    CHRAID02    155 - 155
      CHRAID03    156 - 156    CHRAID04    157 - 157
      CHRAID05    158 - 158    CHRAID06    159 - 159
      CHRAID07    160 - 160    CHRAID08    161 - 161
      CHRAID09    162 - 162    CHRAID10    163 - 163
      CHRAID11    164 - 164    CHRAUD      165 - 165
      CHRALDS     166 - 166    CHRALD01    167 - 167
      CHRALD02    168 - 168    CHRALD03    169 - 169
      CHRALD04    170 - 170    CHRALD05    171 - 171
      CHRALD06    172 - 172    CHRALD07    173 - 173
      CHRALD08    174 - 174    CHRALD09    175 - 175
      CHRALD10    176 - 176    CHRALD11    177 - 177
      CHRALD12    178 - 178    CHRFIRE     179 - 179
      CHRFRCRK    180 - 180    CHRTOTR     181 - 181
      CHRFRPRT    182 - 182    CHRWKVLN    183 - 183
      CHRWKVLT    184 - 185    CHRWKPRT    186 - 186
      CHRLESNS    187 - 187    CHRLST01    188 - 188
      CHRLST02    189 - 189    CHRLST03    190 - 190
      CHRLST04    191 - 191    CHRLST05    192 - 192
      CHRLST06    193 - 193    CHRLST07    194 - 194
      CHRLST08    195 - 195    CHRLST09    196 - 196
      CHRLST10    197 - 197    CHRLST11    198 - 198
      CHRLST12    199 - 199    CHRLSPRT    200 - 200
      CHRINT      201 - 201    CHRINTHL    202 - 202
      CHRINTHA    203 - 203    CHRINTHP    204 - 204
      CHRINHPR    205 - 205    CVISION     206 - 206
      CBLIND      207 - 207    IHSPEQ      208 - 208
      IHMOB       209 - 209    IHMOBYR     210 - 210
      PROBRX      211 - 211    LEARND      212 - 212
      MHIBOY2     213 - 214    CMHAGM15    215 - 215
      MHIGRL2     216 - 217    CMHAGF15    218 - 218


      /* CAU LOCATIONS */

      CUSUALPL    219 - 219    CPLKIND     220 - 220
      CHCPLROU    221 - 221    CHCPLKND    222 - 222
      CHCCHGYR    223 - 223    CHCCHGHI    224 - 224
      CNOUSPL1    225 - 225    CNOUSPL2    226 - 226
      CNOUSPL3    227 - 227    CNOUSPL4    228 - 228
      CNOUSPL5    229 - 229    CNOUSPL6    230 - 230
      CNOUSPL7    231 - 231    CNOUSPL8    232 - 232
      CNOUSPL9    233 - 233    CPRVTRYR    234 - 234
      CPRVTRFD    235 - 235    CDRNANP     236 - 236
      CDRNAI      237 - 237    CHCDLYR1    238 - 238
      CHCDLYR2    239 - 239    CHCDLYR3    240 - 240
      CHCDLYR4    241 - 241    CHCDLYR5    242 - 242
      CHCAFYR     243 - 243    CHCAFYRN    244 - 244
      CHCAFYRF    245 - 245    CHCAFYR1    246 - 246
      CHCAFYR2    247 - 247    CHCAFYR3    248 - 248
      CHCAFYR4    249 - 249    CHCAFYR5    250 - 250
      CHCAFYR6    251 - 251    CDNLONGR    252 - 252
      CHCSYR11    253 - 253    CHCSYR12    254 - 254
      CHCSYR13    255 - 255    CHCSYR14    256 - 256
      CHCSYR1     257 - 257    CHCSYR2     258 - 258
      CHCSYR3     259 - 259    CHCSYR4     260 - 260
      CHCSYR5     261 - 261    CHCSYR6     262 - 262
      CHCSYR7     263 - 263    CHCSYR81    264 - 264
      CHCSYR82    265 - 265    CHCSYR10    266 - 266
      CHCSYREM    267 - 267    CHPXYR_C    268 - 268
      CHERNOY2    269 - 270    CERVISND    271 - 271
      CERHOS      272 - 272    CERREA1R    273 - 273
      CERREA2R    274 - 274    CERREA3R    275 - 275
      CERREA4R    276 - 276    CERREA5R    277 - 277
      CERREA6R    278 - 278    CERREA7R    279 - 279
      CERREA8R    280 - 280    CHCHYR      281 - 281
      CHCHMOYR    282 - 283    CHCHNOY2    284 - 285
      CHCNOYR2    286 - 287    CSRGYR      288 - 288
      RSRGNOYR    289 - 290    CMDLONGR    291 - 291


      /* CMB LOCATIONS */

      RSCL2_C2    292 - 292    RSCL2_E2    293 - 293
      RSCL3_E3    294 - 294    RSCL5_P5    295 - 295
      RSCL5_H5    296 - 296    RSCL6       297 - 297


      /* CFI LOCATIONS */

      CSHFLU12    298 - 298    CSHFLUNM    299 - 299
      CSHFLUM1    300 - 301    CSHFLUY1    302 - 305
      CSHSPFL1    306 - 306    CSHFLUM2    307 - 308
      CSHFLUY2    309 - 312    CSHSPFL2    313 - 313
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
      WTIA_SC    ="Weight - Interim Annual"
      WTFA_SC    ="Weight - Final Annual"

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

      /* CID LABELS */

      CSRESPNO   ="Person # of available SC respondent"
      CSRELTVP   ="Person's relationship to child"
      LATEINTC   ="Late Sample Child interviews"

      /* FDB LABELS */

      FDRN_FLG   ="Disability Questions flag"

      /* CHS LABELS */

      TOTOZ_P    ="Total birth weight in ounces for public use"
      BWTGRM_P   ="Birth weight in grams for public use"
      CHGHT_TC   ="Total current height in inches (truncated)"
      CWGHT_TC   ="Current weight in pounds (truncated)"
      BMI_SC     ="Body Mass Index (BMI)"
      AMR1R      =
"Ever told SC had an intellectual disability also known as mental retardation"
      AODD1      ="Ever told SC had other developmental delay"
      ADD2       ="Ever told SC had ADHD/ADD"
      AMR2R      =
"Ever told SC had an intellectual disability also known as mental retardation"
      AUTISM     =
"Ever told SC had autism, Asperger's, pervasive devel or autism spectrum disorde
r"
      AODD2      ="Ever told SC had other developmental delay"
      CCONDRR1   ="Ever told SC had Down syndrome"
      CCONDRR2   ="Ever told SC had cerebral palsy"
      CCONDRR3   ="Ever told SC had muscular dystrophy"
      CCONDRR4   ="Ever told SC had cystic fibrosis"
      CCONDRR5   ="Ever told SC had sickle cell anemia"
      CCONDRR6   ="Ever told SC had diabetes"
      CCONDRR7   ="Ever told SC had arthritis"
      CCONDRR8   ="Ever told SC had congenital heart disease"
      CCONDRR9   ="Ever told SC had other heart condition"
      CPOX       ="Ever had chickenpox"
      CPOX12MO   ="Chickenpox, past 12 m"
      CASHMEV    ="Ever been told SC had asthma"
      CASSTILL   ="Still have asthma"
      CASHYR     ="Had an asthma episode/attack, past 12 m"
      CASERYR1   ="Had visit to ER due to asthma, past 12 m"
      HAYF1      ="Had hay fever, past 12 m"
      RALLG1     ="Had respiratory allergy, past 12 m"
      DALLG1     ="Had food/digestive allergy, past 12 m"
      SALLG1     ="Had eczema/skin allergy, past 12 m"
      DIARH1     ="Had frequent diarrhea/colitis, past 12 m"
      ANEMIA1    ="Had anemia, past 12 m"
      EARINF1    ="Had 3+ ear infections, past 12 m"
      SEIZE1     ="Had seizures, past 12 m"
      HAYF2      ="Had hay fever, past 12 m"
      RALLG2     ="Had respiratory allergy, past 12 m"
      DALLG2     ="Had food/digestive allergy, past 12 m"
      SALLG2     ="Had eczema/skin allergy, past 12 m"
      DIARH2     ="Had frequent diarrhea/colitis, past 12 m"
      ANEMIA2    ="Had anemia, past 12 m"
      FHEAD      ="Had frequent headaches/migraines, past 12 m"
      EARINF2    ="Had 3+ ear infections, past 12 m"
      SEIZE2     ="Had seizures, past 12 m"
      STUTTER    ="Stuttered/stammered, past 12 m"
      CHSTATYR   ="Health better, worse, or about the same"
      SCHDAYR1   ="Days missed due to illness/injury, past 12 m"
      CCOLD2W    ="Had a head/chest cold, 2 week reference period"
      CINTIL2W   =
"Had stomach illness with vomiting/diarrhea,   2 week reference period"
      CHEARST2   ="Hearing status without hearing aid or other listening device"
      CHRWORS    ="Hearing worse in one ear than the other"
      CHRWORSE   ="Hearing status in worse ear"
      CHRWHIS1   ="Hear whispering from across quiet room"
      CHRTALK1   ="Hear talking in normal voice from across quiet room"
      CHRSHOU1   ="Hear shouting from across quiet room"
      CHRSPEA1   ="Hear loud speaking directly into ear"
      CHRCOCR1   ="Health care professional ever recommend cochlear implant"
      CHRCOCI1   ="Had cochlear implant surgery"
      CHRFAM     ="Anyone ever said child had hearing problem"
      CHRMIS     ="How often child hears something different from what you said"
      CHRUNDST   ="How often child has difficulty understanding what others say"
      CHRUNDNS   =
"How often child has difficulty understanding conversation if background noise"
      CHEARAG1   ="Age when began having any hearing loss"
      CHRCAUS1   ="Main cause of hearing loss"
      CHRPRBHP   =
"Last time saw health care professional for any hearing or ear problem"
      CHRENT     =
"Referred to hearing specialist by health care professional in past 5 years"
      CHREHDI    ="Screening test for hearing loss at birth"
      CHREIAGE   ="Age when first have earache or ear infection"
      CHRTUBE    ="Ever have ear tube"
      CHRTBAGE   ="Age have first ear tube"
      CHRTSCH    ="Ever had hearing test at school"
      CHRTSCHM   ="Had more than one hearing test at school"
      CHRTSCHR   ="Time since last hearing test at school"
      CHRTEST    ="Time since last hearing test by hearing specialist"
      CHRAIDNW   ="Currently use hearing aid"
      CHRAIDLG   ="How long (weeks, months, or years) child used hearing aid"
      CHRAIDYR   ="Average daily hearing aid use in past two weeks"
      CHRAIDEV   ="Ever use hearing aid in past"
      CHRAIDRC   ="Health care professional ever recommend hearing aid"
      CHRAIDLP   ="How long used hearing aid in past (not currently using)"
      CHRAIDOF   ="Average daily hearing aid use in past (not currently using)"
      CHRAID01   ="Reason-Didn't help"
      CHRAID02   ="Reason-Made everything too loud"
      CHRAID03   ="Reason-Didn't like the way it sounded (unwanted sounds)"
      CHRAID04   ="Reason-Didn't like own voice sound when wearing hearing aid"
      CHRAID05   ="Reason-Uncomfortable"
      CHRAID06   ="Reason-Frequently broke"
      CHRAID07   ="Reason-Didn't like way it looked"
      CHRAID08   ="Reason-Cost too much"
      CHRAID09   ="Reason-Didn't think needed it"
      CHRAID10   ="Reason-Misplaced or lost"
      CHRAID11   ="Reason-Other"
      CHRAUD     ="Ever trained to improve ability to hear"
      CHRALDS    =
"Ever use assistive technology for communication due to hearing problem"
      CHRALD01   ="FM system, pocket talker, or other personal listening device"
      CHRALD02   ="Instant or text messages"
      CHRALD03   ="Classroom amplification systems"
      CHRALD04   ="Amplified telephone"
      CHRALD05   ="Amplified or vibrating alarm clock"
      CHRALD06   ="Notification or signaling alarm system"
      CHRALD07   ="Headset with television or closed-caption television"
      CHRALD08   ="TTY, TDD or telephone relay service"
      CHRALD09   ="Video relay service"
      CHRALD10   =
"Live video streaming using sign language or other means of communication"
      CHRALD11   ="Sign language interpreter"
      CHRALD12   ="Other"
      CHRFIRE    ="Ever close to gunfire"
      CHRFRCRK   ="Ever close to fireworks or other explosive noises"
      CHRTOTR    ="Number of total explosive events"
      CHRFRPRT   =
"How often used hearing protection when explosive noises occurred"
      CHRWKVLN   =
"Exposed to very loud noises at least 4 hours a day, several days a week"
      CHRWKVLT   =
"Time exposed to very loud noises at least 4 hours a day, several days a week"
      CHRWKPRT   =
"How often used hearing protection when very loud explosive noises occurred"
      CHRLESNS   =
"Ever exposed to very loud noise 10+ times a year except working or doing chores
"
      CHRLST01   =
"Motorcycles, auto racing, snowmobile, motor boat, or other recreational vehicle
s"
      CHRLST02   ="Operating farm machinery"
      CHRLST03   ="Woodworking or other workshop power tools"
      CHRLST04   ="Lawnmower, electric trimmer, leaf or snow blower, chain saw"
      CHRLST05   ="Guns, firearms"
      CHRLST06   ="Firecrackers or fireworks"
      CHRLST07   ="Very loud household appliances (vacuum cleaners, hair dryers)
"
      CHRLST08   ="CD player, MP3 player, iPod"
      CHRLST09   ="Playing musical instrument"
      CHRLST10   ="Extremely loud toys"
      CHRLST11   =
"Other music-related activity (rock concerts, stereos, clubs, bars"
      CHRLST12   ="Other activities (video games, home theater, sporting events)
"
      CHRLSPRT   =
"How often used hearing protection when very loud noises occurred outside of wor
k"
      CHRINT     =
"Get internet information about health or medical treatment in past 12 months"
      CHRINTHL   ="Get internet information about hearing loss, past 12 m"
      CHRINTHA   =
"Get internet info on cochlear implants or other assistive technology, past 12 m
"
      CHRINTHP   ="Get internet information about hearing protection, past 12 m"
      CHRINHPR   =
"Information written by health professional or health-related organization"
      CVISION    ="Trouble seeing"
      CBLIND     ="Blind/unable to see at all"
      IHSPEQ     ="Need special equipment due to impairment/health problem"
      IHMOB      ="Impairment/health problem limit crawl/walk/run/play"
      IHMOBYR    ="Impairment/health problem lasted/will last 12+ m"
      PROBRX     ="Taken RX medication for 3+ m"
      LEARND     ="Ever told SC had a learning disability"
      MHIBOY2    ="Mental health indicator (MHI) scale score"
      CMHAGM15   ="Been unhappy/depressed, past 2 m"
      MHIGRL2    ="Mental health indicator (MHI) scale score"
      CMHAGF15   ="Been unhappy/depressed, past 2 m"

      /* CAU LABELS */

      CUSUALPL   ="Place USUALLY go when sick"
      CPLKIND    ="Type of place to go when sick (most often)"
      CHCPLROU   ="USUALLY go there for routine/preventive care"
      CHCPLKND   ="Type of place USUALLY go for routine/preventive care"
      CHCCHGYR   ="Change health care place, past 12 m"
      CHCCHGHI   ="Change related to health insurance"
      CNOUSPL1   ="Doesn't need doctor/No problems"
      CNOUSPL2   ="Doesn't like/trust/believe in doctors"
      CNOUSPL3   ="Doesn't know where to go"
      CNOUSPL4   ="Previous doctor not available/moved"
      CNOUSPL5   ="Too expensive/no insurance/cost"
      CNOUSPL6   ="Speak a different language"
      CNOUSPL7   ="No care available/Care too far away, inconvenient"
      CNOUSPL8   ="Put it off/Didn't get around to it"
      CNOUSPL9   ="Other reason child not have usual source of medical care"
      CPRVTRYR   ="Trouble finding a general doctor to see child"
      CPRVTRFD   ="Able to find general doctor to see child"
      CDRNANP    ="Doctor's office not accept child as new patient"
      CDRNAI     ="Doctor's office not accept child's health insurance"
      CHCDLYR1   ="Couldn't get through on phone, past 12 m"
      CHCDLYR2   ="Couldn't get appointment soon enough, past 12 m"
      CHCDLYR3   ="Wait too long in doctor's office, past 12 m"
      CHCDLYR4   ="Not open when you could go, past 12 m"
      CHCDLYR5   ="No transportation, past 12 m"
      CHCAFYR    ="Can't afford prescription medicine, past 12 m"
      CHCAFYRN   ="Can't afford to see a specialist, past 12 m"
      CHCAFYRF   ="Can't afford follow-up care, past 12 m"
      CHCAFYR1   ="Can't afford prescription medicine, past 12 m"
      CHCAFYR2   ="Can't afford mental care/counseling, past 12 m"
      CHCAFYR3   ="Can't afford dental care, past 12 m"
      CHCAFYR4   ="Can't afford eyeglasses, past 12 m"
      CHCAFYR5   ="Can't afford to see a specialist, past 12 m"
      CHCAFYR6   ="Can't afford follow-up care, past 12 m"
      CDNLONGR   ="Time since last saw dentist"
      CHCSYR11   ="Seen/talked to eye doctor, past 12 m"
      CHCSYR12   ="Seen/talked to foot doctor, past 12 m"
      CHCSYR13   ="Seen/talked to therapist (PT/OT/etc), past 12 m"
      CHCSYR14   ="Seen/talked to a NP/PA, past 12 m"
      CHCSYR1    ="Seen/talked to mental health professional, past 12 m"
      CHCSYR2    ="Seen/talked to eye doctor, past 12 m"
      CHCSYR3    ="Seen/talked to foot doctor, past 12 m"
      CHCSYR4    ="Seen/talked to chiropractor, past 12 m"
      CHCSYR5    ="Seen/talked to therapist (PT/OT/etc), past 12 m"
      CHCSYR6    ="Seen/talked to NP/PA/midwife, past 12 m"
      CHCSYR7    ="Seen/talked to obstetrician/gynecologist, past 12 m"
      CHCSYR81   ="Seen/talked to a medical specialist, past 12 m"
      CHCSYR82   ="Seen/talked to a general doctor, past 12 m"
      CHCSYR10   ="Doctor treats both children and adults"
      CHCSYREM   ="Seen/talked to doctor for emotional/behavioral problem"
      CHPXYR_C   ="Had well-child checkup, past 12 m"
      CHERNOY2   ="# times in ER/ED, past 12 m"
      CERVISND   ="Most recent ER visit at night or on weekend"
      CERHOS     ="Hospital admission was result of most recent ER visit"
      CERREA1R   ="Didn't have another place to go"
      CERREA2R   ="Doctor's office or clinic was not open"
      CERREA3R   ="Health provider advised ER visit"
      CERREA4R   ="Problem too serious for doctor's office or clinic"
      CERREA5R   ="Only a hospital could help"
      CERREA6R   ="ER is closest provider"
      CERREA7R   ="ER provides most of child's medical care"
      CERREA8R   ="Arrived by ambulance or other emergency vehicle"
      CHCHYR     ="Received home care from health professional, past 12 m"
      CHCHMOYR   ="# of months of home care, past 12 m"
      CHCHNOY2   ="Total number of home visits"
      CHCNOYR2   ="Total number of office visits, past 12 m"
      CSRGYR     ="Had surgery/surgical procedure, past 12 m"
      RSRGNOYR   ="# of outpatient surgeries, past 12 m"
      CMDLONGR   ="Time since last seen/talked to health professional"

      /* CMB LABELS */

      RSCL2_C2   ="Well behaved/does what requested, past 6 m"
      RSCL2_E2   ="Many worries/often seems worried, past 6 m"
      RSCL3_E3   ="Unhappy/depressed/tearful, past 6 m"
      RSCL5_P5   ="Gets along better w/adults than children/youth, past 6 m"
      RSCL5_H5   ="Good attention/completes chores, homework, past 6 m"
      RSCL6      ="Difficulties w/emotions/concentration/behavior/getting along"

      /* CFI LABELS */

      CSHFLU12   ="Flu vaccination, past 12 m"
      CSHFLUNM   ="Number of flu vaccines, past 12 m"
      CSHFLUM1   ="Month of most recent flu vaccine"
      CSHFLUY1   ="Year of most recent flu vaccine"
      CSHSPFL1   ="Administration method most recent flu vaccine"
      CSHFLUM2   ="Month of next most recent flu vaccine"
      CSHFLUY2   ="Year of next most recent flu vaccine"
      CSHSPFL2   ="Administration method next most recent flu vaccine"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
   *    (PUT ASTERISK (*) BEFORE WORD "FORMAT"
        IN NEXT STATEMENT TO PREVENT FORMAT
        ASSOCIATIONS BEING STORED WITH DATA SET);
   FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE   SCP001X.   SRVY_YR   SCP002X.   HHX       $GROUPC.
      INTV_QRT  SCP004X.   INTV_MON  SCP005X.   WTIA_SC   GROUPN.
      WTFA_SC   GROUPN.

      /* UCF FORMAT ASSOCIATIONS */

      REGION    SCP010X.

      /* HHC FORMAT ASSOCIATIONS */

      SEX       SCP013X.   HISPAN_I  SCP014X.   RACERPI2  SCP015X.
      MRACRPI2  SCP016X.   MRACBPI2  SCP017X.   AGE_P     SCP018X.

      /* CID FORMAT ASSOCIATIONS */

      CSRESPNO  $SCP019X.  CSRELTVP  SCP020X.   LATEINTC  SCP021X.

      /* FDB FORMAT ASSOCIATIONS */

      FDRN_FLG  SCP022X.

      /* CHS FORMAT ASSOCIATIONS */

      TOTOZ_P   SCP023X.   BWTGRM_P  SCP024X.   CHGHT_TC  SCP025X.
      CWGHT_TC  SCP026X.   BMI_SC    SCP027X.   AMR1R     SCP028X.
      AODD1     SCP028X.   ADD2      SCP028X.   AMR2R     SCP028X.
      AUTISM    SCP028X.   AODD2     SCP028X.   CCONDRR1  SCP034X.
      CCONDRR2  SCP034X.   CCONDRR3  SCP034X.   CCONDRR4  SCP034X.
      CCONDRR5  SCP034X.   CCONDRR6  SCP034X.   CCONDRR7  SCP034X.
      CCONDRR8  SCP034X.   CCONDRR9  SCP034X.   CPOX      SCP043X.
      CPOX12MO  SCP028X.   CASHMEV   SCP028X.   CASSTILL  SCP028X.
      CASHYR    SCP028X.   CASERYR1  SCP028X.   HAYF1     SCP028X.
      RALLG1    SCP028X.   DALLG1    SCP028X.   SALLG1    SCP028X.
      DIARH1    SCP028X.   ANEMIA1   SCP028X.   EARINF1   SCP028X.
      SEIZE1    SCP028X.   HAYF2     SCP028X.   RALLG2    SCP028X.
      DALLG2    SCP028X.   SALLG2    SCP028X.   DIARH2    SCP028X.
      ANEMIA2   SCP028X.   FHEAD     SCP028X.   EARINF2   SCP028X.
      SEIZE2    SCP028X.   STUTTER   SCP028X.   CHSTATYR  SCP067X.
      SCHDAYR1  SCP068X.   CCOLD2W   SCP028X.   CINTIL2W  SCP028X.
      CHEARST2  SCP071X.   CHRWORS   SCP028X.   CHRWORSE  SCP071X.
      CHRWHIS1  SCP028X.   CHRTALK1  SCP028X.   CHRSHOU1  SCP028X.
      CHRSPEA1  SCP028X.   CHRCOCR1  SCP028X.   CHRCOCI1  SCP028X.
      CHRFAM    SCP028X.   CHRMIS    SCP081X.   CHRUNDST  SCP081X.
      CHRUNDNS  SCP081X.   CHEARAG1  SCP084X.   CHRCAUS1  SCP085X.
      CHRPRBHP  SCP086X.   CHRENT    SCP028X.   CHREHDI   SCP028X.
      CHREIAGE  SCP089X.   CHRTUBE   SCP028X.   CHRTBAGE  SCP091X.
      CHRTSCH   SCP092X.   CHRTSCHM  SCP028X.   CHRTSCHR  SCP094X.
      CHRTEST   SCP086X.   CHRAIDNW  SCP028X.   CHRAIDLG  SCP097X.
      CHRAIDYR  SCP098X.   CHRAIDEV  SCP028X.   CHRAIDRC  SCP028X.
      CHRAIDLP  SCP097X.   CHRAIDOF  SCP098X.   CHRAID01  SCP034X.
      CHRAID02  SCP034X.   CHRAID03  SCP034X.   CHRAID04  SCP034X.
      CHRAID05  SCP034X.   CHRAID06  SCP034X.   CHRAID07  SCP034X.
      CHRAID08  SCP034X.   CHRAID09  SCP034X.   CHRAID10  SCP034X.
      CHRAID11  SCP034X.   CHRAUD    SCP028X.   CHRALDS   SCP028X.
      CHRALD01  SCP034X.   CHRALD02  SCP034X.   CHRALD03  SCP034X.
      CHRALD04  SCP034X.   CHRALD05  SCP034X.   CHRALD06  SCP034X.
      CHRALD07  SCP034X.   CHRALD08  SCP034X.   CHRALD09  SCP034X.
      CHRALD10  SCP034X.   CHRALD11  SCP034X.   CHRALD12  SCP034X.
      CHRFIRE   SCP028X.   CHRFRCRK  SCP028X.   CHRTOTR   SCP130X.
      CHRFRPRT  SCP081X.   CHRWKVLN  SCP028X.   CHRWKVLT  SCP133X.
      CHRWKPRT  SCP081X.   CHRLESNS  SCP028X.   CHRLST01  SCP034X.
      CHRLST02  SCP034X.   CHRLST03  SCP034X.   CHRLST04  SCP034X.
      CHRLST05  SCP034X.   CHRLST06  SCP034X.   CHRLST07  SCP034X.
      CHRLST08  SCP034X.   CHRLST09  SCP034X.   CHRLST10  SCP034X.
      CHRLST11  SCP034X.   CHRLST12  SCP034X.   CHRLSPRT  SCP081X.
      CHRINT    SCP028X.   CHRINTHL  SCP028X.   CHRINTHA  SCP028X.
      CHRINTHP  SCP028X.   CHRINHPR  SCP028X.   CVISION   SCP028X.
      CBLIND    SCP028X.   IHSPEQ    SCP028X.   IHMOB     SCP028X.
      IHMOBYR   SCP028X.   PROBRX    SCP028X.   LEARND    SCP028X.
      MHIBOY2   SCP161X.   CMHAGM15  SCP162X.   MHIGRL2   SCP161X.
      CMHAGF15  SCP162X.

      /* CAU FORMAT ASSOCIATIONS */

      CUSUALPL  SCP165X.   CPLKIND   SCP166X.   CHCPLROU  SCP028X.
      CHCPLKND  SCP168X.   CHCCHGYR  SCP028X.   CHCCHGHI  SCP028X.
      CNOUSPL1  SCP171X.   CNOUSPL2  SCP171X.   CNOUSPL3  SCP171X.
      CNOUSPL4  SCP171X.   CNOUSPL5  SCP171X.   CNOUSPL6  SCP171X.
      CNOUSPL7  SCP171X.   CNOUSPL8  SCP171X.   CNOUSPL9  SCP171X.
      CPRVTRYR  SCP028X.   CPRVTRFD  SCP181X.   CDRNANP   SCP028X.
      CDRNAI    SCP028X.   CHCDLYR1  SCP028X.   CHCDLYR2  SCP028X.
      CHCDLYR3  SCP028X.   CHCDLYR4  SCP028X.   CHCDLYR5  SCP028X.
      CHCAFYR   SCP028X.   CHCAFYRN  SCP028X.   CHCAFYRF  SCP028X.
      CHCAFYR1  SCP028X.   CHCAFYR2  SCP028X.   CHCAFYR3  SCP028X.
      CHCAFYR4  SCP028X.   CHCAFYR5  SCP028X.   CHCAFYR6  SCP028X.
      CDNLONGR  SCP198X.   CHCSYR11  SCP028X.   CHCSYR12  SCP028X.
      CHCSYR13  SCP028X.   CHCSYR14  SCP028X.   CHCSYR1   SCP028X.
      CHCSYR2   SCP028X.   CHCSYR3   SCP028X.   CHCSYR4   SCP028X.
      CHCSYR5   SCP028X.   CHCSYR6   SCP028X.   CHCSYR7   SCP028X.
      CHCSYR81  SCP028X.   CHCSYR82  SCP028X.   CHCSYR10  SCP028X.
      CHCSYREM  SCP028X.   CHPXYR_C  SCP028X.   CHERNOY2  SCP215X.
      CERVISND  SCP028X.   CERHOS    SCP028X.   CERREA1R  SCP181X.
      CERREA2R  SCP181X.   CERREA3R  SCP028X.   CERREA4R  SCP181X.
      CERREA5R  SCP028X.   CERREA6R  SCP181X.   CERREA7R  SCP181X.
      CERREA8R  SCP181X.   CHCHYR    SCP028X.   CHCHMOYR  SCP227X.
      CHCHNOY2  SCP228X.   CHCNOYR2  SCP215X.   CSRGYR    SCP028X.
      RSRGNOYR  SCP231X.   CMDLONGR  SCP198X.

      /* CMB FORMAT ASSOCIATIONS */

      RSCL2_C2  SCP233X.   RSCL2_E2  SCP233X.   RSCL3_E3  SCP233X.
      RSCL5_P5  SCP233X.   RSCL5_H5  SCP233X.   RSCL6     SCP238X.

      /* CFI FORMAT ASSOCIATIONS */

      CSHFLU12  SCP028X.   CSHFLUNM  SCP240X.   CSHFLUM1  SCP241X.
      CSHFLUY1  SCP242X.   CSHSPFL1  SCP243X.   CSHFLUM2  SCP241X.
      CSHFLUY2  SCP242X.   CSHSPFL2  SCP243X.;
RUN;

PROC CONTENTS DATA=NHIS.SAMCHILD;
   TITLE1 'CONTENTS OF THE 2014 NHIS Sample Child FILE';

PROC FREQ DATA=NHIS.SAMCHILD NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2014 NHIS Sample Child FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA_SC;

PROC FREQ DATA=NHIS.SAMCHILD NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2014 NHIS Sample Child FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
