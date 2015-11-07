*********************************************************************
 OCTOBER 28, 2014  3:30 PM
 
 This is an example of a SAS program that creates a SAS
 file from the 2013 NHIS Public Use SAMCHILD.DAT ASCII file
 
 This is stored in SAMCHILD.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2013";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2013";

FILENAME ASCIIDAT 'C:\NHIS2013\SAMCHILD.dat';

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
      4                  = "4 Brother/Sister"
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
   VALUE SCP033X
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
   VALUE SCP050X
      000                = "000 None"
      995                = "995 Child is home schooled"
      996                = "996 Child does not go to school"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SCP052X
      1                  = "1 Inhaler or disk"
      2                  = "2 Nebulizer"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP054X
      1                  = "1 Every day or almost every day"
      2                  = "2 Less often"
      3                  = "3 Never"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP060X
      1                  = "1 Yes"
      2                  = "2 No"
      3                  = "3 Was told no changes needed"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP061X
      000                = "000 None"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don’t know"
   ;
   VALUE SCP062X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SCP083X
      1                  = "1 Better"
      2                  = "2 Worse"
      3                  = "3 About the same"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP084X
      000                = "000 None"
      996                = "996 Did not go to school"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE SCP087X
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
   VALUE SCP095X
      0                  = "0 Not true"
      1                  = "1 Sometimes true"
      2                  = "2 Often true"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP096X
      99                 = "99 Unknown"
   ;
   VALUE SCP099X
      1                  = "1 Yes"
      2                  = "2 There is NO place"
      3                  = "3 There is MORE THAN ONE place"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP100X
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
   VALUE SCP102X
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
   VALUE SCP105X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SCP132X
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
   VALUE SCP149X
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
   VALUE SCP155X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t' know"
   ;
   VALUE SCP161X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SCP162X
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
   VALUE SCP165X
      95                 = "95 95+ times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SCP167X
      0                  = "0 Not true"
      1                  = "1 Somewhat true"
      2                  = "2 Certainly true"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP172X
      0                  = "0 No"
      1                  = "1 Yes, minor difficulties"
      2                  = "2 Yes, definite difficulties"
      3                  = "3 Yes, severe difficulties"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP175X
      1                  = "1 A lot"
      2                  = "2 Some"
      3                  = "3 A little"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP176X
      1                  = "1 Less than a month"
      2                  = "2 1-5 months"
      3                  = "3 6 to 12 months"
      4                  = "4 Over a year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SCP178X
      1                  = "1 Not at all"
      2                  = "2 A little"
      3                  = "3 Some"
      4                  = "4 A lot"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP185X
      1                  = "1 Day School"
      2                  = "2 Overnight School"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP215X
      1                  = "1 Mentioned"
      2                  = "2 Not ascertained"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SCP244X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t' know"
   ;
   VALUE SCP267X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not mentioned"
      9                  = "9 Don’t know"
   ;
   VALUE SCP273X
      01                 = 
"01 Child welfare/social services/family and child services agency"
      02                 = "02 School or educational system"
      03                 = "03 Mental health agency"
      04                 = "04 Private mental health professional"
      05                 = "05 Juvenile justice agency or court system"
      06                 = "06 Private insurance service"
      07                 = "07 Family or friend"
      08                 = "08 Pediatrician or other family doctor"
      09                 = "09 Family or youth advocacy groups"
      10                 = "10 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE SCP274X
      1                  = "1 Not at all"
      2                  = "2 A little"
      3                  = "3 Some"
      4                  = "4 A lot"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE SCP299X
      1                  = "1 1 vaccination or dose"
      2                  = "2 2 or more vaccination doses"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE SCP300X
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
   VALUE SCP301X
      .                   = '.'
      OTHER              = "Year"
      9997               = "9997 Refused"
      9998               = "9998 Not ascertained"
      9999               = "9999 Don't know"
   ;
   VALUE SCP302X
      1                  = "1 Flu shot"
      2                  = "2 Flu nasal spray (spray, mist or drop in nose)"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;

