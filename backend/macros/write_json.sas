%macro write_json(data,out=_webout,prettify=false);
	proc contents data=&data out=%scan(&data,2)_contents(keep=name type) noprint;
	run;
	proc sql noprint;
		select  name,type into :var1- ,:type1-
		from %scan(&data,2)_contents
		;
	quit;
	data a;
		set &data(obs=1);
		%do i=1 %to &sqlobs;
			call symputx("&&var&i",&&var&i);
		%end;
	run;

  proc json out=&out %if %upcase(&prettify)=TRUE %then pretty;  ;
    write open object;
		%do i=1 %to &sqlobs;
			%let tmp=&&var&i;
			%if &&type&i=1 %then %do;
				write values &&var&i &&&tmp;
			%end;
			%else %if &&type&i=2 %then %do;
				write values &&var&i "&&&tmp";
			%end;
		%end;

    write close;
  run;

%mend write_json;
