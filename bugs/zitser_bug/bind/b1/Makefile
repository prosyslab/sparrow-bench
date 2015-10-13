
all:	nxt-bad nxt-ok

clean:	
	rm -f *-bad *-ok

nxt-bad: nxt-bad.c 
	gcc --save-temps -o nxt-bad nxt-bad.c -I .  -lresolv

nxt-ok: nxt-ok.c 
	gcc --save-temps -o nxt-ok nxt-ok.c -I .  -lresolv

nxt-bad.i: nxt-bad.c 
	gcc --save-temps -c nxt-bad.c -I .