DATA NHIS.SAMCHILD;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=370;

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
      AMR2R      3   AODD2      3   CCONDL01   3   CCONDL02   3
      CCONDL03   3   CCONDL04   3   CCONDL05   3   CCONDL6R   3
      CCONDL07   3   CCONDL08   3   CCONDL09   3   CCONDL10   3
      CPOX       3   CPOX12MO   3   CASHMEV    3   CASSTILL   3
      CASHYR     3   CASERYR1   3   CASMHSP1   3   CWZMSWK1   4
      CASMMED1   3   CASMTYP    3   CASMCAN1   3   CASMDTP2   3
      CASWMP1    3   CASCLASS   3   CAS_REC    3   CAS_RES    3
      CAS_MON    3   CAPENVLN   3   CAROUTIN   4   CASYMPT    3
      CARESCUE   3   CAACTLIM   3   HAYF1      3   RALLG1     3
      DALLG1     3   SALLG1     3   DIARH1     3   ANEMIA1    3
      EARINF1    3   SEIZE1     3   HAYF2      3   RALLG2     3
      DALLG2     3   SALLG2     3   DIARH2     3   ANEMIA2    3
      FHEAD      3   EARINF2    3   SEIZE2     3   STUTTER    3
      CHSTATYR   3   SCHDAYR1   4   CCOLD2W    3   CINTIL2W   3
      CHEARST1   3   CVISION    3   CBLIND     3   IHSPEQ     3
      IHMOB      3   IHMOBYR    3   PROBRX     3   LEARND     3
      CMHAGM15   3   MHIBOY2    3   CMHAGF15   3   MHIGRL2    3

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

      /* CMS LENGTHS */

      DIFF6M     3   DIFFINTF   3   DIFFDEG    3   DIFFLNG    3
      PRESCP6M   3   PRESHELP   3   PMEDPED    3   PMEDPSY    3
      PMEDNEU    3   PMEDOTHR   3   NSDUH21    3   NSDUH3     3
      NSDUH31    3   NSDUH321   3   NSDUH322   3   NSDUH323   3
      NSDUH324   3   NSDUH325   3   NSDUH4     3   NSDUH51R   3
      NSDUH52R   3   NSDUH53R   3   NSDUH54R   3   NSDUH55R   3
      TRTWRE1R   3   TRTWH11R   3   TRTWH12R   3   TRTWH13R   3
      TRTWH14R   3   TRTWH16R   3   TRTMHP11   3   TRTMHP12   3
      TRTMHP13   3   TRTMHP14   3   TRTWRE2R   3   TRTWH21R   3
      TRTWH22R   3   TRTWH23R   3   TRTWH24R   3   TRTWH25R   3
      TRTWH26R   3   TRTMHP21   3   TRTMHP22   3   TRTMHP23   3
      TRTMHP24   3   TRTWRE3R   3   TRTWH31R   3   TRTWH32R   3
      TRTWH33R   3   TRTWH34R   3   TRTWH35R   3   TRTWH36R   3
      TRTMHP31   3   TRTMHP32   3   TRTMHP33   3   TRTMHP34   3
      TRTWRE4R   3   TRTWH41R   3   TRTWH42R   3   TRTWH43R   3
      TRTWH44R   3   TRTWH45R   3   TRTWH46R   3   TRTMHP41   3
      TRTMHP42   3   TRTMHP43   3   TRTMHP44   3   TRTWRE5R   3
      TRTWH51R   3   TRTWH52R   3   TRTWH53R   3   TRTWH54R   3
      TRTWH55R   3   TRTWH56R   3   TRTMHP51   3   TRTMHP52   3
      TRTMHP53   3   TRTMHP54   3   TRTWRE6R   3   TRTWH61R   3
      TRTWH62R   3   TRTWH63R   3   TRTWH64R   3   TRTWH65R   3
      TRTWH66R   3   TRTMHP61   3   TRTMHP62   3   TRTMHP63   3
      TRTMHP64   3   OVRNT6MR   3   OVERWH1R   3   OVERWH2R   3
      OVERWH3R   3   OVERWH4R   3   OVERWH5R   3   OVERWH6R   3
      OVERWH7R   3   SH1        3   SH2        3   CASEM6M    3
      CASEMWHO   3   TRETHELP   3   TRPYPHIR   3   TRPYSCHR   3
      TRPYSLFR   3   TRPYMEDR   3   TRPYCHPR   3   TRPYMILR   3
      TRPYSHPR   3   TRPYIHSR   3   TRPYOTHR   3   TRTFREER   3
      TRTNEED1   3   NTRCOSTR   3   NTRLOCR    3   NTRNEXPR   3
      NTRFEARR   3   NTRLOSER   3   NTRSAYR    3   NTRWAITR   3
      NTRTRANR   3   NTRINCVR   3   NTRFARR    3   NTRCHNOR   3
      NTROTHR    3

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
      AMR2R        74 -  74    AODD2        75 -  75
      CCONDL01     76 -  76    CCONDL02     77 -  77
      CCONDL03     78 -  78    CCONDL04     79 -  79
      CCONDL05     80 -  80    CCONDL6R     81 -  81
      CCONDL07     82 -  82    CCONDL08     83 -  83
      CCONDL09     84 -  84    CCONDL10     85 -  85
      CPOX         86 -  86    CPOX12MO     87 -  87
      CASHMEV      88 -  88    CASSTILL     89 -  89
      CASHYR       90 -  90    CASERYR1     91 -  91
      CASMHSP1     92 -  92    CWZMSWK1     93 -  95
      CASMMED1     96 -  96    CASMTYP      97 -  97
      CASMCAN1     98 -  98    CASMDTP2     99 -  99
      CASWMP1     100 - 100    CASCLASS    101 - 101
      CAS_REC     102 - 102    CAS_RES     103 - 103
      CAS_MON     104 - 104    CAPENVLN    105 - 105
      CAROUTIN    106 - 108    CASYMPT     109 - 109
      CARESCUE    110 - 110    CAACTLIM    111 - 111
      HAYF1       112 - 112    RALLG1      113 - 113
      DALLG1      114 - 114    SALLG1      115 - 115
      DIARH1      116 - 116    ANEMIA1     117 - 117
      EARINF1     118 - 118    SEIZE1      119 - 119
      HAYF2       120 - 120    RALLG2      121 - 121
      DALLG2      122 - 122    SALLG2      123 - 123
      DIARH2      124 - 124    ANEMIA2     125 - 125
      FHEAD       126 - 126    EARINF2     127 - 127
      SEIZE2      128 - 128    STUTTER     129 - 129
      CHSTATYR    130 - 130    SCHDAYR1    131 - 133
      CCOLD2W     134 - 134    CINTIL2W    135 - 135
      CHEARST1    136 - 136    CVISION     137 - 137
      CBLIND      138 - 138    IHSPEQ      139 - 139
      IHMOB       140 - 140    IHMOBYR     141 - 141
      PROBRX      142 - 142    LEARND      143 - 143
      CMHAGM15    144 - 144    MHIBOY2     145 - 146
      CMHAGF15    147 - 147    MHIGRL2     148 - 149


      /* CAU LOCATIONS */

      CUSUALPL    150 - 150    CPLKIND     151 - 151
      CHCPLROU    152 - 152    CHCPLKND    153 - 153
      CHCCHGYR    154 - 154    CHCCHGHI    155 - 155
      CNOUSPL1    156 - 156    CNOUSPL2    157 - 157
      CNOUSPL3    158 - 158    CNOUSPL4    159 - 159
      CNOUSPL5    160 - 160    CNOUSPL6    161 - 161
      CNOUSPL7    162 - 162    CNOUSPL8    163 - 163
      CNOUSPL9    164 - 164    CPRVTRYR    165 - 165
      CPRVTRFD    166 - 166    CDRNANP     167 - 167
      CDRNAI      168 - 168    CHCDLYR1    169 - 169
      CHCDLYR2    170 - 170    CHCDLYR3    171 - 171
      CHCDLYR4    172 - 172    CHCDLYR5    173 - 173
      CHCAFYR     174 - 174    CHCAFYRN    175 - 175
      CHCAFYRF    176 - 176    CHCAFYR1    177 - 177
      CHCAFYR2    178 - 178    CHCAFYR3    179 - 179
      CHCAFYR4    180 - 180    CHCAFYR5    181 - 181
      CHCAFYR6    182 - 182    CDNLONGR    183 - 183
      CHCSYR11    184 - 184    CHCSYR12    185 - 185
      CHCSYR13    186 - 186    CHCSYR14    187 - 187
      CHCSYR1     188 - 188    CHCSYR2     189 - 189
      CHCSYR3     190 - 190    CHCSYR4     191 - 191
      CHCSYR5     192 - 192    CHCSYR6     193 - 193
      CHCSYR7     194 - 194    CHCSYR81    195 - 195
      CHCSYR82    196 - 196    CHCSYR10    197 - 197
      CHCSYREM    198 - 198    CHPXYR_C    199 - 199
      CHERNOY2    200 - 201    CERVISND    202 - 202
      CERHOS      203 - 203    CERREA1R    204 - 204
      CERREA2R    205 - 205    CERREA3R    206 - 206
      CERREA4R    207 - 207    CERREA5R    208 - 208
      CERREA6R    209 - 209    CERREA7R    210 - 210
      CERREA8R    211 - 211    CHCHYR      212 - 212
      CHCHMOYR    213 - 214    CHCHNOY2    215 - 216
      CHCNOYR2    217 - 218    CSRGYR      219 - 219
      RSRGNOYR    220 - 221    CMDLONGR    222 - 222


      /* CMB LOCATIONS */

      RSCL2_C2    223 - 223    RSCL2_E2    224 - 224
      RSCL3_E3    225 - 225    RSCL5_P5    226 - 226
      RSCL5_H5    227 - 227    RSCL6       228 - 228


      /* CMS LOCATIONS */

      DIFF6M      229 - 229    DIFFINTF    230 - 230
      DIFFDEG     231 - 231    DIFFLNG     232 - 232
      PRESCP6M    233 - 233    PRESHELP    234 - 234
      PMEDPED     235 - 235    PMEDPSY     236 - 236
      PMEDNEU     237 - 237    PMEDOTHR    238 - 238
      NSDUH21     239 - 239    NSDUH3      240 - 240
      NSDUH31     241 - 241    NSDUH321    242 - 242
      NSDUH322    243 - 243    NSDUH323    244 - 244
      NSDUH324    245 - 245    NSDUH325    246 - 246
      NSDUH4      247 - 247    NSDUH51R    248 - 248
      NSDUH52R    249 - 249    NSDUH53R    250 - 250
      NSDUH54R    251 - 251    NSDUH55R    252 - 252
      TRTWRE1R    253 - 253    TRTWH11R    254 - 254
      TRTWH12R    255 - 255    TRTWH13R    256 - 256
      TRTWH14R    257 - 257    TRTWH16R    258 - 258
      TRTMHP11    259 - 259    TRTMHP12    260 - 260
      TRTMHP13    261 - 261    TRTMHP14    262 - 262
      TRTWRE2R    263 - 263    TRTWH21R    264 - 264
      TRTWH22R    265 - 265    TRTWH23R    266 - 266
      TRTWH24R    267 - 267    TRTWH25R    268 - 268
      TRTWH26R    269 - 269    TRTMHP21    270 - 270
      TRTMHP22    271 - 271    TRTMHP23    272 - 272
      TRTMHP24    273 - 273    TRTWRE3R    274 - 274
      TRTWH31R    275 - 275    TRTWH32R    276 - 276
      TRTWH33R    277 - 277    TRTWH34R    278 - 278
      TRTWH35R    279 - 279    TRTWH36R    280 - 280
      TRTMHP31    281 - 281    TRTMHP32    282 - 282
      TRTMHP33    283 - 283    TRTMHP34    284 - 284
      TRTWRE4R    285 - 285    TRTWH41R    286 - 286
      TRTWH42R    287 - 287    TRTWH43R    288 - 288
      TRTWH44R    289 - 289    TRTWH45R    290 - 290
      TRTWH46R    291 - 291    TRTMHP41    292 - 292
      TRTMHP42    293 - 293    TRTMHP43    294 - 294
      TRTMHP44    295 - 295    TRTWRE5R    296 - 296
      TRTWH51R    297 - 297    TRTWH52R    298 - 298
      TRTWH53R    299 - 299    TRTWH54R    300 - 300
      TRTWH55R    301 - 301    TRTWH56R    302 - 302
      TRTMHP51    303 - 303    TRTMHP52    304 - 304
      TRTMHP53    305 - 305    TRTMHP54    306 - 306
      TRTWRE6R    307 - 307    TRTWH61R    308 - 308
      TRTWH62R    309 - 309    TRTWH63R    310 - 310
      TRTWH64R    311 - 311    TRTWH65R    312 - 312
      TRTWH66R    313 - 313    TRTMHP61    314 - 314
      TRTMHP62    315 - 315    TRTMHP63    316 - 316
      TRTMHP64    317 - 317    OVRNT6MR    318 - 318
      OVERWH1R    319 - 319    OVERWH2R    320 - 320
      OVERWH3R    321 - 321    OVERWH4R    322 - 322
      OVERWH5R    323 - 323    OVERWH6R    324 - 324
      OVERWH7R    325 - 325    SH1         326 - 326
      SH2         327 - 327    CASEM6M     328 - 328
      CASEMWHO    329 - 330    TRETHELP    331 - 331
      TRPYPHIR    332 - 332    TRPYSCHR    333 - 333
      TRPYSLFR    334 - 334    TRPYMEDR    335 - 335
      TRPYCHPR    336 - 336    TRPYMILR    337 - 337
      TRPYSHPR    338 - 338    TRPYIHSR    339 - 339
      TRPYOTHR    340 - 340    TRTFREER    341 - 341
      TRTNEED1    342 - 342    NTRCOSTR    343 - 343
      NTRLOCR     344 - 344    NTRNEXPR    345 - 345
      NTRFEARR    346 - 346    NTRLOSER    347 - 347
      NTRSAYR     348 - 348    NTRWAITR    349 - 349
      NTRTRANR    350 - 350    NTRINCVR    351 - 351
      NTRFARR     352 - 352    NTRCHNOR    353 - 353
      NTROTHR     354 - 354

      /* CFI LOCATIONS */

      CSHFLU12    355 - 355    CSHFLUNM    356 - 356
      CSHFLUM1    357 - 358    CSHFLUY1    359 - 362
      CSHSPFL1    363 - 363    CSHFLUM2    364 - 365
      CSHFLUY2    366 - 369    CSHSPFL2    370 - 370
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
      AODD2      ="Ever told SC had other developmental delay"
      CCONDL01   ="Ever told SC had Down syndrome"
      CCONDL02   ="Ever told SC had cerebral palsy"
      CCONDL03   ="Ever told SC had muscular dystrophy"
      CCONDL04   ="Ever told SC had cystic fibrosis"
      CCONDL05   ="Ever told SC had sickle cell anemia"
      CCONDL6R   ="Ever told SC had autism/autism spectrum disorder"
      CCONDL07   ="Ever told SC had diabetes"
      CCONDL08   ="Ever told SC had arthritis"
      CCONDL09   ="Ever told SC had congenital heart disease"
      CCONDL10   ="Ever told SC had other heart condition"
      CPOX       ="Ever had chickenpox"
      CPOX12MO   ="Chickenpox, past 12 m"
      CASHMEV    ="Ever been told SC had asthma"
      CASSTILL   ="Still have asthma"
      CASHYR     ="Had an asthma episode/attack, past 12 m"
      CASERYR1   ="Had visit to ER due to asthma, past 12 m"
      CASMHSP1   ="Stayed overnight in a hospital because of asthma, past 12 m"
      CWZMSWK1   ="# DAYS of school/work missed because of asthma, past 12 m"
      CASMMED1   =
