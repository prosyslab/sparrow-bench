
all:	nsl-bad nsl-ok create

clean:	
	rm -f *-bad *-ok create

nsl-bad: ns-lookup-bad.c
	gcc --save-temps -o nsl-bad ns-lookup-bad.c

nsl-ok: ns-lookup-ok.c
	gcc --save-temps -o nsl-ok ns-lookup-ok.c

create:	create_address_file
	gcc -o create create_address_file.c ; \
	create
