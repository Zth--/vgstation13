#!/usr/bin/awk
BEGIN { ORS="\n" } 
/^$/		{ p = 0; next }
/name.*=/	{ output = $0; p = 1 }
/desc.*=/	{ output = output "\n" $0 }
/armor.*=.*list/	{ if(p==1) 
	{ FS = "," ;
	for (i = 0; i <= NF; i++) {
		print $i;
	}
	next;
	output=output "\n" match($4, "\d"); print output  } }
#/armor.*=.*list/ { FS = "," ; print $6 }

#/armor.*=.*list/	{ if(p==1) { output=output "\n :::" $0; print output  } }
#/(\/\w+)/	{ output = $0; p = 1; print}
