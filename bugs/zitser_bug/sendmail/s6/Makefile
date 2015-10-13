
all:	ttflag-bad ttflag-ok

clean:	
	rm -f *-bad *-ok

ttflag-bad:  my-main.c tTflag-bad.c
	gcc -o ttflag-bad my-main.c tTflag-bad.c -I .

ttflag-ok:  my-main.c tTflag-ok.c
	gcc -o ttflag-ok my-main.c tTflag-ok.c -I .



