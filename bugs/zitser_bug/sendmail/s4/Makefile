
all:	m2-bad m2-ok

clean:	
	rm -f *-bad *-ok

m2-bad: mime2-bad.c
	gcc -o m2-bad mime2-bad.c  -I .

m2-ok: mime2-ok.c
	gcc -o m2-ok mime2-ok.c  -I .

