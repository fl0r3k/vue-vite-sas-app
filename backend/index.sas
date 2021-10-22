%let ROOTPATH = &SYSINCLUDEFILEDIR;

%let MACROS = &ROOTPATH/macros;
%let TEMPLATES = &ROOTPATH/../frontend/dist/;
%let PAGES = &ROOTPATH/views/pages/;
%let SERVICES = &ROOTPATH/views/services/;

%if %index(%sysfunc(getoption(sasautos)),"&MACROS") = 0 %then %do;
  options append=sasautos=("&MACROS");
%end;

%include "&ROOTPATH/router.sas";