"Used PRESCRIPTION inhaler THAT YOU BREATHE IN THROUGH YOUR MOUTH, that gives QU
ICK relief from asthma symptoms, past 3 m"
      CASMTYP    ="Used inhaler/disk inhaler or nebulizer most often"
      CASMCAN1   =
"Used more than three canisters of this type of inhaler, past 3 m."
      CASMDTP2   ="How often take preventive asthma medication"
      CASWMP1    =
"Doctor/other health professional EVER give an asthma action plan"
      CASCLASS   ="EVER took a course/class on how to manage asthma"
      CAS_REC    =
"Doctor/other health professional EVER taught parent how to recognize early sign
s of an asthma episode"
      CAS_RES    =
"Doctor/other health professional EVER taught parent how to respond to episodes 
of asthma"
      CAS_MON    =
"Doctor/other health professional EVER taught parent how to monitor peak flow fo
r daily therapy"
      CAPENVLN   =
"Doctor/other health professional EVER advised to change things in home to impro
ve asthma"
      CAROUTIN   =
"Number of times saw doctor/other health professional for routine asthma checkup
"
      CASYMPT    =
"Doctor/other health professional ask how often child had asthma symptoms"
      CARESCUE   =
"Doctor/other health professional ask how often child used quick relief inhaler"
      CAACTLIM   =
