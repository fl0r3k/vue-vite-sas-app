%macro sasautos(newsasautoslib,method=append);
  %if %index(%sysfunc(getoption(sasautos)),&newsasautoslib) = 0 %then
    options &method=sasautos=(&newsasautoslib);;
%mend sasautos;