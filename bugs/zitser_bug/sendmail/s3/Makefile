
all:	m1-bad m1-ok

clean:	
	rm -f *-bad *-ok

m1-bad: mime1-bad.c main.c 
	gcc -o m1-bad mime1-bad.c main.c -I .

m1-ok: mime1-ok.c main.c
	gcc -o m1-ok mime1-ok.c main.c -I .