"Doctor/other health professional ask how often asthma symptoms limited daily ac
tivities"
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
      CHEARST1   ="Hearing without hearing aid"
      CVISION    ="Trouble seeing"
      CBLIND     ="Blind/unable to see at all"
      IHSPEQ     ="Need special equipment due to impairment/health problem"
      IHMOB      ="Impairment/health problem limit crawl/walk/run/play"
      IHMOBYR    ="Impairment/health problem lasted/will last 12+ m"
      PROBRX     ="Taken RX medication for 3+ m"
      LEARND     ="Ever told SC had a learning disability"
      CMHAGM15   ="Been unhappy/depressed, past 2 m"
      MHIBOY2    ="Mental health indicator (MHI) scale score"
      CMHAGF15   ="Been unhappy/depressed, past 2 m"
      MHIGRL2    ="Mental health indicator (MHI) scale score"

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

      /* CMS LABELS */

      DIFF6M     =
"Difficulties with emotions, concentration, behavior, past 6 months"
      DIFFINTF   =
"Difficulties interfere with family, school, or daily activities, past 6 months"
      DIFFDEG    =
"How much difficulties interfere with family, school, or daily activities"
      DIFFLNG    ="How long difficulties have been present"
      PRESCP6M   =
"Medication prescribed for difficulties with emotions, concentration, behavior, 
or getting along with others, past 6 months"
      PRESHELP   ="How much prescribed medicine helped"
      PMEDPED    =
"Pediatrician or other family doctor first prescribed medication"
      PMEDPSY    =
"Psychiatrist, psychologist or other mental health professional first prescribed
 medication"
      PMEDNEU    ="Neurologist first prescribed medication"
      PMEDOTHR   ="Someone else first prescribed medication"
      NSDUH21    ="Treatment or counseling from school personnel, past 6 months"
      NSDUH3     =
