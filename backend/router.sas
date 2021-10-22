%global ROUTE;

%macro router;

  %if &ROUTE = %then %do;
    %include "&PAGES/index.sas";
    %goto endrouter;
  %end;

  %if &ROUTE = page %then %do;
    %include "&PAGES/page.sas";
    %goto endrouter;
  %end;

  %if &ROUTE = userinfo %then %do;
    %include "&SERVICES/userinfo.sas";
    %goto endrouter;
  %end;

  %endrouter:

%mend router;
%router