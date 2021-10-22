data userinfo;
  username = "Piotr Florczyk";
  userid = "piotr.florczyk";
run;

%write_json(userinfo)

proc delete data=userinfo; run;