"Attend school for students with difficulties with emotions, concentration, beha
vior, past 6 months"
      NSDUH31    ="Attend a special needs day or overnight school, past 6 months
"
      NSDUH321   =
"Special Education teacher provided treatment or counseling in a special needs d
ay school"
      NSDUH322   =
"Other school teacher provided treatment or counseling in a special needs day sc
hool"
      NSDUH323   =
"School counselor, psychologist, nurse or social worker provided treatment or co
unseling in a special needs day school"
      NSDUH324   =
"School speech, occupational or physical therapist provided treatment or counsel
ing in a special needs day school"
      NSDUH325   =
"Other school official provided treatment or counseling in a special needs day s
chool"
      NSDUH4     =
"Participate in school program for students with difficulties with emotions, con
centration, behavior, past 6 months"
      NSDUH51R   =
"Special Ed teacher provided treatment or counseling in school program"
      NSDUH52R   =
"Other school teacher provided treatment or counseling in school program"
      NSDUH53R   =
"School counselor, psychologist, nurse or social worker provided treatment or co
unseling in school program"
      NSDUH54R   =
"School speech, occupational or physical therapist provided treatment or counsel
ing in school program"
      NSDUH55R   =
"Other school official provided treatment or counseling in school program"
      TRTWRE1R   =
"Treatment or counseling provided at daycare, child care, or play group, past 6 
months"
      TRTWH11R   =
"Pediatrician or family doctor provided treatment or counseling at daycare, chil
d care, or play group"
      TRTWH12R   =
"Psychiatrist, psychologist, clinical social worker or psychiatric nurse provide
d treatment or counseling at daycare, child care, or play group"
      TRTWH13R   =
"Speech, occupational or physical therapist provided treatment or counseling at 
daycare, child care, or play group"
      TRTWH14R   =
"Religious or spiritual counselor or advisor provided treatment or counseling at
 daycare, child care, or play group"
      TRTWH16R   =
"Other source provided treatment or counseling at daycare, child care, or play g
roup"
      TRTMHP11   =
"Psychiatrist provided treatment or counseling at daycare, child care, or play g
roup"
      TRTMHP12   =
"Psychologist provided treatment or counseling at daycare, child care, or play g
roup"
      TRTMHP13   =
"Clinical social worker provided treatment or counseling at daycare, child care,
 or play group"
      TRTMHP14   =
"Psychiatric nurse provided treatment or counseling at daycare, child care, or p
lay group"
      TRTWRE2R   =
"Treatment or counseling provided in an office, clinic or community center, past
 6 months"
      TRTWH21R   =
"Pediatrician or family doctor provided treatment or counseling in an office, cl
inic or community center"
      TRTWH22R   =
"Psychiatrist, psychologist, clinical social worker or psychiatric nurse provide
d treatment or counseling in an office, clinic or community center"
      TRTWH23R   =
"Speech, occupational or physical therapist provided treatment or counseling in 
an office, clinic or community center"
      TRTWH24R   =
"Religious or spiritual counselor or advisor provided treatment or counseling in
 an office, clinic or community center"
      TRTWH25R   =
"Probation or juvenile corrections officer or court counselor provided treatment
 or counseling in an office, clinic or community center"
      TRTWH26R   =
"Other source provided treatment or counseling in an office, clinic or community
 center"
      TRTMHP21   =
"Psychiatrist provided treatment or counseling at an office, clinic or community
 center"
      TRTMHP22   =
"Psychologist provided treatment or counseling at an office, clinic or community
 center"
      TRTMHP23   =
"Clinical social worker provided treatment or counseling at an office, clinic or
 community center"
      TRTMHP24   =
"Psychiatric nurse provided treatment or counseling at an office, clinic or comm
unity center"
      TRTWRE3R   =
"Treatment or counseling provided in home by visiting teacher or counselor"
      TRTWH31R   =
"Pediatrician or family doctor provided treatment or counseling in home"
      TRTWH32R   =
"Psychiatrist, psychologist, clinical social worker or psychiatric nurse provide
d treatment or counseling in home"
      TRTWH33R   =
"Speech, occupational or physical therapist provided treatment or counseling in 
home"
      TRTWH34R   =
"Religious or spiritual counselor or advisor provided treatment or counseling in
 home"
      TRTWH35R   =
"Probation or juvenile corrections officer or court counselor provided treatment
 or counseling in home"
      TRTWH36R   ="Other source provided treatment or counseling in home"
      TRTMHP31   ="Psychiatrist provided treatment or counseling at home"
      TRTMHP32   ="Psychologist provided treatment or counseling at home"
      TRTMHP33   =
"Clinical social worker provided treatment or counseling at home"
      TRTMHP34   ="Psychiatric nurse provided treatment or counseling at home"
      TRTWRE4R   =
"Treatment or counseling provided in hospital ER, crisis center, or shelter, pas
t 6 months"
      TRTWH41R   =
"Pediatrician or family doctor provided treatment or counseling in hospital ER, 
crisis center, or emergency shelter"
      TRTWH42R   =
"Psychiatrist, psychologist, clinical social worker or psychiatric nurse provide
d treatment or counseling in hospital ER, crisis center, or emergency shelter"
      TRTWH43R   =
"Speech, occupational or physical therapist provided treatment or counseling in 
hospital ER, crisis center, or shelter"
      TRTWH44R   =
"Religious or spiritual counselor or advisor provided treatment or counseling in
 hospital ER, crisis center, or emergency shelter"
      TRTWH45R   =
"Probation or juvenile corrections officer or court counselor provided treatment
 or counseling in hospital ER, crisis center, or emergency shelter"
      TRTWH46R   =
