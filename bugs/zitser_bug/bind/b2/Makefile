
all:	sig-bad sig-ok create

clean:	
	rm -f *-bad *-ok create

sig-bad: sig-bad.c
	gcc --save-temps -o sig-bad sig-bad.c -I . -lresolv

sig-ok: sig-ok.c
	gcc --save-temps -o sig-ok sig-ok.c -I . -lresolv

create:	create_msg_file.c
	gcc -o create create_msg_file.c -lresolv ; \
	create
	



