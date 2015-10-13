
all:	ca-bad ca-ok

clean:	
	rm -f *-bad *-ok

ca-bad: crackaddr-bad.c
	gcc -o ca-bad crackaddr-bad.c

ca-ok: crackaddr-ok.c
	gcc -o ca-ok crackaddr-ok.c