"Other source provided treatment or counseling in hospital ER, crisis center, or
 emergency shelter"
      TRTMHP41   =
"Psychiatrist provided treatment or counseling at hospital/ER/crisis center/shel
ter"
      TRTMHP42   =
"Psychologist provided treatment or counseling at hospital/ER/crisis center/shel
ter"
      TRTMHP43   =
"Clinical social worker provided treatment or counseling at hospital/ER/crisis c
enter/shelter"
      TRTMHP44   =
"Psychiatric nurse provided treatment or counseling at hospital/ER/crisis center
/shelter"
      TRTWRE5R   =
"Treatment or counseling provided in hospital or community day program, past 6 m
onths"
      TRTWH51R   =
"Pediatrician or family doctor provided treatment or counseling in hospital or c
ommunity day program"
      TRTWH52R   =
"Psychiatrist, psychologist, clinical social worker or psychiatric nurse provide
d treatment or counseling in hospital or community day program"
      TRTWH53R   =
"Speech, occupational or physical therapist provided treatment or counseling in 
hospital or community day program"
      TRTWH54R   =
"Religious or spiritual counselor or advisor provided treatment or counseling in
 hospital or community day program"
      TRTWH55R   =
"Probation or juvenile corrections officer or court counselor provided treatment
 or counseling in hospital or community day program"
      TRTWH56R   =
"Other source provided treatment or counseling in hospital or community day prog
ram"
      TRTMHP51   =
"Psychiatrist provided treatment or counseling at day treatment program in a hos
pital or community"
      TRTMHP52   =
"Psychologist provided treatment or counseling at day treatment program in a hos
pital or community"
      TRTMHP53   =
"Clinical social worker provided treatment or counseling at day treatment progra
m in a hospital or community"
      TRTMHP54   =
"Psychiatric nurse provided treatment or counseling at day treatment program in 
a hospital or community"
      TRTWRE6R   =
"Treatment or counseling provided in any other place, past 6 months"
      TRTWH61R   =
"Pediatrician or family doctor provided treatment or counseling in any other pla
ce"
      TRTWH62R   =
"Psychiatrist, psychologist, clinical social worker or psychiatric nurse provide
d treatment or counseling in any other place"
      TRTWH63R   =
"Speech, occupational or physical therapist provided treatment or counseling in 
any other place"
      TRTWH64R   =
"Religious or spiritual counselor or advisor provided treatment or counseling in
 any other place"
      TRTWH65R   =
"Probation or juvenile corrections officer or court counselor provided treatment
 or counseling in any other place"
      TRTWH66R   =
"Other source provided treatment or counseling in any other place"
      TRTMHP61   =
"Psychiatrist provided treatment or counseling at another place"
      TRTMHP62   =
"Psychologist provided treatment or counseling at another place"
      TRTMHP63   =
"Clinical social worker provided treatment or counseling at another place"
      TRTMHP64   =
"Psychiatric nurse provided treatment or counseling at another place"
      OVRNT6MR   =
"Overnight or longer stay in facility for difficulties with emotions, concentrat
ion, or behavior, past 6 months"
      OVERWH1R   =
"Stayed overnight in a hospital for difficulties with emotions, concentration, o
r behavior"
      OVERWH2R   =
"Stayed overnight in a residential treatment center for difficulties with emotio
ns, concentration, or behavior"
      OVERWH3R   =
"Stayed overnight in a foster care or therapeutic foster care home for difficult
ies with emotions, concentration, or behavior"
      OVERWH4R   =
'Stayed overnight in any type of  juvenile detention center, sometimes called "j
uvie", prison or jail for difficulties with emotions, concentration, or behavior
'
      OVERWH5R   =
"Stayed overnight in a group home for difficulties with emotions, concentration,
 or behavior"
      OVERWH6R   =
"Stayed overnight in a homeless shelter for difficulties with emotions, concentr
ation, or behavior"
      OVERWH7R   =
"Stayed overnight in another place for difficulties with emotions, concentration
, or behavior"
      SH1        =
"Participate in self-help group for children/youth with difficulties with emotio
ns, concentration, or behavior, past 6 months"
      SH2        =
"Use internet to seek treatment or counseling for difficulties with emotions, co
ncentration, or behavior, past 6 months"
      CASEM6M    ="Case management help from individual or agency, past 6 months
"
      CASEMWHO   ="Case management main provider"
      TRETHELP   =
"Amount that treatment or counseling helped child, past 6 months"
      TRPYPHIR   ="Private health insurance paid for treatment or counseling"
      TRPYSCHR   ="School system paid for treatment or counseling"
      TRPYSLFR   ="Family paid for treatment or counseling"
      TRPYMEDR   ="Medicaid paid for treatment or counseling"
      TRPYCHPR   ="State SCHIP/CHIP paid for treatment or counseling"
      TRPYMILR   ="Military health care paid for treatment or counseling"
      TRPYSHPR   =
"Medicare or other government plan paid for treatment or counseling"
      TRPYIHSR   ="Indian Health Service paid for treatment or counseling"
      TRPYOTHR   ="Some other source paid for treatment or counseling"
      TRTFREER   ="All treatment or counseling was received free"
      TRTNEED1   =
"Needed treatment or counseling for difficulties with emotions, concentration, o
r behavior, past 6 months, but did not get it"
      NTRCOSTR   =
"Didn't get treatment or counseling because it was too expensive"
      NTRLOCR    =
"Didn't get treatment or counseling because didn't know where to go"
      NTRNEXPR   =
"Didn't get treatment or counseling because had negative experience previously"
      NTRFEARR   =
"Didn't get treatment or counseling because afraid or dislike counselors"
      NTRLOSER   =
"Didn't get treatment or counseling because afraid child would be removed from h
ome or lose custody"
      NTRSAYR    =
