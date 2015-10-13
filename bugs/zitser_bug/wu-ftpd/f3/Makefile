
all:	rp-bad rp-ok

clean:	
	rm -f *-bad *-ok

rp-bad: call-realpath-bad.c realpath-2.4.2-bad.c
	gcc --save-temps -o rp-bad call-realpath-bad.c realpath-2.4.2-bad.c

rp-ok: call-realpath-ok.c realpath-2.4.2-ok.c
	gcc --save-temps -o rp-ok call-realpath-ok.c realpath-2.4.2-ok.c



