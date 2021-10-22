%macro render_template(template=,outfile=_webout,append=no,pprint=yes);

  %local rd nl;
  %let rd = mylabel;
  %let nl = &rd newline%str(;);

  %if %upcase(&pprint)=YES %then %do;

    filename tmpfile temp;
    data _null_;
      infile &template;
      input;
      file tmpfile;
      if index(strip(_infile_),'%') = 1 then do;
        put _infile_ ;
      end;
      else do;
        put _infile_ " &nl";
      end;
    run;

  %end;

  proc stream outfile=&outfile resetdelim="&rd" %if %upcase(&append)=YES %then MOD; ;
    BEGIN
    %if %upcase(&pprint)=YES %then %do;
      %include tmpfile;
    %end;
    %else %do;
      %include &template;
    %end;
  ;;;;

%mend render_template;