"Didn't get treatment or counseling because afraid of family/friends opinion"
      NTRWAITR   =
"Didn't get treatment or counseling because it was a long wait time for appointm
ent"
      NTRTRANR   =
"Didn't get treatment or counseling because had no way to get there"
      NTRINCVR   =
"Didn't get treatment or counseling because services were too inconvenient to us
e"
      NTRFARR    =
"Didn't get treatment or counseling because services were too far away"
      NTRCHNOR   =
"Didn't get treatment or counseling because child did not want to go."
      NTROTHR    ="Didn't get treatment or counseling for some other reason"

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
      AODD2     SCP028X.   CCONDL01  SCP033X.   CCONDL02  SCP033X.
      CCONDL03  SCP033X.   CCONDL04  SCP033X.   CCONDL05  SCP033X.
      CCONDL6R  SCP033X.   CCONDL07  SCP033X.   CCONDL08  SCP033X.
      CCONDL09  SCP033X.   CCONDL10  SCP033X.   CPOX      SCP043X.
      CPOX12MO  SCP028X.   CASHMEV   SCP028X.   CASSTILL  SCP028X.
      CASHYR    SCP028X.   CASERYR1  SCP028X.   CASMHSP1  SCP028X.
      CWZMSWK1  SCP050X.   CASMMED1  SCP028X.   CASMTYP   SCP052X.
      CASMCAN1  SCP028X.   CASMDTP2  SCP054X.   CASWMP1   SCP028X.
      CASCLASS  SCP028X.   CAS_REC   SCP028X.   CAS_RES   SCP028X.
      CAS_MON   SCP028X.   CAPENVLN  SCP060X.   CAROUTIN  SCP061X.
      CASYMPT   SCP062X.   CARESCUE  SCP062X.   CAACTLIM  SCP062X.
      HAYF1     SCP028X.   RALLG1    SCP028X.   DALLG1    SCP028X.
      SALLG1    SCP028X.   DIARH1    SCP028X.   ANEMIA1   SCP028X.
      EARINF1   SCP028X.   SEIZE1    SCP028X.   HAYF2     SCP028X.
      RALLG2    SCP028X.   DALLG2    SCP028X.   SALLG2    SCP028X.
      DIARH2    SCP028X.   ANEMIA2   SCP028X.   FHEAD     SCP028X.
      EARINF2   SCP028X.   SEIZE2    SCP028X.   STUTTER   SCP028X.
      CHSTATYR  SCP083X.   SCHDAYR1  SCP084X.   CCOLD2W   SCP028X.
      CINTIL2W  SCP028X.   CHEARST1  SCP087X.   CVISION   SCP028X.
      CBLIND    SCP028X.   IHSPEQ    SCP028X.   IHMOB     SCP028X.
      IHMOBYR   SCP028X.   PROBRX    SCP028X.   LEARND    SCP028X.
      CMHAGM15  SCP095X.   MHIBOY2   SCP096X.   CMHAGF15  SCP095X.
      MHIGRL2   SCP096X.

      /* CAU FORMAT ASSOCIATIONS */

      CUSUALPL  SCP099X.   CPLKIND   SCP100X.   CHCPLROU  SCP028X.
      CHCPLKND  SCP102X.   CHCCHGYR  SCP028X.   CHCCHGHI  SCP028X.
      CNOUSPL1  SCP105X.   CNOUSPL2  SCP105X.   CNOUSPL3  SCP105X.
      CNOUSPL4  SCP105X.   CNOUSPL5  SCP105X.   CNOUSPL6  SCP105X.
      CNOUSPL7  SCP105X.   CNOUSPL8  SCP105X.   CNOUSPL9  SCP105X.
      CPRVTRYR  SCP028X.   CPRVTRFD  SCP062X.   CDRNANP   SCP028X.
      CDRNAI    SCP028X.   CHCDLYR1  SCP028X.   CHCDLYR2  SCP028X.
      CHCDLYR3  SCP028X.   CHCDLYR4  SCP028X.   CHCDLYR5  SCP028X.
      CHCAFYR   SCP028X.   CHCAFYRN  SCP028X.   CHCAFYRF  SCP028X.
      CHCAFYR1  SCP028X.   CHCAFYR2  SCP028X.   CHCAFYR3  SCP028X.
      CHCAFYR4  SCP028X.   CHCAFYR5  SCP028X.   CHCAFYR6  SCP028X.
      CDNLONGR  SCP132X.   CHCSYR11  SCP028X.   CHCSYR12  SCP028X.
      CHCSYR13  SCP028X.   CHCSYR14  SCP028X.   CHCSYR1   SCP028X.
      CHCSYR2   SCP028X.   CHCSYR3   SCP028X.   CHCSYR4   SCP028X.
      CHCSYR5   SCP028X.   CHCSYR6   SCP028X.   CHCSYR7   SCP028X.
      CHCSYR81  SCP028X.   CHCSYR82  SCP028X.   CHCSYR10  SCP028X.
      CHCSYREM  SCP028X.   CHPXYR_C  SCP028X.   CHERNOY2  SCP149X.
      CERVISND  SCP028X.   CERHOS    SCP028X.   CERREA1R  SCP062X.
      CERREA2R  SCP062X.   CERREA3R  SCP028X.   CERREA4R  SCP155X.
      CERREA5R  SCP028X.   CERREA6R  SCP062X.   CERREA7R  SCP062X.
      CERREA8R  SCP062X.   CHCHYR    SCP028X.   CHCHMOYR  SCP161X.
      CHCHNOY2  SCP162X.   CHCNOYR2  SCP149X.   CSRGYR    SCP028X.
      RSRGNOYR  SCP165X.   CMDLONGR  SCP132X.

      /* CMB FORMAT ASSOCIATIONS */

      RSCL2_C2  SCP167X.   RSCL2_E2  SCP167X.   RSCL3_E3  SCP167X.
      RSCL5_P5  SCP167X.   RSCL5_H5  SCP167X.   RSCL6     SCP172X.

      /* CMS FORMAT ASSOCIATIONS */

      DIFF6M    SCP028X.   DIFFINTF  SCP028X.   DIFFDEG   SCP175X.
      DIFFLNG   SCP176X.   PRESCP6M  SCP028X.   PRESHELP  SCP178X.
      PMEDPED   SCP028X.   PMEDPSY   SCP028X.   PMEDNEU   SCP028X.
      PMEDOTHR  SCP028X.   NSDUH21   SCP028X.   NSDUH3    SCP028X.
      NSDUH31   SCP185X.   NSDUH321  SCP033X.   NSDUH322  SCP105X.
      NSDUH323  SCP033X.   NSDUH324  SCP105X.   NSDUH325  SCP033X.
      NSDUH4    SCP028X.   NSDUH51R  SCP033X.   NSDUH52R  SCP033X.
      NSDUH53R  SCP033X.   NSDUH54R  SCP105X.   NSDUH55R  SCP105X.
      TRTWRE1R  SCP062X.   TRTWH11R  SCP105X.   TRTWH12R  SCP105X.
      TRTWH13R  SCP033X.   TRTWH14R  SCP105X.   TRTWH16R  SCP105X.
      TRTMHP11  SCP105X.   TRTMHP12  SCP033X.   TRTMHP13  SCP105X.
      TRTMHP14  SCP033X.   TRTWRE2R  SCP028X.   TRTWH21R  SCP105X.
      TRTWH22R  SCP105X.   TRTWH23R  SCP105X.   TRTWH24R  SCP105X.
      TRTWH25R  SCP105X.   TRTWH26R  SCP105X.   TRTMHP21  SCP105X.
      TRTMHP22  SCP215X.   TRTMHP23  SCP105X.   TRTMHP24  SCP105X.
      TRTWRE3R  SCP028X.   TRTWH31R  SCP033X.   TRTWH32R  SCP105X.
      TRTWH33R  SCP105X.   TRTWH34R  SCP105X.   TRTWH35R  SCP105X.
      TRTWH36R  SCP105X.   TRTMHP31  SCP105X.   TRTMHP32  SCP105X.
      TRTMHP33  SCP105X.   TRTMHP34  SCP105X.   TRTWRE4R  SCP062X.
      TRTWH41R  SCP105X.   TRTWH42R  SCP105X.   TRTWH43R  SCP033X.
      TRTWH44R  SCP105X.   TRTWH45R  SCP105X.   TRTWH46R  SCP105X.
      TRTMHP41  SCP105X.   TRTMHP42  SCP033X.   TRTMHP43  SCP105X.
      TRTMHP44  SCP105X.   TRTWRE5R  SCP062X.   TRTWH51R  SCP105X.
      TRTWH52R  SCP105X.   TRTWH53R  SCP105X.   TRTWH54R  SCP244X.
      TRTWH55R  SCP105X.   TRTWH56R  SCP105X.   TRTMHP51  SCP105X.
      TRTMHP52  SCP033X.   TRTMHP53  SCP105X.   TRTMHP54  SCP105X.
      TRTWRE6R  SCP062X.   TRTWH61R  SCP105X.   TRTWH62R  SCP033X.
      TRTWH63R  SCP105X.   TRTWH64R  SCP105X.   TRTWH65R  SCP105X.
      TRTWH66R  SCP105X.   TRTMHP61  SCP105X.   TRTMHP62  SCP105X.
      TRTMHP63  SCP033X.   TRTMHP64  SCP105X.   OVRNT6MR  SCP062X.
      OVERWH1R  SCP105X.   OVERWH2R  SCP105X.   OVERWH3R  SCP105X.
      OVERWH4R  SCP033X.   OVERWH5R  SCP267X.   OVERWH6R  SCP105X.
      OVERWH7R  SCP105X.   SH1       SCP028X.   SH2       SCP028X.
      CASEM6M   SCP028X.   CASEMWHO  SCP273X.   TRETHELP  SCP274X.
      TRPYPHIR  SCP062X.   TRPYSCHR  SCP062X.   TRPYSLFR  SCP062X.
      TRPYMEDR  SCP028X.   TRPYCHPR  SCP062X.   TRPYMILR  SCP062X.
      TRPYSHPR  SCP062X.   TRPYIHSR  SCP028X.   TRPYOTHR  SCP062X.
      TRTFREER  SCP062X.   TRTNEED1  SCP062X.   NTRCOSTR  SCP062X.
      NTRLOCR   SCP062X.   NTRNEXPR  SCP062X.   NTRFEARR  SCP062X.
      NTRLOSER  SCP062X.   NTRSAYR   SCP062X.   NTRWAITR  SCP028X.
      NTRTRANR  SCP062X.   NTRINCVR  SCP062X.   NTRFARR   SCP062X.
      NTRCHNOR  SCP062X.   NTROTHR   SCP062X.

      /* CFI FORMAT ASSOCIATIONS */

      CSHFLU12  SCP028X.   CSHFLUNM  SCP299X.   CSHFLUM1  SCP300X.
      CSHFLUY1  SCP301X.   CSHSPFL1  SCP302X.   CSHFLUM2  SCP300X.
      CSHFLUY2  SCP301X.   CSHSPFL2  SCP302X.;
RUN;

PROC CONTENTS DATA=NHIS.SAMCHILD;
   TITLE1 'CONTENTS OF THE 2013 NHIS Sample Child FILE';

PROC FREQ DATA=NHIS.SAMCHILD NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2013 NHIS Sample Child FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA_SC;

PROC FREQ DATA=NHIS.SAMCHILD NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2013 NHIS Sample Child FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
