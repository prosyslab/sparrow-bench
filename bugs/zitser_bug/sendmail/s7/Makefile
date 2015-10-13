
all:	txtdns-bad txtdns-ok

clean:	
	rm -f *-bad *-ok

txtdns-bad: txt-dns-file-bad.c my-util.c  
	gcc -o txtdns-bad txt-dns-file-bad.c my-util.c  -I . -lresolv

txtdns-ok: txt-dns-file-ok.c  my-util.c  
	gcc -o txtdns-ok txt-dns-file-ok.c my-util.c  -I . -lresolv
