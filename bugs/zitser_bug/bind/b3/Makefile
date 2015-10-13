
all:	iquery-bad iquery-ok  create

clean:	
	rm -f *-bad *-ok create

iquery-bad: iquery-bad.c
	gcc --save-temps -o iquery-bad iquery-bad.c -lresolv

iquery-ok: iquery-ok.c
	gcc --save-temps -o iquery-ok iquery-ok.c -lresolv

create: create_iquery.c
	gcc -o create create_iquery.c  -lresolv ; \
	create


