
all:	ge-bad ge-ok

clean:	
	rm -f *-bad *-ok

ge-bad: main-bad.c  recipient-bad.c  util-bad.c
	gcc -o ge-bad main-bad.c  recipient-bad.c  util-bad.c -I .

ge-ok: main-ok.c  recipient-ok.c  util-ok.c
	gcc -o ge-ok main-ok.c  recipient-ok.c  util-ok.c -I .


