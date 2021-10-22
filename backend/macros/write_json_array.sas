%macro write_json_array(data,out=_webout,prettify=false);
  proc json out=&out %if %upcase(&prettify)=TRUE %then pretty; ;
    export &data / nosastags;
  run;
%mend write_json_array;