
all:	prescan-bad prescan-ok

clean:	
	rm -f *-bad *-ok

prescan-bad: prescan-overflow-bad.c
	gcc -o prescan-bad prescan-overflow-bad.c

prescan-ok: prescan-overflow-ok.c
	gcc -o prescan-ok prescan-overflow-ok.c


